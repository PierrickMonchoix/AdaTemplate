with Ada.Text_IO; use Ada.Text_IO;

package body Classes_Abstraites_Et_Interfaces is

   procedure Initialize_Humain (Self : in out Humain; Nom : String_For_Nom) is
   begin
      Self.Nom := Nom;
   end Initialize_Humain;

   function Se_Presenter (Self : Humain) return String_For_Presentation is
   begin
      return "Je suis " & Self.Nom;
   end Se_Presenter;

end Classes_Abstraites_Et_Interfaces;
