package body P_Unit is

   function Init_Unit (Att, Vie : Integer := 0) return T_Unit is
      Result : T_Unit;
   begin
      Result.Att := Att;
      Result.Vie := Vie;
      return Result;
   end Init_Unit;

   procedure Attaque (Self : in out T_Unit; Defenseur : in out T_Unit'Class) is
   begin
      Defenseur.Vie := Defenseur.Vie - Self.Att;
   end Attaque;

   function Get_Vie (Self : T_Unit) return Integer is
   begin
      return Self.Vie;
   end Get_Vie;

end P_Unit;
