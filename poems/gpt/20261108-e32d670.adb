-- Too Much
procedure Main is
   subtype A is Integer range 0 .. 1;
   B : A := 1;
begin
   B := B + 1;
end Main;
