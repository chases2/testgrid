package imagecompiler

import (
	"fmt"
	"image"
	"image/draw"
	"io/ioutil"
	"log"
	"os"

	hackimage "github.com/GoogleCloudPlatform/testgrid/hackathon/pkg/image"
	"github.com/nfnt/resize"
	"gopkg.in/yaml.v3"
)

const (
	defaultBackgroundYaml = "config/background.yaml"
	defaultImageYaml      = "config/image.yaml"
)

type background struct {
	Name       string         `yaml:"name"`
	Path       string         `yaml:"path,omitempty"`
	Width      int            `yaml:"width,omitempty"`
	Height     int            `yaml:"height,omitempty"`
	MaxWidth   int            `yaml:"max_width,omitempty"`
	MaxHeight  int            `yaml:"max_height,omitempty"`
	Insertions []InsertionDef `yaml:"insertions"`
}

type InsertionDef struct {
	X         int `yaml:"x"`
	Y         int `yaml:"y"`
	MaxWidth  int `yaml:"max_width,omitempty"`
	MaxHeight int `yaml:"max_height,omitempty"`
}

func (id *InsertionDef) toPoint() *image.Point {
	return &image.Point{X: id.X, Y: id.Y}
}

type fullImage struct {
	Name       string      `yaml:"name"`
	Background string      `yaml:"background"`
	Insertions []insertion `yaml:"insertions"`
}

type insertion struct {
	Path string `yaml:"path"`
}

func unmarshal(p string, itf interface{}) error {
	body, err := ioutil.ReadFile(p)
	if err != nil {
		return err
	}
	log.Println(p)
	return yaml.Unmarshal(body, itf)
}

func renderImage(img image.Image, dither bool) *hackimage.Image {
	tgi := hackimage.New(img.Bounds())
	dp := image.Pt(0, 0)
	bounds := img.Bounds()
	r := bounds.Sub(bounds.Min).Add(dp)
	if dither {
		draw.FloydSteinberg.Draw(tgi, r, img, bounds.Min)
	} else {
		draw.Draw(tgi, r, img, bounds.Min, draw.Src)
	}
	return tgi
}

func readImage(p string, dither bool) (*hackimage.Image, error) {

	f, err := os.Open(p)
	if err != nil {
		return nil, fmt.Errorf("os.Open(%q): %v", p, err)
	}
	i, _, err := image.Decode(f)
	if err != nil {
		return nil, fmt.Errorf("image.Decode(%q): %v", p, err)
	}

	return renderImage(i, dither), nil
}

func Image(bgName, imageName string, dither bool) (*hackimage.Image, error) {
	var bgs []background
	var imgs []fullImage
	if err := unmarshal(defaultBackgroundYaml, &bgs); err != nil {
		return nil, err
	}
	if err := unmarshal(defaultImageYaml, &imgs); err != nil {
		return nil, err
	}

	var bg background
	for _, s := range bgs {
		if s.Name == bgName {
			bg = s
			break
		}
	}

	var img fullImage
	for _, s := range imgs {
		if s.Name == imageName {
			img = s
			break
		}
	}

	// Draw bg now
	var bgHackImage *hackimage.Image
	var err error
	if bg.Path != "" {
		bgHackImage, err = readImage(bg.Path, dither)
		if err != nil {
			return nil, err
		}
	} else { // Create a blank background based on width height
		rect := image.Rect(0, 0, bg.Width, bg.Height)
		bgHackImage = hackimage.New(rect)
	}

	// Draw each image
	for i, inst := range img.Insertions {
		instImg, err := readImage(inst.Path, dither)
		if err != nil {
			return nil, err
		}
		insertionDef := bg.Insertions[i]
		// Scale accordingly
		if insertionDef.MaxWidth != 0 || insertionDef.MaxHeight != 0 {
			width, height := insertionDef.MaxWidth, insertionDef.MaxHeight
			if insertionDef.MaxWidth == 0 {
				width = instImg.Bounds().Dx() * insertionDef.MaxHeight / instImg.Bounds().Dy()
			}
			if insertionDef.MaxHeight == 0 {
				height = instImg.Bounds().Dy() * insertionDef.MaxWidth / instImg.Bounds().Dx()
			}
			resized := resize.Resize(uint(width), uint(height), instImg, resize.Lanczos3)
			instImg = renderImage(resized, dither)
		}
		coord := insertionDef.toPoint()
		bounds := instImg.Bounds()
		r := bounds.Sub(bounds.Min).Add(*coord)
		draw.Draw(bgHackImage, r, instImg, bounds.Min, draw.Src)
	}
	return bgHackImage, nil
}
