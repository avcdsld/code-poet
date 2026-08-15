// What We Lost

sealed trait WhatWeLost

def search(x: WhatWeLost): Nothing = x match {
  case _ => search(x)
}
