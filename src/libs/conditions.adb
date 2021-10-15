package body Conditions is

   -- if
   function Le_Nombre_Est_Il_Pair (Nombre : in Integer) return Boolean is
   begin
      if Nombre mod 2 = 0 then
         return True;
      else
         return False;
      end if;
   end Le_Nombre_Est_Il_Pair;

   -- if conci
   function Le_Nombre_Est_Il_Pair_Conci (Nombre : in Integer) return Boolean is
   begin
      return (if Nombre mod 2 = 0 then True else False);
   end Le_Nombre_Est_Il_Pair_Conci;

   -- else if
   function Le_Nombre_Est_Il_Pair_Ou_Multiple_De_Cinq
     (Nombre : in Integer) return Boolean
   is
   begin
      if Nombre mod 2 = 0 then
         return True;
      else
         if Nombre mod 5 = 0 then
            return True;
         else
            return False;
         end if;
      end if;
   end Le_Nombre_Est_Il_Pair_Ou_Multiple_De_Cinq;

   -- case
   function Le_Nombre_Est_Il_Egal_A_Deux_Trois_Cinq_Sept
     (Nombre : in Integer) return Boolean
   is
   begin
      case Nombre is
         when 2 =>
            return True;
         when 3 =>
            return True;
         when 5 =>
            return True;
         when 7 =>
            return True;
         when others =>
            return False;
      end case;
   end Le_Nombre_Est_Il_Egal_A_Deux_Trois_Cinq_Sept;

end Conditions;
