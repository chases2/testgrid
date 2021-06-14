package tictactoe

import (
	"fmt"
	"net/http"
	"sync"
)

const (
	INSTANCE   = "test"
	BOARD_SIZE = 3
)

type Value int

const (
	EMPTY Value = iota
	X
	O
)

type game struct {
	// row, col
	board   [][]Value
	turn    Value
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

func (g *game) makeMove(row, col int) error {
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

//check winner
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
	s.Lock()
	defer s.Unlock()
	// parameters: instance, row, col

	// output:
	// 	bad move, game end => update banner
	//  ok move => update board

	// If we have an AI: make a move for that too

	// Write game state to GCS then redirect to TG (where request came from)

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
