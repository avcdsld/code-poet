(* What cannot be born cannot die *)

type never = |

let end_of (x : never) =
  match x with
  | _ -> .
