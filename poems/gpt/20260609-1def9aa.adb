-- Only Once
procedure Once is
   type A is limited null record;
   B : A;
   C : A := B;
begin
   null;
end Once;
