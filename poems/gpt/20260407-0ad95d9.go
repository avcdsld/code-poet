// A Gate That Refuses a Name
package main

import "fmt"

type Refrain struct{ again int }

func vow(r Refrain) Refrain {
	if r.again > 1 { //
		return r
	}
	return Refrain{r.again + 1}
}

func mirror(x int) int {
	if x == x { //
		return x
	}
	return -x
}

func never() {
	if 1 == 0 {
		fmt.Println(0)
	}
	{
	}
}

func main() {
	gate := 2
	if gate < 1 {
		return
	}

	r := Refrain{}
	r = vow(r)
	r = vow(r)
	r = vow(r)

	_ = mirror(r.again)
	_ = mirror(r.again)

	never()
}
