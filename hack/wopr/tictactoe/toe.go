package tictactoe

import (
	"flag"
	"fmt"
	"image"
	"image/color"
	"image/draw"
	"io"
	"log"
	"math/rand"
	"net/http"
	"strconv"
	"sync"

	"github.com/GoogleCloudPlatform/testgrid/hackathon/pkg/hackupdater"
	tgimg "github.com/GoogleCloudPlatform/testgrid/hackathon/pkg/image"
	"github.com/GoogleCloudPlatform/testgrid/pkg/updater"
	"gopkg.in/yaml.v2"

	statepb "github.com/GoogleCloudPlatform/testgrid/pb/state"
	statuspb "github.com/GoogleCloudPlatform/testgrid/pb/test_status"
)

const (
	BOARD_SIZE = 3

	PARAM_INST   = "g"
	PARAM_ROW    = "r"
	PARAM_COL    = "c"
	PARAM_CELLID = "id"

	TG_INSTANCE_FMT = "https://testgrid.k8s.io/r/k8s-testgrid-hackathon/everyone#%s&width=20&sort-by-name=&embed="

	AI_PLAYER Value = O
)

var instance = flag.String("instance", "", "e.g. cjwagner or michelle192837")

var (
	BOARD_COLOR = color.RGBA{0x66, 0x00, 0x99, 0xff} // purple
	EMPTY_COLOR = color.RGBA{0, 0xcc, 0x33, 0xff}    // light green
	X_COLOR     = color.RGBA{R: 0xFF, A: 0xFF}
	O_COLOR     = color.Black
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
func valueToColor(v Value) color.Color {
	switch v {
	case X:
		return X_COLOR
	case O:
		return O_COLOR
	}
	return EMPTY_COLOR
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

	*tgimg.Image
	CoordMap map[int]image.Point // Map of board position to image coordinates
}

func newGame() *Game {
	b := make([][]Value, BOARD_SIZE)
	for i := 0; i < BOARD_SIZE; i++ {
		// These initialize to 0 (EMPTY)
		b[i] = make([]Value, BOARD_SIZE)
	}
	img, coords := hackupdater.TictactoeBoard(BOARD_COLOR, color.Black)
	coordMap := make(map[int]image.Point, 9)
	for i, coord := range coords {
		coordMap[i] = coord
	}
	g := &Game{
		Board:    b,
		Turn:     X,
		Image:    img,
		CoordMap: coordMap,
	}
	// Populate empty grid with invisible sprites to detect clicks.
	for i := range coords {
		emptyColor := tgimg.MetaColor(EMPTY_COLOR, "", "Click me!", strconv.Itoa(i))
		emptySprite := hackupdater.ASCII(" ", true, emptyColor, emptyColor)
		g.drawSprite(i, emptySprite)
	}
	return g
}

func (g *Game) drawSprite(index int, sprite image.Image) {
	bounds := sprite.Bounds()
	r := bounds.Sub(bounds.Min).Add(g.CoordMap[index])
	draw.Draw(g.Image, r, sprite, bounds.Min, draw.Src)
}

func (g *Game) drawMessage() {
	for _, col := range g.Image.Cols {
		col.Column.Extra = []string{g.Message}
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
	i := row + col*3
	emptyColor := tgimg.MetaColor(EMPTY_COLOR, "", valueToMessage(g.Turn), strconv.Itoa(i))
	fgColor := tgimg.MetaColor(valueToColor(g.Turn), "", valueToMessage(g.Turn), strconv.Itoa(i))
	sprite := hackupdater.ASCII(valueToString(g.Turn), true, fgColor, emptyColor)
	g.drawSprite(i, sprite)
	log.Printf("drawing %v", g.Turn)
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
		if g.Message == "" {
			g.Message = fmt.Sprintf("GAME OVER: the winner is %s!", valueToString(winner))
			g.drawMessage()
		}
	}
}

// Tries to make a move. If there is an error or the game is one, the banner is updated.
func (g *Game) makeMove(row, col int) {
	if err := g.tryMove(row, col); err != nil {
		g.Message = fmt.Sprintf("Invalid move: %v.", err)
	} else {
		g.Message = ""
	}
	g.drawMessage()
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
	if g.Turn != AI_PLAYER {
		// Human player's move didn't change turn (invalid move).
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
	g.makeMove(randomMove.row, randomMove.col)
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
	var row, col, cell int
	var err error
	if cell, err = strconv.Atoi(params.Get(PARAM_CELLID)); err == nil {
		row = cell % 3
		col = cell / 3
	} else {
		row, err = strconv.Atoi(params.Get(PARAM_ROW))
		if err != nil {
			http.Error(w, "Unknown or unparsable row.", http.StatusBadRequest)
			return
		}
		col, err = strconv.Atoi(params.Get(PARAM_COL))
		if err != nil {
			http.Error(w, "Unknown or unparsable col.", http.StatusBadRequest)
			return
		}
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

	s.instances[*instance] = newGame()
	log.Printf("Instance: %s", *instance)

	if err := s.writeStateGCS(*instance); err != nil {
		http.Error(w, "Error writing state to GCS.", http.StatusInternalServerError)
		return
	}

	// Redirect to TG (where request came from)
	url := fmt.Sprintf(TG_INSTANCE_FMT, *instance)
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
	s.gcsWrite(instance, game.Image.Cols)
	return nil
}

func CreateMux(gcsWrite WriteGCS) http.Handler {
	if *instance == "" {
		log.Fatal("The --instance flag is required.")
	}
	s := &Server{
		instances: map[string]*Game{*instance: newGame()},
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
