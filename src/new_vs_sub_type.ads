package New_Vs_Sub_Type is

   type Dollar is new Integer;
   type Euro is new Integer;

   subtype Spectateurs_In_Salle_1 is Integer range 1 .. 100;
   subtype Spectateurs_In_Salle_2 is Integer range 1 .. 200;

end New_Vs_Sub_Type;
