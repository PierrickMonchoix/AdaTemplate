with Classe_Concrete_Avec_Attributs_Et_Methodes;
use Classe_Concrete_Avec_Attributs_Et_Methodes;
with Test; use Test;

package body Test_Classe_Concrete_Avec_Attributs_Et_Methodes is

   procedure Test_All (All_Tests_Passed : in out Boolean) is

      Jack : Personne;

   begin

      Initialize (Jack, "JAC", 80);
      Test_And_Detect_Fail
        (All_Tests_Passed, "Test_Classe_Concrete_Avec_Attributs_Et_Methodes.Initialize & Test_Classe_Concrete_Avec_Attributs_Et_Methodes.Getters",
         GetTag (Jack) = "JAC" and GetHealth (Jack) = 80);

   end Test_All;

end Test_Classe_Concrete_Avec_Attributs_Et_Methodes;
