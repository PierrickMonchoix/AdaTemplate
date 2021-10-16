package P_Unit is

   type T_Unit is tagged private;

   function Init_Unit (Att, Vie : Integer := 0) return T_Unit;

   -- comme le premier param de Attaque est un T_Unit alors on poura faire Une_Unite.Attaque(Autre_Unite);
   procedure Attaque
     (Self,
      Defenseur : in out T_Unit'
        Class);  -- 'class pour que tous les types herites de T_Unit fonctionnent

   function Get_Vie(Self : T_Unit) return Integer;

private

   type T_Unit is tagged record
      Att, Vie : Integer := 0;
   end record;

end P_Unit;
