with Ada.Text_IO; use Ada.Text_IO;
with Personne;    use Personne;

procedure Main is
   A, B, C : Integer;
   Leonard     : Personne.Personne_T;
   TagLeonard : Personne.Tag_String;
   HealthLeonard : Personne.Health_Integer;
begin

   Ada.Text_IO.Put("Saisir le tag de Leonard:");
   TagLeonard := Ada.Text_IO.Get_Line;
   Ada.Text_IO.Put("Saisir la vie de Leonard:");
   HealthLeonard := Integer'Value (Ada.Text_IO.Get_Line);

   Personne.Initialize(Leonard , TagLeonard , HealthLeonard);

   Ada.Text_IO.Put_Line ("Tag de Leonard: " & Personne.GetTag(Leonard));
   Ada.Text_IO.Put_Line ("Vie de Leonard: " & Integer'Image (Personne.GetHealth(Leonard)));

end Main;
