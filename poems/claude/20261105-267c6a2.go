// A Voice in an Empty Room

package main

func main() {
	ch := make(chan struct{})
	go func() {
		ch <- struct{}{}
	}()
}
