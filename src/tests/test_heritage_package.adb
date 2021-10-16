with Test;            use Test;
with P_Unit;          use P_Unit;
with P_Unit.Soigneur; use P_Unit.Soigneur;

package body Test_Heritage_Package is

   procedure Test_All is
      Unite    : T_Unit;
      Soigneur : T_Soigneur;
   begin
      Unite    := Init_Unit (Att => 12, Vie => 100);
      Soigneur := Init_Soigneur (Att => 5, Vie => 60, Heal_Power => 10);

      Unite.Attaque (Defenseur => Soigneur);
      Soigneur.Attaque (Defenseur => Unite);
      Soigneur.Soigner (Cible => Unite);

      Test_And_Detect_Fail
        (Identifier => "Test_Heritage_Package",
         Equality   =>
           Unite.Get_Vie = 100 - 5 + 10 and Soigneur.Get_Vie = 60 - 12);

   end Test_All;

end Test_Heritage_Package;
