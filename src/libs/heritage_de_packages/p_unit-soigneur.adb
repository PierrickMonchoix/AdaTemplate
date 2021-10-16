package body P_Unit.Soigneur is

   function Init_Unit (Att, Vie : Integer := 0) return T_Soigneur is
      Result : T_Soigneur;
   begin
      Result.Att := Att;
      Result.Vie := Vie;
      return Result;
   end Init_Unit;

   function Init_Soigneur (Att, Vie, Heal_Power : Integer := 0) return T_Soigneur
   is
      Result : T_Soigneur := Init_Unit (Att, Vie);
   begin
      Result.Heal_Power := Heal_Power;
      return Result;
   end Init_Soigneur;

   procedure Soigner (Self : T_Soigneur'class ; Cible : in out T_Unit'class ) is
   begin
      Cible.Vie := Cible.Vie + Self.Heal_Power;
   end Soigner;

end P_Unit.Soigneur;
