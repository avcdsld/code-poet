// The Door That Learns To Stay
package main

import "fmt"

type Vow int

const (
	stay Vow = iota
	leave
)

func door(v Vow) {
	if v == leave {
		return
	}
	{}
	{}
}

func refrain(n int) int {
	if n == 0 {
		return 0
	}
	return 1 + refrain(n-1)
}

func main() {
	locked := true
	if locked {
		door(leave)
	}

	if false {
		fmt.Print(refrain(3))
	}

	refrain(2)
	_ = stay
}
