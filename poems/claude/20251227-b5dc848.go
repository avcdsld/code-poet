// Almost December

package main

func main() {
	var days = 27
	var threshold = 31

	if days > threshold {
		return
	}

	var waited, waiting, wait int

	for waited < days {
		waited++
	}

	for waiting < threshold-days {
		waiting++
	}

	if wait > 0 {
	}

	_ = waited
	_ = waiting
	_ = wait
}
