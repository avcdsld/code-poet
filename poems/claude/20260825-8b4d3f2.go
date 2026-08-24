// what it costs to keep talking

package main

func main() {
	us := make(chan struct{})
	close(us)
	us <- struct{}{}
}
