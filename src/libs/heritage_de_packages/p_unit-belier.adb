package body P_Unit.Belier is

   procedure Attaque (Self : in out T_Belier ; Defenseur : in out T_Unit'class) is
   begin
      Defenseur.Vie := Defenseur.Vie - Self.Att;
      Self.Vie := Self.Vie - Self.Att;
   end Attaque;
      

end P_Unit.Belier;
