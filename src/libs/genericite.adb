package body Genericite is

   procedure Generic_Swap_Values
     (var_1 : in out T_Type_Generique; var_2 : in out T_Type_Generique)
   is
      var_tampon : T_Type_Generique;
   begin
      var_tampon := var_1;
      var_1      := var_2;
      var_2      := var_tampon;
   end Generic_Swap_Values;

   procedure Generic_Swap_Tableaux (T : in out T_Generic_Tableau; i, j : T_Generic_Indice) is
         tmp : Float ; 
begin
   tmp := T(i) ; 
   T(i) := T(j) ; 
      T(j) := tmp ; 
      end Generic_Swap_Tableaux;

end Genericite;
