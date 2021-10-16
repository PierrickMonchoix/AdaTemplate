package body Surcharge_Operateurs is

   function "+"
     (Sirop_Gauche : Sirop_Grenadine; Sirop_Droite : Sirop_Grenadine)
      return Sirop_Grenadine
   is
      Sirop_Returned : Sirop_Grenadine;
   begin
      Sirop_Returned.Volume := Sirop_Gauche.Volume + Sirop_Droite.Volume;
      Sirop_Returned.Concentration :=
        (Sirop_Gauche.Concentration * Sirop_Gauche.Volume +
         Sirop_Droite.Concentration * Sirop_Droite.Volume) /
        (Sirop_Gauche.Volume + Sirop_Droite.Volume);
      return Sirop_Returned;
   end "+";

   function "="
     (Sirop_Gauche : Sirop_Grenadine; Sirop_Droite : Sirop_Grenadine)
      return Boolean
   is
   begin
      return
        abs (Sirop_Gauche.Volume - Sirop_Droite.Volume) < 0.1 and
        abs (Sirop_Gauche.Concentration - Sirop_Droite.Concentration) < 0.1;
   end "=";
end Surcharge_Operateurs;
