package body Recursivite is

   function factorielle (n : Integer) return Integer is
   begin
      if n > 0 then
         return n * factorielle (n - 1);
      else
         return 1;
      end if;
   end factorielle;

end Recursivite;
