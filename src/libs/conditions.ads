package Conditions is

   
   -- if
   function Le_Nombre_Est_Il_Pair( Nombre : in Integer ) return Boolean;
   
   -- if conci
   function Le_Nombre_Est_Il_Pair_Conci( Nombre : in Integer ) return Boolean;
   
   -- else if
   function Le_Nombre_Est_Il_Pair_Ou_Multiple_De_Cinq( Nombre : in Integer ) return Boolean;
     
   -- case
   function Le_Nombre_Est_Il_Egal_A_Deux_Trois_Cinq_Sept( Nombre : in Integer ) return Boolean;
   

end Conditions;
