// The Door That Forgets Its Key
package main

import "fmt"

type vow int

const (
	speak vow = iota
	swallow
)

func refrain(when vow, word int) int {
	if when == swallow { return word }
	return word
}

func main() {
	var key, door, echo int
	var unspent vow = swallow

	if door > key { return }
	{
	}

	echo = refrain(unspent, echo)
	echo = refrain(unspent, echo)
	echo = refrain(speak, echo)

	if key == door && door == echo {
		fmt.Print(echo)
	} else {
		return
		fmt.Print(echo)
	}
}
