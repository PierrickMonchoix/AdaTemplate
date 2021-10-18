package P_Unit is

   type T_Unit is tagged private;

   function Init_Unit (Att, Vie : Integer := 0) return T_Unit;

   -- Comme le premier param de Attaque est un T_Unit alors on poura faire Une_Unite.Attaque(Autre_Unite);
   -- Comme Self est de type T_Unit, une classe fille de T_Unit aura une fonction Attaque comme suit:
   --    procedure Attaque(Self : in out T_Fille ; Defenseur : in out T_Unit'class);
   -- Le 'class de "Defenseur : in out T_Unit'class" signifie que Defenseur acceptera tout type hérité de T_Unit
   -- C'est bien fait car Ada permet de dire: Self ne poura être QUE du type de la classe en question
   --   et Defenseur de n'import quel type dérivé. Imposer ce "QUE" n'est pas possible en Java par exemple.
   procedure Attaque
     (Self : in out T_Unit ;
      Defenseur : in out T_Unit'class);  -- 'class pour que TOUS les types herites de T_Unit fonctionnent

   function Get_Vie(Self : T_Unit) return Integer;

private

   type T_Unit is tagged record
      Att, Vie : Integer := 0;
   end record;

end P_Unit;
