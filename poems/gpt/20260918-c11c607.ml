(* A promise to nobody *)
type a = |

let f (x : a) : 'b = match x with _ -> .
