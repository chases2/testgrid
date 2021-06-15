package image

import (
	"fmt"
	"image"
	"image/color"
	_ "image/png"

	statepb "github.com/GoogleCloudPlatform/testgrid/pb/state"
	tspb "github.com/GoogleCloudPlatform/testgrid/pb/test_status"
	"github.com/GoogleCloudPlatform/testgrid/pkg/updater"
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
func Print(img image.Image) {
	bounds := img.Bounds()
	model := color.GrayModel
	for y := bounds.Min.Y; y < bounds.Max.Y; y++ {
		for x := bounds.Min.X; x < bounds.Max.X; x++ {

			c := model.Convert(img.At(x, y)).(color.Gray)
			if k := c.Y; k > 0 {
				fmt.Print(".")
			} else {
				fmt.Print(" ")
			}
		}
		fmt.Println()
	}
}

type Color interface {
	color.Color
	Meta() (icon, message, id string)
}

type testgridColor struct {
	color.Color
	icon    string
	message string
	id      string
}

func (c testgridColor) Meta() (icon, message, id string) {
	return c.icon, c.message, c.id
}

func MetaColor(c color.Color, icon, message, id string) Color {
	return testgridColor{
		Color:   c,
		icon:    icon,
		message: message,
		id:      id,
	}
}

var colorMap = map[tspb.TestStatus]color.Color{
	tspb.TestStatus_NO_RESULT:         color.RGBA{0xff, 0xff, 0xff, 0xff},
	tspb.TestStatus_PASS:              color.RGBA{0, 0xcc, 0x33, 0xff},
	tspb.TestStatus_PASS_WITH_ERRORS:  color.RGBA{0, 0xcc, 0x33, 0xff},
	tspb.TestStatus_PASS_WITH_SKIPS:   color.RGBA{0, 0xcc, 0x33, 0xff},
	tspb.TestStatus_RUNNING:           color.RGBA{0xbb, 0xbb, 0xbb, 0xff},
	tspb.TestStatus_CATEGORIZED_ABORT: color.RGBA{0xbb, 0xbb, 0xbb, 0xff},
	tspb.TestStatus_UNKNOWN:           color.RGBA{0xbb, 0xbb, 0xbb, 0xff},
	tspb.TestStatus_CANCEL:            color.RGBA{0xbb, 0xbb, 0xbb, 0xff},
	tspb.TestStatus_BLOCKED:           color.RGBA{0xbb, 0xbb, 0xbb, 0xff},
	tspb.TestStatus_TIMED_OUT:         color.RGBA{0xaa, 0, 0, 0xff},
	tspb.TestStatus_CATEGORIZED_FAIL:  color.RGBA{0xaa, 0, 0, 0xff},
	tspb.TestStatus_BUILD_FAIL:        color.RGBA{0, 0, 0, 0xff},
	tspb.TestStatus_FAIL:              color.RGBA{0xaa, 0, 0, 0xff},
	tspb.TestStatus_FLAKY:             color.RGBA{0x66, 0x00, 0x99, 0xff},
	tspb.TestStatus_TOOL_FAIL:         color.RGBA{0xaa, 0, 0, 0xff},
	tspb.TestStatus_BUILD_PASSED:      color.RGBA{0xaa, 0xee, 0xbb, 0xff},
}

var palette = color.Palette{
	colorMap[tspb.TestStatus_NO_RESULT],
	colorMap[tspb.TestStatus_PASS],
	colorMap[tspb.TestStatus_PASS_WITH_ERRORS],
	colorMap[tspb.TestStatus_PASS_WITH_SKIPS],
	colorMap[tspb.TestStatus_RUNNING],
	colorMap[tspb.TestStatus_CATEGORIZED_ABORT],
	colorMap[tspb.TestStatus_UNKNOWN],
	colorMap[tspb.TestStatus_CANCEL],
	colorMap[tspb.TestStatus_BLOCKED],
	colorMap[tspb.TestStatus_TIMED_OUT],
	colorMap[tspb.TestStatus_CATEGORIZED_FAIL],
	colorMap[tspb.TestStatus_BUILD_FAIL],
	colorMap[tspb.TestStatus_FAIL],
	colorMap[tspb.TestStatus_FLAKY],
	colorMap[tspb.TestStatus_TOOL_FAIL],
	colorMap[tspb.TestStatus_BUILD_PASSED],
}

type Image struct {
	Cols []updater.InflatedColumn
}

const Max = 10000

var rowNames = func() []string {
	names := make([]string, 0, Max)
	for y := 0; y < Max; y++ {
		names = append(names, fmt.Sprintf("04d", y))
	}
	return names
}()

func New(r image.Rectangle) *Image {
	dx, dy := r.Dx(), r.Dy()
	if dx >= Max || dy >= Max {
		panic(fmt.Sprintf("%dx%d > %dx%d", dx, dy, Max, Max))
	}
	img := Image{
		Cols: make([]updater.InflatedColumn, 0, dx),
	}

	for x := 0; x < dx; x++ {
		ic := updater.InflatedColumn{
			Column: &statepb.Column{},
			Cells:  make(map[string]updater.Cell, dy),
		}

		for y := 0; y < dy; y++ {
			name := rowNames[y]
			ic.Cells[name] = updater.Cell{}
		}
		img.Cols = append(img.Cols, ic)
	}
	return &img
}

func (i *Image) ColorModel() color.Model {
	return palette
}

func (i *Image) Bounds() image.Rectangle {
	var dy int
	for _, ic := range i.Cols {
		dy = len(ic.Cells)
		break
	}
	return image.Rect(0, 0, len(i.Cols), dy)
}

var clear = color.RGBA{0, 0, 0, 0}

func (i *Image) At(x, y int) color.Color {
	name := rowNames[y]
	cell := i.Cols[x].Cells[name]

	c, ok := colorMap[cell.Result]
	if !ok {
		panic(fmt.Sprintf("bad result at %d,%d: %s", x, y, cell.Result))
	}
	return MetaColor(c, cell.Icon, cell.Message, cell.CellID)
}

func (i *Image) Set(x, y int, c color.Color) {
	name := rowNames[y]
	cells := i.Cols[x].Cells
	cell := cells[name]
	cell.Result = tspb.TestStatus(palette.Index(c))

	tgc, ok := c.(testgridColor)
	if ok {
		if tgc.message != "" {
			cell.Message = tgc.message
		}
		if tgc.icon != "" {
			cell.Icon = tgc.icon
		}
		if tgc.id != "" {
			cell.CellID = tgc.id
		}
	}
	cells[name] = cell
}
