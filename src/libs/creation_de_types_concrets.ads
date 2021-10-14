package Creation_De_Types_Concrets is

   -- > NEW TYPE

   -- degres est un new type car les sous types de degres peuvent etre incompatibles (innaditionnables globalmenet)
   type Degres is new Float;

   -- les deux new types de Degres sont biens incompatibles
   type Degres_Celcius is new Degres;
   type Degres_Fahrenheit is new Degres;
   
   -- < NEW TYPE
   
   -- > SUBTYPE

   -- les deux sous types de Degres_Celcius sont compatibles,
   -- on peut calculer un ecart de temperatures par exemple
   subtype Plage_Degres_Celcius_Nice is Degres_Celcius range 15.0 .. 35.0;
   subtype Place_Degres_Celcius_Lille is Degres_Celcius range 0.0 .. 12.0;

   -- < SUBTYPE
   
   -- > ENUMERATION
   type Jour_Semaine is (Lundi, Mardi, Mercredi, Jeudi, Vendredi, Samedi, Dimanche);
   
   -- < ENUMERATION



end Creation_De_Types_Concrets;
