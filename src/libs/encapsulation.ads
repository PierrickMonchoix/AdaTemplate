package Encapsulation is

   --   PARTIE PUBLIQUE

   type T_Pile is
   limited private;       --Le type T_Pile est d�sormais priv� ET limit� ! ! !
   
   -- private: on ne peut pas acceder aux attrubuts de T_Pile
   -- limited: on ne peut pas effectuer une affectation directe ou un test d'�galit�

private

   --   PARTE PRIV�E

   type T_Pile is record
      Valeur : Integer;
      Index  : Integer;
   end record;

end Encapsulation;
