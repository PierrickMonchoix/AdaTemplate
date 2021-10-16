package body Polymorphisme_De_Types is

   function Passage_Du_Bac (Bulletin : T_Bulletin_Lycee) return Boolean is
   begin
      return
        (Bulletin.francais + Bulletin.math + Bulletin.sport + Bulletin.lv1 +
         Bulletin.bio + Bulletin.chimie + Bulletin.lv2) /
        7.0 >=
        10.0;
   end Passage_Du_Bac;
   
   procedure Mutation_De_Type is
      Bltn_Eric : T_Bulletin ; -- de type de base T_Bulletin(COLLEGE) mais qui peut etre changé par mutation
   begin
      -- Bltn_Eric : T_Bulletin(COLLEGE) ; -- IMPOSIBLE : declaration before begin
      
      Bltn_Eric := (COLLEGE,12.5,13.0,9.5,15.0,8.0) ; -- C'est le sul moyen de muter de type en cours d'algorutme
      -- Bltn_Eric est alors un mutan
      end Mutation_De_Type;
   
   
end Polymorphisme_De_Types;
