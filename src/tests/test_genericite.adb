with Test;       use Test;
with Genericite; use Genericite;

package body Test_Genericite is

   procedure Test_All is
      procedure Swap_Integer is new Generic_Swap_Values (Integer);
      a, b : Integer;
   begin
      a := 1;
      b := 2;
      Swap_Integer (a, b);
      Test_And_Detect_Fail
        (Identifier => "Test_Genericite Swap_Integer",
         Equality   => a = 2 and b = 1);
   end Test_All;

end Test_Genericite;
