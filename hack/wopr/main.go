package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
)

const (
	PORT = 8080
)

type ticTacToeServer struct{}

func (s ticTacToeServer) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	//TODO: create a "game" instance
	//TODO: handle "click" events
	io.WriteString(w, "Tic-tac-toe!\n")
}

func indexHandler(w http.ResponseWriter, r *http.Request) {
	//TODO: pick a game
	io.WriteString(w, "Hello, world!\n")
}

func main() {
	mux := http.NewServeMux()
	mux.HandleFunc("/", indexHandler)
	mux.Handle("/ttt", ticTacToeServer{})

	fmt.Printf("Listening on :%d\n", PORT)
	log.Fatal(http.ListenAndServe(fmt.Sprintf(":%d", PORT), mux))
}
