package Ihneritance is

   type Roue_Mark is (Mark_Roue_A, Mark_Roue_B);
   type Aile_Mark is (Mark_Aile_A, Mark_Aile_B);

   type Vehicle is tagged --tagged is mandatory if we want to add a Roue_Mark to Voiture type
   record
      Places : Integer;
   end record;

   type Voiture is new Vehicle with record
      Roue : Roue_Mark;
   end record;
   
   
   type Distance is new Float; -- not tagged car une ditance n'aura pas d'autres membres, c'est sur
   
   type Miles is new Distance;
   type Meters is new Distance;

end Ihneritance;
