package body Personne is
   
   procedure Initialize(Personne : in out Personne_T; Tag : Tag_String; Health : Health_Integer) is
   begin
      Personne.Tag := Tag;
      Personne.Health := Health;
   end Initialize;
   
   function GetTag(Personne : Personne_T) return Tag_String is 
   begin
      return Personne.Tag;
   end GetTag;
   
   
   function GetHealth(Personne : Personne_T) return Health_Integer is
         begin
      return Personne.Health;
   end GetHealth;
  
end Personne;
