package Classe_Concrete_Avec_Attributs_Et_Methodes is

   type Personne is private;

   subtype Tag_String is String (1 .. 3);
   subtype Health_Integer is Integer range 1 .. 100;

   procedure Initialize
     (Une_Personne : in out Personne; Tag : Tag_String;
      Health       :        Health_Integer);

   function GetTag (Une_Personne : Personne) return Tag_String;
   function GetHealth (Une_Personne : Personne) return Health_Integer;

private

   type Personne is tagged record
      Tag : Tag_String; -- all members of a record must have a max size, les string sont déconseillés
      Health : Integer range 1 ..
          100; -- la taille d'in int est deja bornée mais c'est bon le le borner en core plus
   end record;
   -- pour declarer vec les attributs:
   -- Pers : Personne := (Tag => "LEO", Health => 80);

end Classe_Concrete_Avec_Attributs_Et_Methodes;
