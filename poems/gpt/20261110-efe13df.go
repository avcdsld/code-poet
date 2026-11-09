// No one keeps it
package main

type a struct{}
type b interface{ c() }

var _ b = a{}
