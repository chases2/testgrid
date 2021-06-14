package tictactoe

import (
	"fmt"
	"net/http"
	"strconv"
	"sync"
)

const (
	INSTANCE   = "test"
	BOARD_SIZE = 3

	PARAM_INST = "g"
	PARAM_ROW  = "r"
	PARAM_COL  = "c"

	TG_INSTANCE_FMT = "https://testgrid.k8s.io/r/k8s-testgrid-hackathon/everyone#%s&width=20&sort-by-name=&embed="
)

type Value int

const (
	EMPTY Value = iota
	X
	O
)

func valueToString(v Value) string {
	switch v {
	case EMPTY:
		return "No one"
	case X:
		return "X"
	case O:
		return "O"
	}
	return "AAAAAAAAAAAGGGGGHGGHGHGHGHGHGHG"
}

type game struct {
	// row, col
	board   [][]Value
	turn    Value
	winner  Value
	message string
}

func newGame() *game {
	b := make([][]Value, BOARD_SIZE)
	for i := 0; i < BOARD_SIZE; i++ {
		// These initialize to 0 (EMPTY)
		b[i] = make([]Value, BOARD_SIZE)
	}
	return &game{
		board: b,
		turn:  X,
	}
}

func (g *game) tryMove(row, col int) error {
	if g.winner != EMPTY {
		return fmt.Errorf("the game is over, %s won", valueToString(g.winner))
	}
	if row >= BOARD_SIZE || row < 0 {
		return fmt.Errorf("board row (%d) must be between 0 and %d", row, BOARD_SIZE)
	}
	if col >= BOARD_SIZE || col < 0 {
		return fmt.Errorf("board column (%d) must be between 0 and %d", col, BOARD_SIZE)
	}
	if g.board[row][col] != EMPTY {
		return fmt.Errorf("already played row %d col %d", row, col)
	}
	g.board[row][col] = g.turn
	// change players
	if g.turn == X {
		g.turn = O
	} else {
		g.turn = X
	}
	return nil
}

// Tries to make a move. If there is an error or the game is one, the banner is updated.
func (g *game) makeMove(row, col int) {
	if err := g.tryMove(row, col); err != nil {
		g.message = fmt.Sprintf("Invalid move: %v.", err)
	}
	if winner := g.isWin(); winner != EMPTY {
		g.winner = winner
		g.message = fmt.Sprintf("GAME OVER: the winner is %s!", valueToString(winner))
	}
}

func (g *game) isWin() Value {
	// check rows
	for row := 0; row < BOARD_SIZE; row++ {
		found := g.board[row][0]
		for col := 1; col < BOARD_SIZE; col++ {
			if g.board[row][col] != found {
				found = EMPTY
				break
			}
		}
		if found != EMPTY {
			return found
		}
	}

	// check cols
	for col := 0; col < BOARD_SIZE; col++ {
		found := g.board[0][col]
		for row := 1; row < BOARD_SIZE; row++ {
			if g.board[row][col] != found {
				found = EMPTY
				break
			}
		}
		if found != EMPTY {
			return found
		}
	}

	// Diagonal Top left
	found := g.board[0][0]
	for i := 1; i < BOARD_SIZE; i++ {
		if g.board[i][i] != found {
			found = EMPTY
			break
		}
	}
	if found != EMPTY {
		return found
	}

	// Diagonal Bottom left
	found = g.board[BOARD_SIZE-1][0]
	for i := 1; i < BOARD_SIZE; i++ {
		if g.board[BOARD_SIZE-i-1][i] != found {
			found = EMPTY
			break
		}
	}
	if found != EMPTY {
		return found
	}

	return EMPTY
}

type Server struct {
	instances map[string]*game
	sync.Mutex
}

func (s *Server) tryMove(w http.ResponseWriter, r *http.Request) {
	// parameters: instance, row, col
	params := r.URL.Query()
	instance := params.Get(PARAM_INST)
	row, err := strconv.Atoi(params.Get(PARAM_ROW))
	if err != nil {
		http.Error(w, "Unknown or unparsable row.", http.StatusBadRequest)
		return
	}
	col, err := strconv.Atoi(params.Get(PARAM_COL))
	if err != nil {
		http.Error(w, "Unknown or unparsable col.", http.StatusBadRequest)
		return
	}

	s.Lock()
	defer s.Unlock()

	g, ok := s.instances[instance]
	if !ok {
		http.Error(w, "Unknown game instance.", http.StatusBadRequest)
		return
	}

	g.makeMove(row, col)

	// TODO: Have the AI make a move (if player didn't already win)

	// Write game state to GCS
	if err := s.writeStateGCS(instance); err != nil {
		http.Error(w, "Error writing state to GCS.", http.StatusInternalServerError)
		return
	}

	// Redirect to TG (where request came from)
	http.Redirect(w, r, fmt.Sprintf(TG_INSTANCE_FMT, instance), http.StatusFound)
}

func (s *Server) newGame(w http.ResponseWriter, r *http.Request) {
	s.Lock()
	defer s.Unlock()
	s.instances[INSTANCE] = newGame()
}

func (s *Server) writeStateGCS(instance string) error {
	// TODO: handoff
	return nil
}

func CreateMux() http.Handler {
	s := &Server{
		instances: map[string]*game{INSTANCE: newGame()},
	}

	mux := http.NewServeMux()
	mux.HandleFunc("/new", s.newGame)
	mux.HandleFunc("/move", s.tryMove)
	return mux
}
