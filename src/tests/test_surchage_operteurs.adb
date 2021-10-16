with Test;                 use Test;
with Surcharge_Operateurs; use Surcharge_Operateurs;
package body Test_Surchage_Operteurs is

   procedure Test_All (All_Tests_Passed : in out Boolean) is
      Sirop_1, Sirop_2, Sirop_3, Sirop_4 : Sirop_Grenadine;
   begin
      Sirop_1.Volume        := 10.0;
      Sirop_1.Concentration := 1_000.0;
      Sirop_2.Volume        := 20.0;
      Sirop_2.Concentration := 3_000.0;
      Sirop_3               := Sirop_1 + Sirop_2;
      Sirop_4.Volume        := 10.0 + 20.0;
      Sirop_4.Concentration :=
        (1_000.0 * 10.0 + 3_000.0 * 20.0) / (10.0 + 20.0);

      --  Sirop_3.Volume := 10.0 + 20.0;
      --  Sirop_3.Concentration := (1000.0 * 10.0 + 3000.0 * 20.0 ) / (1000.0 + 3000.0);

      Test_And_Detect_Fail
        (B => All_Tests_Passed, Identifier => "test Test_Surchage_Operteurs +",
         Equality => Sirop_3 = Sirop_4);

   end Test_All;

end Test_Surchage_Operteurs;
