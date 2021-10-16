package Surcharge_Operateurs is

   type Sirop_Grenadine is record
      Volume        : Float := 0.0;
      Concentration : Float := 0.0;
   end record;

   function "+" (Sirop_Gauche : Sirop_Grenadine ; Sirop_Droite : Sirop_Grenadine) return Sirop_Grenadine;
   
   function "=" (Sirop_Gauche : Sirop_Grenadine ; Sirop_Droite : Sirop_Grenadine) return Boolean;
   
end Surcharge_Operateurs;
