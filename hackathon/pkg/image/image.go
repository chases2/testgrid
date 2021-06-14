package image

import (
	"fmt"
	"image"
	"image/color"
	_ "image/png"
)

var Decode = image.Decode

// Tiles converts a tile-set image into an array of images
func Tiles(img image.Gray, size int) []image.Gray {
	var set []image.Gray
	bounds := img.Bounds()
	for y := bounds.Min.Y; y < bounds.Max.Y; y += size {
		for x := bounds.Min.X; x < bounds.Max.X; x += size {
			r := image.Rect(x, y, x+size, y+size)
			set = append(set, *img.SubImage(r).(*image.Gray))
		}
	}

	return set
}

// Gray converts the image into a gray image.
func Gray(img image.Image) image.Gray {
	bounds := img.Bounds()
	gray := image.NewGray(bounds)
	model := color.GrayModel

	// increase right and down
	for y := bounds.Min.Y; y < bounds.Max.Y; y++ {
		for x := bounds.Min.X; x < bounds.Max.X; x++ {
			gray.Set(x, y, model.Convert(img.At(x, y)))
		}
	}
	return *gray
}

// Print a gray image to stdout.
// Black: " ", White: "."
func Print(img image.Gray) {
	bounds := img.Bounds()
	for y := bounds.Min.Y; y < bounds.Max.Y; y++ {
		for x := bounds.Min.X; x < bounds.Max.X; x++ {
			if k := img.GrayAt(x, y).Y; k > 0 {
				fmt.Print(".")
			} else {
				fmt.Print(" ")
			}
		}
		fmt.Println()
	}
}
