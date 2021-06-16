package main

import (
	"context"
	"flag"
	"fmt"
	"io"
	"log"
	"net/http"

	"github.com/GoogleCloudPlatform/testgrid/hack/wopr/tictactoe"
	"github.com/GoogleCloudPlatform/testgrid/hackathon/pkg/hackupdater"
	"github.com/GoogleCloudPlatform/testgrid/pkg/updater"
	"github.com/GoogleCloudPlatform/testgrid/util/gcs"
)

const (
	PORT = 8080
)

func indexHandler(w http.ResponseWriter, r *http.Request) {
	io.WriteString(w, `
<html>
<head>
<style>
@import url('https://fonts.googleapis.com/css2?family=VT323&display=swap');

body {
	background-color: #125;
	color: lightblue;
	font-family: 'VT323', monospace;
	font-size: x-large;
}
a,
a:link,
a:visited {
	color: lightblue;
	text-decoration: none;
}
a:hover {
	filter: brightness(85%);
}
a:active {
	filter: brightness(125%);
}
ul {
	list-style: none;
	margin-left: 0;
	font-size: 120%;
}
.center {
	margin: auto;
	width: 50%;
	padding: 10px;
}
</style>
</head>
<body>
<div class="center">
	<h1>SHALL WE PLAY A GAME?</h1>
	<ul>
		<li><a href="/toe/new">Tic-tac-toe</a></li>
		<li><a href="http://mine-dot-k8s-testgrid.appspot.com/minesweeper/Ov-BAwEBBmFjdGlvbgH_ggABBAEFQm9hcmQB_4gAAQRGbGFnAQIAAQNOZXcBAgABBE9wZW4B_4oAAAAU_4cCAQEFYm9hcmQB_4gAAf-GAAAN_4UCAQL_hgAB_4QAADH_gwMBAv-EAAEEAQRNaW5lAQIAAQRPcGVuAQIAAQRGbGFnAQIAAQVNYXliZQECAAAAH_-JAwEBBVBvaW50Af-KAAECAQFYAQQAAQFZAQQAAAAF_4IDAQA=">Minesweeper</a></li>
		<li><a href="/global-thermonuclear-war">Global Thermo-nuclear War</a></li>
	</ul>
</div>
</body>
</html>
`)
}

func main() {
	flag.Parse()

	creds := ""
	confirm := true
	config, _ := gcs.NewPath("gs://k8s-testgrid-hackathon/config")

	gcsWrite := func(testGroup string, cols []updater.InflatedColumn) {
		issues := map[string][]string{}
		hackupdater.Update(context.Background(), creds, confirm, cols, issues, *config, testGroup)
	}

	mux := http.NewServeMux()
	mux.Handle("/toe/", http.StripPrefix("/toe", tictactoe.CreateMux(gcsWrite)))
	mux.HandleFunc("/global-thermonuclear-war", playGlobalThermonuclearWar)
	mux.HandleFunc("/", indexHandler)

	fmt.Printf("Listening on :%d\n", PORT)
	log.Fatal(http.ListenAndServe(fmt.Sprintf(":%d", PORT), mux))
}

func playGlobalThermonuclearWar(w http.ResponseWriter, r *http.Request) {
	io.WriteString(w, `
	<html>
	<head>
	<style>
	@import url('https://fonts.googleapis.com/css2?family=VT323&display=swap');
	body {
		background-color: #125;
		color: lightblue;
		font-family: 'VT323', monospace;
		font-size: x-large;
	}
	a,
	a:link,
	a:visited {
		color: lightblue;
		text-decoration: none;
	}
	a:hover {
		filter: brightness(85%);
	}
	a:active {
		filter: brightness(125%);
	}
	ul {
		list-style: none;
		margin-left: 0;
		font-size: 120%;
	}
	.center {
		margin: auto;
		width: 50%;
		padding: 10px;
	}
	</style>
	</head>
	<body>
	<div class="center">
		the only winning move is not to play
	</div>
	</body>
	</html>	
`)
}
