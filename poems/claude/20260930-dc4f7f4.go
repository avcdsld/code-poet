// words for no one

package main

func main() {
	ch := make(chan string)
	ch <- "hello"
}
