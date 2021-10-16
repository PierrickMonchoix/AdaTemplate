with Test;    use Test;
with Boucles; use Boucles;


package body Test_Boucles is

   --     -- simple loop
   --  function Multiplier_Par_Deux_Jusqua_supperieur_A_100_Avec_Simple_Loop(Nombre : in Integer) return Integer;
   --
   --  -- while loop
   --  function Multiplier_Par_Deux_Jusqua_supperieur_A_100_Avec_While_Loop(Nombre : in Integer) return Integer;
   --
   --  -- for loop
--  function Factorielle_Avec_Simple_For(Nombre : in Integer) return Integer;
   --
   --  -- for loop reverse
--  function Factorielle_Avec_Reverse_For(Nombre : in Integer) return Integer;

   procedure Test_All is
   begin

      Test_And_Detect_Fail
        (Identifier => "test Test_Boucles simple loop",
         Equality =>
           Multiplier_Par_Deux_Jusqua_supperieur_A_100_Avec_Simple_Loop (26) =
           104 and
           Multiplier_Par_Deux_Jusqua_supperieur_A_100_Avec_Simple_Loop (2) /=
             15);

      Test_And_Detect_Fail
        (Identifier => "test Test_Boucles while loop",
         Equality =>
           Multiplier_Par_Deux_Jusqua_supperieur_A_100_Avec_While_Loop (26) =
           104 and
           Multiplier_Par_Deux_Jusqua_supperieur_A_100_Avec_While_Loop (2) /=
             15);

      Test_And_Detect_Fail
        (Identifier => "test Test_Boucles simple for",
         Equality =>
           Factorielle_Avec_Simple_For (5) = 120 and
           Factorielle_Avec_Simple_For (4) /= 2);

      Test_And_Detect_Fail
        (Identifier => "test Test_Boucles reverse for",
         Equality =>
           Factorielle_Avec_Reverse_For (5) = 120 and
           Factorielle_Avec_Reverse_For (4) /= 2);

   end Test_All;

end Test_Boucles;
