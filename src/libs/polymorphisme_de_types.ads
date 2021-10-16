package Polymorphisme_De_Types is

   type T_Classe is (PRIMAIRE, COLLEGE, LYCEE);

   type T_Eleve is record
      nom    : String (1 .. 20);         --20 caractères devraient suffire
      prenom : String (1 .. 20);      --on complètera au besoin par des espaces
      classe : T_Classe;           --Tout l'intérêt d'écrire un T devant le nom de notre type ! ! !
   end record;

   type T_Bulletin (classe : T_Classe := PRIMAIRE) is record -- par defaut : primaire
      --PARTIE FIXE

      francais, math, sport : Float;    --ou float range 0.0..20.0 ;

      --PARTIE VARIABLE : COLLEGE ET LYCEE

      case classe is
         when PRIMAIRE =>
            null;
         when COLLEGE | LYCEE =>
            lv1, bio : Float;

            --PARTIE SPECIFIQUE AU LYCEE

            case classe is
               when LYCEE =>
                  chimie, lv2 : Float;
               when others =>
                  null;
            end case;
      end case;
   end record;
   
   type T_Bulletin_Lycee is new T_Bulletin(LYCEE) ;  
   function Passage_Du_Bac( Bulletin : T_Bulletin_Lycee ) return Boolean;  --TODO: implémentation et tests
   
   procedure Mutation_De_Type;

end Polymorphisme_De_Types;
