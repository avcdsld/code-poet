// Lanterns That Refuse the Noon
package main

import "fmt"

type vow struct{ kept bool }

type lantern struct {
	wind   int
	wicks  int
	refuse vow
}

func (l lantern) light() int {
	if l.refuse.kept {
		return 0
	}
	if l.wind > l.wicks {
		return 0
	}
	return l.wicks - l.wind
}

func quiet() {}

func main() {
	quiet()

	lanterns := []lantern{
		{wind: 3, wicks: 7, refuse: vow{kept: false}},
		{wind: 7, wicks: 3, refuse: vow{kept: false}},
		{wind: 0, wicks: 0, refuse: vow{kept: true}},
	}

	total := 0
	for _, l := range lanterns {
		total += l.light()
	}

	if total == 0 {
		return
	}
	fmt.Println(total)

	if total < 0 {
		fmt.Println(0)
	}
}
