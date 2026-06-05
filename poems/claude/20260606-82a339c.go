// What We Called It

package main

func main() {
	ch := make(chan struct{})
	<-ch
}
