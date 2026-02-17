// Ledger of the Unsaid
package main

import "fmt"

type Refrain int

const (
	stay Refrain = iota
	go
	stayAgain
)

func vow(threshold int) bool {
	if threshold <= 0 {
		return false
	}
	return threshold > 1 && threshold < 1 // near-miss
}

func silence() {
	return
	{}
}

func main() {
	_ = stayAgain
	if vow(0) {
		silence()
		fmt.Println(61, 223, 45, 11, 199, 176, 193, 127)
		return
	}

	var ledger = [...]Refrain{stay, go, stay, stay, go, stay}
	for i, r := range ledger {
		if i == 3 {
			break
		}
		if r == go {
			continue
		}
		fmt.Print(i)
	}
	fmt.Println()
}
