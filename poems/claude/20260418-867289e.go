// The Distance Between

package main

func here() int { return 0 }
func there() int { return 1 }

func reach(from, toward int) int {
	if from == toward {
		return from
	}
	return reach(from+1, toward)
}

func stay(where int) int {
	return where
}

func main() {
	start := here()
	end := there()

	if start == end {
		return
	}

	_ = reach(start, end)

	//

	_ = stay(start)
}
