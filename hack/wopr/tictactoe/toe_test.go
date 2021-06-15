package tictactoe

import (
	"testing"
)

func TestMakeMove(t *testing.T) {
}

func TestIsWin(t *testing.T) {
	cases := []struct {
		name           string
		input          [][]Value
		isOver         bool
		expectedWinner Value
	}{
		{
			name: "new board",
			input: [][]Value{
				{EMPTY, EMPTY, EMPTY},
				{EMPTY, EMPTY, EMPTY},
				{EMPTY, EMPTY, EMPTY},
			},
			isOver:         false,
			expectedWinner: EMPTY,
		},
		{
			name: "diagonal",
			input: [][]Value{
				{X, EMPTY, EMPTY},
				{EMPTY, X, EMPTY},
				{EMPTY, EMPTY, X},
			},
			isOver:         true,
			expectedWinner: X,
		},
		{
			name: "horizontal",
			input: [][]Value{
				{X, EMPTY, EMPTY},
				{X, O, EMPTY},
				{X, O, O},
			},
			isOver:         true,
			expectedWinner: X,
		},
		{
			name: "vertical",
			input: [][]Value{
				{X, X, X},
				{EMPTY, O, EMPTY},
				{EMPTY, EMPTY, O},
			},
			isOver:         true,
			expectedWinner: X,
		},
		{
			name: "cat",
			input: [][]Value{
				{X, O, X},
				{O, O, X},
				{X, X, O},
			},
			isOver:         true,
			expectedWinner: EMPTY,
		},
	}
	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			g := buildGame(tc.input)
			isOver, actual := g.gameOver()
			if isOver != tc.isOver {
				if isOver {
					t.Fatalf("Not expecting a game over, got winner: %d", tc.expectedWinner)
				} else {
					t.Fatal("Expected game over, but wasn't")
				}
			}
			if actual != tc.expectedWinner {
				t.Fatalf("Expecting winner: %d, got winner: %d", tc.expectedWinner, actual)
			}
		})
	}
}

func buildGame(board [][]Value) *Game {
	g := newGame()
	for row := 0; row < BOARD_SIZE; row++ {
		for col := 0; col < BOARD_SIZE; col++ {
			g.Board[row][col] = board[row][col]
		}
	}
	return g
}
