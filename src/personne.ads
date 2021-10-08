package Personne is

   type Personne_T is private;

   subtype Tag_String is String (1 .. 3);
   subtype Health_Integer is Integer range 1 .. 100;

   procedure Initialize
     (Personne : in out Personne_T; Tag : Tag_String; Health : Health_Integer);

   function GetTag (Personne : Personne_T) return Tag_String;
   function GetHealth (Personne : Personne_T) return Health_Integer;

private

   type Personne_T is record
      Tag : Tag_String; -- all members of a record must have a max size, les string sont déconseillés
      Health : Integer range 1 ..
          100; -- la taille d'in int est deja bornée mais c'est bon le le borner en core plus
   end record;

end Personne;
