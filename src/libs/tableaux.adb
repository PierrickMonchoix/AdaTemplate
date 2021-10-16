package body Tableaux is

   procedure Remplir_Tableau_Classique (Tableau : out T_Tableau) is
   begin
      Tableau := (15, 45, 27, 8, 19, 27);
   end Remplir_Tableau_Classique;

   procedure Remplir_Tableau_Avec_Les_Predicats (Tableau : out T_Tableau) is
   begin
      Tableau := (1 | 3 => 17, others => 0);  -- (17,0,17,0,0,0)
   end Remplir_Tableau_Avec_Les_Predicats;

   procedure Affecter_Valeurs_Par_Un_For (Tableau : out T_Tableau) is
   begin
      for i in Tableau'Range loop
         Tableau (i) := 0;
      end loop;
   end Affecter_Valeurs_Par_Un_For;

   procedure For_Each_Example (Tableau : out T_Tableau) is
   begin
      for Element : Integer of Tableau loop  -- le ": Integer" n'ets pas necessaire
         Element := Element + 1;
      end loop;

   end For_Each_Example;

end Tableaux;
