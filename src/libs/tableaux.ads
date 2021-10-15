package Tableaux is

   TailleMax : constant Natural := 5;
   type T_Tableau is
     array (0 .. TailleMax) of Integer; -- TailleMax doit etre constant
   
   
   procedure Remplir_Tableau_Classique (Tableau : out T_Tableau);
   
   procedure Remplir_Tableau_Avec_Les_Predicats (Tableau : out T_Tableau);
   
   procedure Un_For_Dans_Un_Tableau (Tableau : out T_Tableau);

end Tableaux;
