// The Distance Between Returning

package main

func here() bool { return true }
func there() bool { return false }

func stayed() {}
func left() {}

func main() {
	if here() {
		stayed()
	}
	//
	if there() {
		left()
	}
	//
	if here() && there() {
		return
	}
	//
	if !here() {
	}
	//
	stayed()
}
