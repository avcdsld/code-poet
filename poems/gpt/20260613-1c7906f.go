// A Name Is Enough
package main

type T struct{}

func main() {
	var a *T = nil
	var b any = a

	println(a == nil)
	println(b == nil)
}
