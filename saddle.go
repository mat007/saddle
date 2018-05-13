//go:generate goversioninfo -icon=icon.ico -64
//go:generate pony install bin

package main

import (
	"fmt"
	"net/http"

	"github.com/mat007/pony/cef"
)

func main() {
	go http.ListenAndServe(":8080", http.FileServer(http.Dir("..")))
	browser.Start("http://localhost:8080",
		func(level int, message, source string, line int) {
			fmt.Printf("%s:%d - %d: %s\n", source, line, level, message)
		})
}
