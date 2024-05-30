package main

import (
	"fmt"
	"log"
	"net/http"
)

func helloHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "Hello from Botgauge")
}

func main() {
	http.HandleFunc("/hello", helloHandler)

	log.Println("Starting server : 8080")
	err := http.ListenAndServe(":8080", nil) // Capturing the error
	if err != nil {
		log.Fatalf("Could not start server: %s\n", err)
	}
}
