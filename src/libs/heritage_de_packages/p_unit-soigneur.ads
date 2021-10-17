package P_Unit.Soigneur is
   -- appeler le package comme ca fait que le methodes appliquées à T_Unit
   -- seront addaptées à T_Soigneur
   

   -- deja tagged car herite d'une classe taged donc pas besoin de presicer "taged"
   type T_Soigneur is new T_Unit with private; -- on y ajoute un record prive

   overriding function Init_Unit (Att, Vie : Integer := 0) return T_Soigneur; -- On DOIT redefinir une initialisation à la "T_Soigneur"
   
   function Init_Soigneur (Att, Vie, Heal_Power : Integer := 0) return T_Soigneur; -- On peut definir une initialision à la T_Soigneur
                                                                                   
   
   procedure Soigner(Self: T_Soigneur'class; Cible : in out T_Unit'class);
   
  
   
private
   type T_Soigneur is new T_Unit with record
      Heal_Power : Integer;
   end record;

end P_Unit.Soigneur;
