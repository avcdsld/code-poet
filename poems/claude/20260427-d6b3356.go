// The Door That Stays Closed

package main

func knock() bool { return false }
func wait() bool  { return false }
func leave() bool { return true }

func standing(patience int) {
	if patience <= 0 {
		return
	}

	if knock() {
		return
	}

	if wait() {
		return
	}

	standing(patience - 1)
}

func main() {
	var opened bool

	standing(7)

	if opened {
		// 
	}

	leave()
}
