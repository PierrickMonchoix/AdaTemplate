package body Test is

   function Les_Tests_Sont_Ils_Passes return Boolean is
   begin
        return All_Tests_Passed;
      end Les_Tests_Sont_Ils_Passes;

   function Test_Equality
     (Identifier : String; Equality : Boolean) return Boolean
   is
   begin
      if Equality = True then
         Ada.Text_IO.Put_Line ("TEST " & Identifier & " PASSED");
         return True;
      else
         Ada.Text_IO.Put_Line ("### TEST " & Identifier & " FAIL");
         return False;
      end if;
   end Test_Equality;

   procedure Detect_Fail (B : in out Boolean; Test_To_Pass : Boolean) is
   begin
      if Test_To_Pass = False then
         B := False;
      end if;
   end Detect_Fail;

   procedure Test_And_Detect_Fail
     (Identifier : String; Equality : Boolean)
   is
      Result : Boolean;

   begin
      Result := Test_Equality (Identifier, Equality);
      Detect_Fail (All_Tests_Passed, Equality);
   end Test_And_Detect_Fail;

end Test;
