package tictactoe

import (
	"testing"
)

func TestMakeMove(t *testing.T) {
}

func TestIsWin(t *testing.T) {
	cases := []struct {
		name     string
		input    [][]Value
		expected Value
	}{
		{
			name: "new board",
			input: [][]Value{
				{EMPTY, EMPTY, EMPTY},
				{EMPTY, EMPTY, EMPTY},
				{EMPTY, EMPTY, EMPTY},
			},
			expected: EMPTY,
		},
		{
			name: "diagonal",
			input: [][]Value{
				{X, EMPTY, EMPTY},
				{EMPTY, X, EMPTY},
				{EMPTY, EMPTY, X},
			},
			expected: X,
		},
		{
			name: "horizontal",
			input: [][]Value{
				{X, EMPTY, EMPTY},
				{X, O, EMPTY},
				{X, O, O},
			},
			expected: X,
		},
		{
			name: "vertical",
			input: [][]Value{
				{X, X, X},
				{EMPTY, O, EMPTY},
				{EMPTY, EMPTY, O},
			},
			expected: X,
		},
	}
	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			g := buildGame(tc.input)
			actual := g.isWin()
			if actual != tc.expected {
				t.Fatalf("Expecting winner: %d, got winner: %d", tc.expected, actual)
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
