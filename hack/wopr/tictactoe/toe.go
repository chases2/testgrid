package tictactoe

import (
	"fmt"
	"io"
	"log"
	"math/rand"
	"net/http"
	"strconv"
	"sync"

	"github.com/GoogleCloudPlatform/testgrid/pkg/updater"
	"gopkg.in/yaml.v2"

	statepb "github.com/GoogleCloudPlatform/testgrid/pb/state"
	statuspb "github.com/GoogleCloudPlatform/testgrid/pb/test_status"
)

const (
	INSTANCE   = "e-blackwelder"
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

func (v Value) nextPlayer() Value {
	switch v {
	case X:
		return O
	case O:
		return X
	}
	panic("Shouldn't call EMPTY.nextPlayer()")
}

func valueToString(v Value) string {
	switch v {
	case X:
		return "X"
	case O:
		return "O"
	}
	return " "
}

func valueToResult(v Value) statuspb.TestStatus {
	switch v {
	case X:
		return statuspb.TestStatus_PASS
	case O:
		return statuspb.TestStatus_FAIL
	}
	return statuspb.TestStatus_UNKNOWN
}

func valueToMessage(v Value) string {
	switch v {
	case EMPTY:
		return "Click Me!"
	}
	return fmt.Sprintf("Already played by %s", valueToString(v))
}

type Game struct {
	// row, col
	Board   [][]Value
	Turn    Value
	Winner  Value
	Message string
}

func newGame() *Game {
	b := make([][]Value, BOARD_SIZE)
	for i := 0; i < BOARD_SIZE; i++ {
		// These initialize to 0 (EMPTY)
		b[i] = make([]Value, BOARD_SIZE)
	}
	return &Game{
		Board: b,
		Turn:  X,
	}
}

func (g *Game) tryMove(row, col int) error {
	if g.Winner != EMPTY {
		return fmt.Errorf("game over, %s won", valueToString(g.Winner))
	}
	if row >= BOARD_SIZE || row < 0 {
		return fmt.Errorf("invalid move: %d, %d", row, col)
	}
	if col >= BOARD_SIZE || col < 0 {
		return fmt.Errorf("invalid move: %d, %d", row, col)
	}
	if g.Board[row][col] != EMPTY {
		return fmt.Errorf("move already taken: %d, %d", row, col)
	}
	g.Board[row][col] = g.Turn
	// change players
	if g.Turn == X {
		g.Turn = O
	} else {
		g.Turn = X
	}
	return nil
}

func (g *Game) checkGameOver() {
	if isOver, winner := g.gameOver(); isOver {
		g.Winner = winner
		g.Message = fmt.Sprintf("GAME OVER: the winner is %s!", valueToString(winner))
	}
}

// Tries to make a move. If there is an error or the game is one, the banner is updated.
func (g *Game) makeMove(row, col int) {
	if err := g.tryMove(row, col); err != nil {
		g.Message = fmt.Sprintf("Invalid move: %v.", err)
	} else {
		g.Message = ""
	}
}

func (g *Game) outputGCS() []updater.InflatedColumn {
	res := []updater.InflatedColumn{}
	for col := 0; col < BOARD_SIZE; col++ {
		cells := map[string]updater.Cell{}
		pb := &statepb.Column{
			Build: strconv.Itoa(col),
			Name:  strconv.Itoa(col),
		}

		for row := 0; row < BOARD_SIZE; row++ {
			val := g.Board[row][col]
			id := fmt.Sprintf("%d,%d", row, col)
			cells[fmt.Sprintf("%04d", row)] = updater.Cell{
				Result:  valueToResult(val),
				Icon:    valueToString(val),
				CellID:  id,
				ID:      strconv.Itoa(row),
				Message: valueToMessage(val),
			}
		}

		res = append(res, updater.InflatedColumn{Column: pb, Cells: cells})
	}
	return res
}

func (g *Game) gameOver() (bool, Value) {
	// check rows
	for row := 0; row < BOARD_SIZE; row++ {
		found := g.Board[row][0]
		for col := 1; col < BOARD_SIZE; col++ {
			if g.Board[row][col] != found {
				found = EMPTY
				break
			}
		}
		if found != EMPTY {
			return true, found
		}
	}

	// check cols
	for col := 0; col < BOARD_SIZE; col++ {
		found := g.Board[0][col]
		for row := 1; row < BOARD_SIZE; row++ {
			if g.Board[row][col] != found {
				found = EMPTY
				break
			}
		}
		if found != EMPTY {
			return true, found
		}
	}

	// Diagonal Top left
	found := g.Board[0][0]
	for i := 1; i < BOARD_SIZE; i++ {
		if g.Board[i][i] != found {
			found = EMPTY
			break
		}
	}
	if found != EMPTY {
		return true, found
	}

	// Diagonal Bottom left
	found = g.Board[BOARD_SIZE-1][0]
	for i := 1; i < BOARD_SIZE; i++ {
		if g.Board[BOARD_SIZE-i-1][i] != found {
			found = EMPTY
			break
		}
	}
	if found != EMPTY {
		return true, found
	}

	// Cat's game
	stalemate := true
	for row := 0; row < BOARD_SIZE; row++ {
		for col := 0; col < BOARD_SIZE; col++ {
			if g.Board[row][col] == EMPTY {
				stalemate = false
				break // 2?
			}
		}
	}
	if stalemate {
		return true, EMPTY
	}

	return false, EMPTY
}

// AI
type move struct {
	row int
	col int
}

func (g *Game) findMoves() []move {
	moves := []move{}
	for row := 0; row < BOARD_SIZE; row++ {
		for col := 0; col < BOARD_SIZE; col++ {
			if g.Board[row][col] == EMPTY {
				moves = append(moves, move{row, col})
			}
		}
	}
	return moves
}

func (g *Game) otherPlayerMoves() {
	if isOver, _ := g.gameOver(); isOver {
		return
	}
	moves := g.findMoves()
	// Shuffle/randomize
	for i := range moves {
		j := rand.Intn(i + 1)
		moves[i], moves[j] = moves[j], moves[i]
	}

	// Make move
	randomMove := moves[0]
	ai := g.Turn
	g.Board[randomMove.row][randomMove.col] = ai
	g.Turn = ai.nextPlayer()
}

type WriteGCS func(testGroup string, cols []updater.InflatedColumn)

type Server struct {
	instances map[string]*Game
	gcsWrite  WriteGCS
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
	g.otherPlayerMoves()
	g.checkGameOver()

	// Write game state to GCS
	if err := s.writeStateGCS(instance); err != nil {
		http.Error(w, "Error writing state to GCS.", http.StatusInternalServerError)
		return
	}

	// Redirect to TG (where request came from)
	http.Redirect(w, r, fmt.Sprintf(TG_INSTANCE_FMT, instance), http.StatusFound)
	// http.Redirect(w, r, "http://localhost:8080/toe/debug", http.StatusFound) // Redirect to debugger
}

func (s *Server) newGame(w http.ResponseWriter, r *http.Request) {
	s.Lock()
	defer s.Unlock()

	instance := INSTANCE
	s.instances[instance] = newGame()
	log.Printf("Instance: %s", instance)

	if err := s.writeStateGCS(instance); err != nil {
		http.Error(w, "Error writing state to GCS.", http.StatusInternalServerError)
		return
	}

	// Redirect to TG (where request came from)
	url := fmt.Sprintf(TG_INSTANCE_FMT, instance)
	log.Printf("URL: %s", url)
	http.Redirect(w, r, url, http.StatusFound)
}

func (s *Server) debug(w http.ResponseWriter, r *http.Request) {
	bytes, err := yaml.Marshal(s.instances)
	if err != nil {
		http.Error(w, "error marshalling YAML", http.StatusInternalServerError)
	}
	io.WriteString(w, string(bytes))
}

func (s *Server) writeStateGCS(instance string) error {
	game := s.instances[instance]
	columns := game.outputGCS()
	s.gcsWrite(instance, columns)
	return nil
}

func CreateMux(gcsWrite WriteGCS) http.Handler {
	s := &Server{
		instances: map[string]*Game{INSTANCE: newGame()},
		gcsWrite:  gcsWrite,
	}

	mux := http.NewServeMux()
	mux.HandleFunc("/new", s.newGame)
	mux.HandleFunc("/move", s.tryMove)
	mux.HandleFunc("/debug", s.debug)
	mux.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		io.WriteString(w, "Welcome to tic-tac-toe")
	})
	return mux
}
