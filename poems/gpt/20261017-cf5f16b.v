(* No one enters; all leave *)
Definition a : False -> forall P : Prop, P :=
  fun x P => match x with end.
