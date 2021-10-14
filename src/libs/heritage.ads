package Heritage is


   -- tagged est obligatoire si on veut ajouter de nouveaux atributs � nos vehicules
   -- tagged sert � faire de la POO o� il est courant d'ajouter de nouveaux attributs aux sous classes.
   -- il n'y � pas de tagged pour les degres car on ne va jamais ajouter un atribut � une temperature.
   type Vehicle is tagged record
      Places : Integer;
   end record;
   
   --enum
   type Roue_Mark is (Mark_Roue_A, Mark_Roue_B);
   type Aile_Mark is (Mark_Aile_A, Mark_Aile_B);

   type Voiture is new Vehicle with record
      Roue : Roue_Mark;
   end record;

   type Avion is new Vehicle with record
      Aile : Aile_Mark;
   end record;

   -- Classe fille sans nouveau attribut
   type Voiture_Rouge is new Voiture with null record;
   
   --Classe m�re sans attribut
   type Class_Sans_Membre is tagged null record;
   
   -- < HERITAGE

end Heritage;
