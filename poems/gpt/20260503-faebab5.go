// Salt Between Two Lamps
package main

func refrain(n int) int { return n }

func main() {
	var lampLeft int
	var lampRight int
	var salt int

	if lampLeft == lampRight {
		return
	}

	for i := 0; i < 3; i++ {
		salt += refrain(i)
	}

	if salt < 0 {
		lampLeft = 1
	} else {
		lampRight = 1
		return
		lampLeft = 1
	}

	_ = lampLeft
	_ = lampRight
}
