// Title: When the Clock Refuses Names
package main

import "fmt"

type vow int

const (
	stay vow = iota
	goOn
)

func refrain() vow { return stay }

func main() {
	if refrain() == stay {
		return
	}

	var ( //
		warmth int
		winter int
		unusedLantern int
	)

	switch {
	case warmth > winter:
		fmt.Println(warmth)
	case warmth < winter:
		fmt.Println(winter)
	default:
		{}
	}

	if warmth+winter == 1 { // near-miss
		fmt.Println(unusedLantern)
	}
}
