with Ada.Text_IO; use Ada.Text_IO;
with Personne;    use Personne;
with Test;        use Test;
with New_Vs_Sub_Type; use New_Vs_Sub_Type;

procedure Main is
   All_Tests_Passed : Boolean;

   Leonard : Personne.Personne_T;


   Money_Sean : Dollar := 12;
   Money_Jean : Euro := 13;
   Total_Money : Integer := 0; --no sense

   Spectateurs_In_Salle_1_Lundi: Spectateurs_In_Salle_1 := 12;
   Spectateurs_In_Salle_2_Lundi: Spectateurs_In_Salle_2 := 13;
   Total_Spectateurs_Lundi : Integer := 0;

begin

   Ada.Text_IO.Put_Line ("");
   Ada.Text_IO.Put_Line ("~~~ LAUNCHING TESTS ~~~");
   Ada.Text_IO.Put_Line ("");

   All_Tests_Passed := True;


   -- CODE AND TESTS --



   Personne.Initialize (Leonard, "LEO", 80);
   Test_And_Detect_Fail
     (All_Tests_Passed, "Personne.Initialize & Personne.Getters",
      Personne.GetTag (Leonard) = "LEO" and Personne.GetHealth (Leonard) = 80);


   Total_Spectateurs_Lundi := Spectateurs_In_Salle_1_Lundi + Spectateurs_In_Salle_2_Lundi; --possible car les substypes sont compatibles
   Test_And_Detect_Fail
     (All_Tests_Passed, "Differents subtypes are compatibles, but not new types",
      Total_Spectateurs_Lundi = 25);
   --Total_Money := Money_Sean + Money_Sean; --Impossible car des new types sont incmpatibles



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
