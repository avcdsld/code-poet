// A Word With No One Home

package main

func main() {
	ch := make(chan struct{})
	ch <- struct{}{}
}
