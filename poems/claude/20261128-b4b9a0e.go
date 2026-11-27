// What I Said to the Empty Room

package main

func main() {
	hear := make(chan struct{})
	go func() {
		hear <- struct{}{}
	}()
}
