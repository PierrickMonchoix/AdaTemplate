package P_Unit.Belier is

   type T_Belier is new T_Unit with private;

   -- Sans overriding, la procedure Attaque de T_Belier aurati été:
   --    procedure Attaque(Self : in out T_Fille ; Defenseur : in out T_Unit'class); de T_Unit (comment def de T_Unit.Attaque)
   -- Là, par le ovveriding, on indique que la fonction Attaque est ré-écrite
   overriding procedure Attaque (Self : in out T_Belier ; Defenseur : in out T_Unit'class);



private
   type T_Belier is new T_Unit with null record;

end P_Unit.Belier;
