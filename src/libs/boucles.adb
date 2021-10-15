package body Boucles is

   -- simple loop
   function Multiplier_Par_Deux_Jusqua_supperieur_A_100_Avec_Simple_Loop
     (Nombre : in Integer) return Integer
   is
      Tampon : Integer := Nombre;
   begin
      loop
         exit when Tampon > 100; -- ou: if Nombre > 100 then exit; end if;
         Tampon := Tampon * 2;
      end loop;
      return Tampon;
   end Multiplier_Par_Deux_Jusqua_supperieur_A_100_Avec_Simple_Loop;

   -- while loop
   function Multiplier_Par_Deux_Jusqua_supperieur_A_100_Avec_While_Loop
     (Nombre : in Integer) return Integer
   is
      Tampon : Integer := Nombre;
   begin
      while Tampon < 100 loop
         Tampon := Tampon * 2;
      end loop;
      return Tampon;
   end Multiplier_Par_Deux_Jusqua_supperieur_A_100_Avec_While_Loop;

   -- for loop
   function Factorielle_Avec_Simple_For (Nombre : in Integer) return Integer is
      Tampon : Integer := 1;
   begin
      for i in 1 .. Nombre loop
         Tampon := Tampon * i;
      end loop;
      return Tampon;
   end Factorielle_Avec_Simple_For;

   -- for loop reverse
   function Factorielle_Avec_Reverse_For (Nombre : in Integer) return Integer
   is
      Tampon : Integer := 1;
   begin
      for i in reverse 1 .. Nombre loop
         Tampon := Tampon * i;
      end loop;
      return Tampon;
   end Factorielle_Avec_Reverse_For;

end Boucles;
