-- No More Room
procedure Main is
   subtype A is Integer range 0 .. 1;
   B : A := A'Last;
begin
   B := B + 1;
end Main;
