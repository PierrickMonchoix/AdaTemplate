package body Tableaux is

   procedure Remplir_Tableau_Classique (Tableau : out T_Tableau) is
   begin
      Tableau := (15, 45, 27, 8, 19, 27);
   end Remplir_Tableau_Classique;

   procedure Remplir_Tableau_Avec_Les_Predicats (Tableau : out T_Tableau) is
   begin
      Tableau := (1 | 3 => 17, others => 0);  -- (17,0,17,0,0,0)
   end Remplir_Tableau_Avec_Les_Predicats;

   procedure Un_For_Dans_Un_Tableau (Tableau : out T_Tableau) is
   begin

      for i in Tableau'Range loop
         Tableau (i) := 0;
      end loop;
   end Un_For_Dans_Un_Tableau;

end Tableaux;
