-- The Unhappened
procedure Main is
begin
   for A in 1 .. 0 loop
      raise Program_Error;
   end loop;
end Main;
