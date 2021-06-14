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

func buildGame(board [][]Value) *game {
	g := newGame()
	for row := 0; row < BOARD_SIZE; row++ {
		for col := 0; col < BOARD_SIZE; col++ {
			g.board[row][col] = board[row][col]
		}
	}
	return g
}
