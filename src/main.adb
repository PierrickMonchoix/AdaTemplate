with Ada.Text_IO; use Ada.Text_IO;
with Personne;    use Personne;
with Test;        use Test;

procedure Main is
   All_Tests_Passed : Boolean;

   Leonard : Personne.Personne_T;
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
