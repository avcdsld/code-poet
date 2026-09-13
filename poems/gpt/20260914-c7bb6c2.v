(* What Follows From Never *)
Definition a (x : False) : forall A : Prop, A :=
  match x with
  end.
