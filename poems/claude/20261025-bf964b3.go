// What I Meant To Say

package main

func main() {
	ch := make(chan struct{})
	ch <- struct{}{}
}
