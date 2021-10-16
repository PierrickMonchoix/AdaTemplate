with Ada.Text_IO; use Ada.Text_IO;
package Test is

   procedure Test_And_Detect_Fail
     (Identifier : String; Equality : Boolean);

   function Les_Tests_Sont_Ils_Passes return Boolean;

private

   All_Tests_Passed : Boolean := True;

   function Test_Equality
     (Identifier : String; Equality : Boolean) return Boolean;

   procedure Detect_Fail (B : in out Boolean; Test_To_Pass : Boolean);



end Test;
