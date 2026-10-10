// What I Meant To Give You

package main

func main() {
	giving := make(chan struct{})
	giving <- struct{}{}
}
