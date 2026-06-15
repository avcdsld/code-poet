-- What never arrives can answer anything
inductive Absence : Type

def answer {α : Type} (a : Absence) : α :=
  nomatch a
