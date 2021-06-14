package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"reflect"

	"github.com/GoogleCloudPlatform/testgrid/hackathon/pkg/image"
)

var (
	// See: https://itch.io/game-assets/free/tag-1-bit
	// - for example, https://adamatomic.itch.io/mc-caves
	path = flag.String("path", "/tmp/tileset.png", "Path to tileset")
	size = flag.Int("size", 8, "Tile length")
)

func main() {

	f, err := os.Open(*path)
	if err != nil {
		log.Fatalf("Could not open %q: %v", *path, err)
	}

	img, format, err := image.Decode(f)
	if err != nil {
		log.Fatalf("Decode: %v", err)
	}

	bounds := img.Bounds()
	fmt.Printf("Loaded %q: %s %s", *path, format, bounds)
	fmt.Println(reflect.TypeOf(img))

	gray := image.Gray(img)
	image.Print(gray)
	tileset := image.Tiles(gray, *size)
	for n, tile := range tileset {
		fmt.Println("Image ", n)
		image.Print(tile)
	}
}
