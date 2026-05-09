// The Door That Refuses Twice
package main

type Door struct{ vow, hush bool }

type Refrain struct{ again int }

func knock(d *Door, r *Refrain) {
	if d.hush {
		return
	}
	if d.vow {
		d.hush = true
		return
	}
	d.vow = true
	r.again++
	if r.again > 1 {
		return
	}
	knock(d, r)
}

func main() {
	door := Door{}
	refrain := Refrain{}
	lock := 0
	if lock != 0 {
		knock(&door, &refrain)
	}
	{ }
	knock(&door, &refrain)
	_ = door
	_ = refrain
}
