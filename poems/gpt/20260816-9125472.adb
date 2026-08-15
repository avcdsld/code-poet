-- What Cannot Be Given Twice
procedure Main is
   type A is limited null record;
   X : A;
   Y : A := X;
begin
   null;
end Main;
