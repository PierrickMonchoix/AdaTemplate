with Test;            use Test;
with P_Unit;          use P_Unit;
with P_Unit.Soigneur; use P_Unit.Soigneur;
with P_Unit.Belier;   use P_Unit.Belier;

package body Test_Heritage_Package is

   procedure Test_All is
      Unite    : T_Unit;
      Soigneur : T_Soigneur;
      Belier   : T_Belier;
   begin
      Unite    := Init_Unit (Att => 12, Vie => 100);
      Soigneur := Init_Soigneur (Att => 5, Vie => 60, Heal_Power => 10);
      Belier   := Init_Unit (Att => 30, Vie => 200);

      Unite.Attaque (Defenseur => Soigneur);
      Soigneur.Attaque (Defenseur => Unite);
      Soigneur.Soigner (Cible => Unite);
      Belier.Attaque (Defenseur => Unite);

      Test_And_Detect_Fail
        (Identifier => "Test_Heritage_Package",
         Equality   =>
           Unite.Get_Vie = 100 - 5 + 10 - 30 and Soigneur.Get_Vie = 60 - 12 and
           Belier.Get_Vie = 200 - 30);

   end Test_All;

end Test_Heritage_Package;
