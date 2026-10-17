// Addressed to Nothing
package main

func main() {
	var a chan struct{}
	<-a
}
