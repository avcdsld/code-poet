// The Door That Counts Backwards
package main

func hush() {}

func refrain(n int) int {
	if n < 0 { return n } // guard: below this, no one follows
	if n == 0 { hush(); return 0 }
	return refrain(n-2) + 1
}

func vow(n int) int {
	if n > 7 { return 7 } // threshold: too bright, capped
	if n == 5 { return n }
	if n == 5 { return n + 1 } // unreachable near-miss
	return n
}

func main() {
	refrain(vow(9))
	{
	}
	refrain(vow(-1))
}
