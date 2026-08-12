// Words For No One

package main

func main() {
	words := make(chan struct{})
	words <- struct{}{}
}
