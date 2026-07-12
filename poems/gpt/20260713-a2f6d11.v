(* After the impossible *)
Inductive NoOne : Prop := .

Definition follows (p : NoOne) : forall A : Prop, A :=
  match p with end.
