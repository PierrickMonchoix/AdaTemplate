package P_Unit is

   type T_Unit is tagged private;

   function Init_Unit (Att, Vie : Integer := 0) return T_Unit;

   -- comme le premier param de Attaque est un T_Unit alors on poura faire Une_Unite.Attaque(Autre_Unite);
   procedure Attaque
     (Self : in out T_Unit ;
      Defenseur : in out T_Unit'class);  -- 'class pour que TOUS les types herites de T_Unit fonctionnent

   function Get_Vie(Self : T_Unit) return Integer; -- le "Self : T_Unit" deviendra automatiquement "Self : T_soingeur" pour la classe soigneur
     -- comme pour la classe

private

   type T_Unit is tagged record
      Att, Vie : Integer := 0;
   end record;

end P_Unit;
