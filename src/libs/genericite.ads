package Genericite is

   --  Notez ?galement qu'il n'y a pas d'instruction ? END GENERIC ? !
   --  Pourquoi ? Tout simplement parce que ce type g?n?rique ne va servir qu'une seule fois
   --  et ce sera pour l'unit? de programme que l'on va d?clarer ensuite.
   --  Ainsi, c'est le terme FUNCTION, PROCEDURE ou PACKAGE qui jouera le r?le du END GENERIC

   -- > TYPE SIMPLE GENERIQUE
   
   generic
      type T_Type_Generique is
        private; -- on peut egalement faire que ca marche que pour les types dicrtes, voir : https://zestedesavoir.com/tutoriels/645/apprenez-a-programmer-avec-ada/554_ada-notions-avancees-et-programmation-orientee-objet/2668_la-programmation-modulaire-iii-genericite/
   procedure Generic_Swap_Values -- marque le "end generc"
     (var_1 : in out T_Type_Generique; var_2 : in out T_Type_Generique);
   
   -- impl?mentation : procedure Swap_Integer is new Generic_Swap_Values (Integer);

   
   -- > TABLEAU GENERIQUE
   
   -- On ve devoir sp?cifier: ce que contient le tableau ET ce que sont ses index (des natural? des negetifs?)
   
   generic
      type T_Generic_Indice is (<>);     -- subtype MesIndices is integer range 1..10 ; 
      type T_Generic_Tableau is array (T_Generic_Indice) of Float;  -- type MesTableaux is array(MesIndices) of Float ; 
   procedure Generic_Swap_Tableaux (T : in out T_Generic_Tableau; i, j : T_Generic_Indice);
   
   -- implementation : procedure swap is new Generic_Swap(MesIndices,MesTableaux) ; 

end Genericite;
