package minesweeper

import (
	"fmt"
	"image"
)

type Cell struct {
	isMine           bool
	numMinesSurround int
	revealed         bool
}

type Board struct {
	width  int
	height int
	cells  map[int]*Cell
}

type Game struct {
	board Board
}

func NewGame(width, height int) *Game {
	return &Game{board: Board{
		width:  width,
		height: height,
		cells:  make(map[int]*Cell),
	}}
}

func (b *Board) overflow(i int) bool {
	p := b.coord(i)
	return p.X >= b.width || p.Y >= b.height
}

func (b *Board) coord(i int) *image.Point {
	x := i % b.width
	y := i / b.width
	return &image.Point{X: x, Y: y}
}

func (b *Board) neighbors(i int) []int {
	var out []int
	orig := b.coord(i)
	for row := orig.Y - 1; row < orig.Y+2; row++ {
		for col := orig.X - 1; col < orig.X+2; col++ {
			if row == orig.Y && col == orig.X {
				continue
			}
			if row < 0 || row >= b.height || col < 0 || col >= b.width {
				continue
			}
			out = append(out, row * b.width + col)
		}
	}
	return out
}

func (b *Board) updateNeighbors(i int) {
	for _, np := range b.neighbors(i) {
		cell := b.cells[]
	}
}

func (b *Board) Hit(i int) (bool, error) {
	if b.overflow(i) {
		return false, fmt.Errorf("index overflow %d", i)
	}
	cell := b.cells[i]
	if cell.isMine {
		return true, nil
	}
	if cell.numMinesSurround == 0 || cell.revealed {
		// Second time clicking on this, meant to update neighbors
		b.updateNeighbors(i)
	}
	cell.revealed = true
	return false, nil
}
