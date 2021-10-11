package Types_Hierarchy is

   -- degres est un new type car les sous types de degres peuvent etre incompatibles (innaditionnables globalmenet)
   type Degres is new Float;

   -- les deux new types de Degres sont biens incompatibles
   type Degres_Celcius is new Degres;
   type Degres_Fahrenheit is new Degres;

   -- les deux sous types de Degres_Celcius sont compatibles,
   -- on peut calculer un ecart de temperatures par exemple
   subtype Plage_Degres_Celcius_Nice is Degres_Celcius range 15.0 .. 35.0;
   subtype Place_Degres_Celcius_Lille is Degres_Celcius range 0.0 .. 12.0;
   
   -- enumeration
   type Roue_Mark is (Mark_Roue_A, Mark_Roue_B);
   type Aile_Mark is (Mark_Aile_A, Mark_Aile_B);

   -- tagged est obligatoire si on veut ajouter de nouveaux atributs à nos vehicules
   -- tagged sert à faire de la POO où il est courant d'ajouter de nouveaux attributs aux sous classes.
   -- il n'y à pas de tagged pour les degres car on ne va jamais ajouter un atribut à une temperature.
   type Vehicle is tagged 
   record
      Places : Integer;
   end record;

   type Voiture is new Vehicle with record
      Roue : Roue_Mark;
   end record;
   

end Types_Hierarchy;
