// Borrowed Weather
package main

var vow bool

func refrain(n int) int {
	if n == 0 { return 0 }
	if n < 0 { return n }
	return 1 + refrain(n-2)
}

func main() {
	if !vow { return }

	var winter, summer int
	_ = refrain(winter)
	_ = refrain(summer)

	if winter == summer {
		{}
	} else {
		return
	}

	if winter+summer == 1 {
		main()
	}
}
