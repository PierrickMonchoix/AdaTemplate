with Ada.Text_IO;     use Ada.Text_IO;
with Classe_Concrete_Avec_Attributs_Et_Methodes;        use Classe_Concrete_Avec_Attributs_Et_Methodes;
with Test;            use Test;
with Test_Classes_Abtraites_Et_Interfaces;
with Test_Classe_Concrete_Avec_Attributs_Et_Methodes ;
with Ada.Integer_Text_IO ;
with Test_Conditions;
with Test_Boucles;
with Test_Surchage_Operteurs;
with Test_Polymorphisme_De_Types;

procedure Main is
   All_Tests_Passed : Boolean;

begin





   Ada.Text_IO.Put_Line ("");
   Ada.Text_IO.Put_Line ("~~~ LAUNCHING TESTS ~~~");
   Ada.Text_IO.Put_Line ("");

   All_Tests_Passed := True;

   -- CODE AND TESTS --





   Test_Classes_Abtraites_Et_Interfaces.Test_All (All_Tests_Passed);

   Test_Classe_Concrete_Avec_Attributs_Et_Methodes.Test_All(All_Tests_Passed);

   Test_Conditions.Test_All(All_Tests_Passed);

   Test_Boucles.Test_All(All_Tests_Passed);

   Test_Surchage_Operteurs.Test_All(All_Tests_Passed);

   Test_Polymorphisme_De_Types.Test_All(All_Tests_Passed);

   -- END : CODE AND TESTS --

   Ada.Text_IO.Put_Line ("");
   Ada.Text_IO.Put ("~~~ RESULT OF TESTS ~~~  ");
   if All_Tests_Passed = True then
      Ada.Text_IO.Put_Line ("> SUCCEED");
   else
      Ada.Text_IO.Put_Line ("> FAIL");
   end if;
   Ada.Text_IO.Put_Line ("");

end Main;
