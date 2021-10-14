package body Classe_Concrete_Avec_Attributs_Et_Methodes is
   
   procedure Initialize(Une_Personne : in out Personne; Tag : Tag_String; Health : Health_Integer) is
   begin
      Une_Personne.Tag := Tag;
      Une_Personne.Health := Health;
   end Initialize;
   
   function GetTag(Une_Personne : Personne) return Tag_String is 
   begin
      return Une_Personne.Tag;
   end GetTag;
   
   
   function GetHealth(Une_Personne : Personne) return Health_Integer is
         begin
      return Une_Personne.Health;
   end GetHealth;
  
end Classe_Concrete_Avec_Attributs_Et_Methodes;
