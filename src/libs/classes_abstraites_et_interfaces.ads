package Classes_Abstraites_Et_Interfaces is

   -- > CLASSE NON ABSTRAITE

   -- Table est une classe non abstraite
   -- car une table concrete:
   -- elle peut donc être construite et utilisée
   -- (on sait comment elle est constituée et comment elle doit être utilisée etc.)
   type Table is tagged null record;

   -- < CLASSE NON ABSTRAITE

   -- > CLASSE ABSTRAITE

   -- Etre_Vicant est une classe abstraite
   -- car un etre vivant n'est pas un être concret
   -- et ne peut donc pas être construit et utilisé
   -- (on ne sait pas comment il est constitué
   -- et commment il se déplace etc.)
   type Etre_Vivant is abstract tagged null record;
   --

   -- < CLASSE ABSTRAITE

   -- > INTERFACE

   -- Interface car un Dessinable à l'unique devoir
   -- de remplir une fonctionnalité: Se_Presenter ici
   type Presentable is interface;
   
   subtype String_For_Nom is String (1..3);
   subtype String_For_Presentation is String (1..11);

   -- Une procedure/fonction abstraite
   -- dont un paramétre est un interface
   -- est considéré comme une méthode de l'interface
   -- (que les implémenteurs devront implémenter)
   function Se_Presenter (Self : Presentable) return String_For_Presentation is abstract;

   -- < INTERFACE

   type Humain is new Etre_Vivant and Presentable with record
      Nom: String_For_Nom;
   end record;
   
   procedure Initialize_Humain(Self : in out Humain ; Nom : String_For_Nom);

   function Se_Presenter (Self : Humain) return String_For_Presentation ;

end Classes_Abstraites_Et_Interfaces;
