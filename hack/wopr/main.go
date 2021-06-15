package main

import (
	"fmt"
	"io"
	"log"
	"net/http"

	"github.com/GoogleCloudPlatform/testgrid/hack/wopr/tictactoe"
)

const (
	PORT = 8080
)

func indexHandler(w http.ResponseWriter, r *http.Request) {
	io.WriteString(w, `
<html>
<head>
<style>

</style>
</head>
<body>
SHALL WE PLAY A GAME?

<a href="/toe/new">Tic-tac-toe</a>
&nbsp;
<!-- TODO: easter egg! -->
<!-- a href="/global-thermonuclear-war">Global Thermo-nuclear War</a -->
</body>
</html>
`)
}

func main() {
	mux := http.NewServeMux()
	mux.Handle("/toe/", http.StripPrefix("/toe", tictactoe.CreateMux()))
	mux.HandleFunc("/global-thermonuclear-war", func(w http.ResponseWriter, r *http.Request) {
		io.WriteString(w, "the only winning move is not to play")
	})
	mux.HandleFunc("/", indexHandler)

	fmt.Printf("Listening on :%d\n", PORT)
	log.Fatal(http.ListenAndServe(fmt.Sprintf(":%d", PORT), mux))
}
