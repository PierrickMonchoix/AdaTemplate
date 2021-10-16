with Ada.Unchecked_Deallocation;

package body Pointeurs is

   procedure Allocation_Dynamique_Free_Sans_Free is
   begin
      --du code
      declare
         type T_Ptr_Integer is access Integer;
         Ptr : T_Ptr_Integer;
      begin
         Ptr     := new Integer; -- allocation memoire
         Ptr.all :=
           42; -- ce ptr pointe vers une case memoire stockant l'integer 42

         --utilisation du ptr

      end; -- la fin du bloc declare détruit le type T_Ptr_Integer et tout le tat qui lui est associé (free)
   end Allocation_Dynamique_Free_Sans_Free;

   procedure Allocation_Dynamique_Free_Avec_Free is
      type T_Ptr_Integer is access Integer;
      Ptr : T_Ptr_Integer;
      procedure Free is new Ada.Unchecked_Deallocation
        (Integer, T_Ptr_Integer);
   begin
      Ptr     := new Integer; -- allocation memoire
      Ptr.all :=
        42; -- ce ptr pointe vers une case memoire stockant l'integer 42

      --utilisation du ptr

      Free (Ptr);-- free
   end Allocation_Dynamique_Free_Avec_Free;

   procedure Allocation_Statique is
      type T_Ptr_Integer is access all Integer; -- le all veut ici dire que l'allocation peut etre statique
      Ptr : T_Ptr_Integer;
      N   : aliased Integer;  -- le aliased seut dire que l'adresse de N est accessible
   begin
      N       := 374;
      Ptr     := N'Access; -- adresse de N
      Ptr.all := 12;

   end Allocation_Statique;

   function Foo (n : Integer) return Integer is
   begin
      return 15;
   end Foo;

   procedure Pointeur_Sur_Fonction is
      type T_Ptr_Fonction is access function (n : Integer) return Integer;
      Ptr : T_Ptr_Fonction;
      N   : Integer := 0;
   begin
      Ptr := Foo'Access;
      N   := Ptr.all (N);

   end Pointeur_Sur_Fonction;

end Pointeurs;
