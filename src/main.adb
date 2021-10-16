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
with Test_Genericite;
with Test_Heritage_Package;

procedure Main is

begin





   Ada.Text_IO.Put_Line ("");
   Ada.Text_IO.Put_Line ("~~~ LAUNCHING TESTS ~~~");
   Ada.Text_IO.Put_Line ("");


   -- CODE AND TESTS --





   Test_Classes_Abtraites_Et_Interfaces.Test_All;
   Test_Classe_Concrete_Avec_Attributs_Et_Methodes.Test_All;
   Test_Conditions.Test_All;
   Test_Boucles.Test_All;
   Test_Surchage_Operteurs.Test_All;
   Test_Polymorphisme_De_Types.Test_All;
   Test_Genericite.Test_All;
   Test_Heritage_Package.Test_All;


   -- END : CODE AND TESTS --

   Ada.Text_IO.Put_Line ("");
   Ada.Text_IO.Put ("~~~ RESULT OF TESTS ~~~  ");
   if Les_Tests_Sont_Ils_Passes then
      Ada.Text_IO.Put_Line ("> SUCCEED");
   else
      Ada.Text_IO.Put_Line ("> FAIL");
   end if;
   Ada.Text_IO.Put_Line ("");

end Main;
