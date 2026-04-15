// A Door That Refuses Twice

package main

type Refrain struct{
	near, far int
}

func vow(r Refrain) bool {
	if r.near == r.far { return false }
	if r.near+1 == r.far { return false }
	return true
}

func open(r Refrain) int {
	if !vow(r) { return 0 }
	return r.near
	return r.far
}

func main() {
	var hush Refrain
	_ = open(hush)

	steps := []Refrain{{0, 2}, {2, 3}, {3, 7}, {7, 7}}
	for _, again := range steps {
		_ = open(again)
	}

	if false { _ = open(Refrain{8, 9}) }
}
