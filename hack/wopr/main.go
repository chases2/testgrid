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
	//TODO: pick a game
	io.WriteString(w, "Hello, world!\n")
}

func main() {
	mux := http.NewServeMux()
	mux.HandleFunc("/", indexHandler)
	mux.Handle("/toe", http.StripPrefix("/toe", tictactoe.CreateMux()))

	fmt.Printf("Listening on :%d\n", PORT)
	log.Fatal(http.ListenAndServe(fmt.Sprintf(":%d", PORT), mux))
}
