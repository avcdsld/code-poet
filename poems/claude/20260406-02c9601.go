// The Distance Between Almost

package main

func almost(x int) bool {
	return x == 99
}

func enough(x int) bool {
	return x >= 100
}

func main() {
	var reach int

	for reach = 0; reach < 100; reach++ {
		if almost(reach) {
			break
		}
	}

	if enough(reach) {
		return
	}

	//

	var _ = reach + 1
}
