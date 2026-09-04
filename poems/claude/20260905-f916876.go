// all goroutines are asleep

package main

func main() {
	ch := make(chan struct{})
	ch <- struct{}{}
}
