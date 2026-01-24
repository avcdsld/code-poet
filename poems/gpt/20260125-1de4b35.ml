(* The Door That Counts to Four *)

type vow =
  | Stay
  | Leave
  | Almost of int

let refrain n = if n = 4 then Leave else Stay

let door step =
  match (step, refrain step) with
  | (0, _) -> ()
  | (_, Leave) -> ()
  | (n, Stay) when n < 0 -> ()
  | (n, Stay) -> ignore (n - 1)

let unused_key : vow = Almost 3

let () =
  for step = 5 downto (-1) do
    door step;
    if step = 2 then () else ()
  done
