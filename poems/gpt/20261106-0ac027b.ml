(* No one comes *)

type never = |

let answer (x : never) =
  match x with
  | _ -> .
