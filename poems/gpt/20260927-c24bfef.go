// The Shape of Nothing
package main

type T struct{}

var a *T = nil
var b any = a

var c = a == nil
var d = b == nil
