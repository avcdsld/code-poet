// The Waiting That Has Nothing to Wait For
package main

func main() {
	var c chan struct{}
	<-c
}
