-- Only One Shape
procedure Main is
   subtype A is Integer range 1 .. 1;
   B : A := 1;
begin
   B := B + 1;
end Main;
