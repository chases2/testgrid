/*
Copyright 2018 The Kubernetes Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

package hackupdater

import (
	"context"
	"image"
	"image/color"
	"strings"
	"time"

	hackimage "github.com/GoogleCloudPlatform/testgrid/hackathon/pkg/image"

	"github.com/GoogleCloudPlatform/testgrid/pkg/updater"
	"github.com/GoogleCloudPlatform/testgrid/util/gcs"
	"github.com/GoogleCloudPlatform/testgrid/util/metrics"

	"github.com/sirupsen/logrus"
)

const (
	gridPrefix       = "grid"
	groupTimeout     = 10 * time.Minute
	groupConcurrency = 1
)

// Update updates testgrid group.
//
// creds: GCS secret file path
// confirm: whether write to GCS or not
// cols: array of inflated columns
// issues: associated issues
// config: path of config. gs://k8s-testgrid-hackathon/config
// group: tab to be updated. for exmaple: chaodaiG
func Update(ctx context.Context, creds string, confirm bool, cols []updater.InflatedColumn, issues map[string][]string, config gcs.Path, group string) {
	storageClient, err := gcs.ClientWithCreds(ctx, creds)
	if err != nil {
		logrus.Fatalf("Failed to create storage client: %v", err)
	}
	defer storageClient.Close()

	client := gcs.NewClient(storageClient)

	groupUpdater := updater.InMem(groupTimeout, confirm, cols, issues)
	cycle := metrics.NewLogInt64("cycle_duration", "How long an update cycle took, in seconds.", logrus.New())
	start := time.Now()
	if err := updater.Update(ctx, client, config, gridPrefix, groupConcurrency, group, groupUpdater, confirm); err != nil {
		logrus.WithError(err).Error("Could not update")
	}
	cycle.Set(int64(time.Since(start).Seconds()))
	logrus.Infof("Update completed in %s", time.Since(start))
}

// largeLetterMap contains 21X21 representation of X, O, and space
var largeLetterMap = map[string]string{
	"X": `.                   .
 .                 . 
  .               .  
   .             .   
    .           .    
     .         .     
      .       .      
       .     .       
        .   .        
         . .         
          .          
         . .         
        .   .        
       .     .       
      .       .      
     .         .     
    .           .    
   .             .   
  .               .  
 .                 . 
.                   .`,
	"O": `     ...........     
    .           .    
   .             .   
  .               .  
 .                 . 
.                   .
.                   .
.                   .
.                   .
.                   .
.                   .
.                   .
.                   .
.                   .
.                   .
.                   .
 .                 . 
  .               .  
   .             .   
    .           .    
     ...........     `,
	" ": `                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     `,
}

// lettermap contains 5X5 representation of each letter
var letterMap = map[string]string{
	"A": `  .  
 . . 
.   .
.....
.   .`,
	"B": `.... 
.   .
.....
.   .
.... `,
	"C": ` ... 
.   .
.    
.   .
 ... `,
	"D": `..   
.  . 
.   .
.  . 
..   `,
	"E": `.....
.    
.....
.    
.....`,
	"F": `.....
.    
.....
.    
.    `,
	"G": ` ... 
.   .
.    
.  ..
 ... `,
	"H": `.   .
.   .
.....
.   .
.   .`,
	"I": ` ... 
  .  
  .  
  .  
 ... `,
	"J": ` .. 
  .  
  .  
. .  
 .. `,
	"K": ` .  .
 . . 
 .   
 . . 
 .  .`,
	"L": ` .   
 .   
 .   
 .   
 ... `,
	"M": `.   .
.. ..
. . .
.   .
.   .`,
	"N": `.  . 
.. . 
. .. 
. .. 
.  . `,
	"O": ` ... 
.   .
.   .
.   .
 ... `,
	"P": ` ... 
 .  .
 ... 
 .   
 .   `,
	"Q": ` ... 
.   .
.    
 ... 
    .`,
	"R": ` ... 
 .  .
 ... 
 . .
 .  .`,
	"S": ` ... 
.    
 ... 
    .
 ... `,
	"T": ` ... 
  .  
  .  
  .  
  .  `,
	"U": `.   .
.   .
.   .
.   .
 ... `,
	"V": `.   .
     
 . . 
     
  .  `,
	"W": `.   .
. . .
.. ..
.. ..
 . . `,
	"X": `.   .
 . . 
  .  
 . . 
.   .`,
	"Y": ` . . 
  .  
  .  
  .  
  .  `,
	"Z": `.....
   . 
  .  
 .   
.....`,
}

func ASCIIHelper(s string, large bool) [][]bool {
	var out [][]bool

	var rep string
	if large {
		rep = largeLetterMap[s]
	} else {
		rep = letterMap[s]
	}
	for _, line := range strings.Split(rep, "\n") {
		var boolLine []bool
		for _, c := range line {
			var b bool
			if string(c) == "." {
				b = true
			}
			boolLine = append(boolLine, b)
		}
		out = append(out, boolLine)
	}

	return out
}

func ASCII(s string, large bool, fgColor, bgColor color.Color) *hackimage.Image {
	out := ASCIIHelper(s, large)
	return pixelImage(out, fgColor, bgColor)
}

func ASCIIWord(s string, fgColor, bgColor color.Color) *hackimage.Image {
	var out [][]bool
	for _, c := range s {
		si := ASCIIHelper(string(c), false)
		if len(out) == 0 {
			out = si
		} else {
			for iRow, row := range si {
				if iRow > 0 {
					for i := 0; i < letterWidth; i++ {
						out[iRow] = append(out[iRow], false)
					}
				}
				out[iRow] = append(out[iRow], row...)
			}
		}
	}
	return pixelImage(out, fgColor, bgColor)
}

// TODO: move game board somewhere else
const (
	spriteWidth = 21
	letterWidth = 5
	letterGap   = 2

	separaterThickness = 1
	borderThickness    = 2
)

func addEmptyRow(orig [][]bool, height int) [][]bool {
	var new [][]bool
	var row []bool
	for i := 0; i < borderThickness*2+spriteWidth*3+separaterThickness*2; i++ {
		row = append(row, true)
	}
	for i := 0; i < height; i++ {
		new = append(new, row)
	}
	return append(orig, new...)
}

func addSpritesRow(orig [][]bool, insertionPoints []image.Point, start int) ([][]bool, []image.Point) {
	var new [][]bool
	var newInsertionPoints []image.Point
	for row := 0; row < spriteWidth; row++ {
		var bools []bool
		for i := 0; i < borderThickness; i++ {
			bools = append(bools, true)
		}
		for iSprites := 0; iSprites < 3; iSprites++ {
			if row == 0 {
				newInsertionPoints = append(newInsertionPoints, image.Point{
					X: start,
					Y: borderThickness + iSprites*(spriteWidth+separaterThickness),
				})
			}
			for col := 0; col < spriteWidth; col++ {
				bools = append(bools, false)
			}
			if iSprites != 2 {
				for iSeparator := 0; iSeparator < separaterThickness; iSeparator++ {
					bools = append(bools, true)
				}
			}
		}
		for i := 0; i < borderThickness; i++ {
			bools = append(bools, true)
		}
		new = append(new, bools)
	}
	return append(orig, new...), append(insertionPoints, newInsertionPoints...)
}

func TictactoeBoard(fgColor, bgColor color.Color) (*hackimage.Image, []image.Point) {
	// Each sprite is 21 by 21, double layer gaming boards surrounding it, and single layer separater

	var out [][]bool
	var insertionPoints []image.Point
	// Add top rows
	out = addEmptyRow(out, borderThickness)
	out, insertionPoints = addSpritesRow(out, insertionPoints, borderThickness)
	out = addEmptyRow(out, separaterThickness)
	out, insertionPoints = addSpritesRow(out, insertionPoints, borderThickness+(spriteWidth+separaterThickness))
	out = addEmptyRow(out, separaterThickness)
	out, insertionPoints = addSpritesRow(out, insertionPoints, borderThickness+(spriteWidth+separaterThickness)*2)
	out = addEmptyRow(out, borderThickness)

	return pixelImage(out, fgColor, bgColor), insertionPoints
}

func TictactoeSideBar(fgColor, bgColor color.Color) (*hackimage.Image, []image.Point) {
	// Side bar contains 'NEW GAME' button, game stats

	var out [][]bool
	var insertionPoints []image.Point

	streak := func(num int, b bool) []bool {
		var out []bool
		for i := 0; i < num; i++ {
			out = append(out, b)
		}
		return out
	}
	// New game button
	boxWidth := 1 + (letterWidth+letterGap)*5 - letterGap + 1
	out = append(out, streak(boxWidth, true))
	// NEW
	rowAccum := letterWidth
	insertionPoints = append(insertionPoints, image.Point{X: 1 + letterWidth + letterGap, Y: 1})
	// GAME
	rowAccum += letterWidth + letterGap
	insertionPoints = append(insertionPoints, image.Point{X: 1 + letterWidth + letterGap, Y: 1})
	// Draw this then the closing line
	for i := 0; i < rowAccum; i++ {
		out = append(out, []bool{true})
		out = append(out, streak(boxWidth-2, false))
		out = append(out, []bool{true})
	}

	return pixelImage(out, fgColor, bgColor), insertionPoints
}

func pixelImage(pixels [][]bool, fgColor, bgColor color.Color) *hackimage.Image {
	var cols int
	for _, row := range pixels {
		if n := len(row); n > cols {
			cols = n
		}
	}
	rect := image.Rect(0, 0, cols, len(pixels))
	img := hackimage.New(rect)
	for row, cols := range pixels {
		for col, white := range cols {
			if white {
				img.Set(col, row, fgColor)
			} else {
				img.Set(col, row, bgColor)
			}
		}
	}
	return img
}
