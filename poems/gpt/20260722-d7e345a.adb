-- What cannot be made twice
procedure Main is
   type T is limited null record;
   A : T;
   B : T := A;
begin
   null;
end Main;
