package main

import (
	"crypto/tls"
	"log"
	"net/http"
)

func main() {
	mux := http.NewServeMux()
	mux.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("Ultra-Uni-Cloud Edge Pipeline Verified (TLS Terminated)."))
	})

	cfg := &tls.Config{
		MinVersion:               tls.VersionTLS13,
		PreferServerCipherSuites: true,
	}

	srv := &http.Server{
		Addr:         ":443",
		Handler:      mux,
		TLSConfig:    cfg,
	}

	log.Println("Starting global Edge TLS termination endpoint on :443...")
	log.Fatal(srv.ListenAndServeTLS("server.crt", "server.key"))
}
