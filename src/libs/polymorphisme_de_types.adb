package body Polymorphisme_De_Types is

   function Passage_Du_Bac (Bulletin : T_Bulletin_Lycee) return Boolean is
   begin
      return
        (Bulletin.francais + Bulletin.math + Bulletin.sport + Bulletin.lv1 +
         Bulletin.bio + Bulletin.chimie + Bulletin.lv2) /
        7.0 >=
        10.0;
   end Passage_Du_Bac;
end Polymorphisme_De_Types;
