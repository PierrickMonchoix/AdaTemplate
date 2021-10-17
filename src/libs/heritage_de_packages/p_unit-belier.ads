package P_Unit.Belier is

   type T_Belier is new T_Unit with private;

   overriding procedure Attaque (Self : in out T_Belier ; Defenseur : in out T_Unit'class);



private
   type T_Belier is new T_Unit with null record;

end P_Unit.Belier;
