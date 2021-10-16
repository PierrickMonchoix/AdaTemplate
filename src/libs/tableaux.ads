with Ada.Strings.Unbounded ; use Ada.Strings.Unbounded;

-- TABLEAUX A 1D
-- TABLEAUX A 2D
-- TABLEAUX NON CONTRAINTS

package Tableaux is  -- Tableaux a 1D et 2D (ou nD)
   
   -- > TABLEAUX A 1D

   TailleMax : constant Natural := 5;
   type T_Tableau is
     array (0 .. TailleMax) of Integer; -- TailleMax doit etre constant
   -- le premier index d'un tableau sera donc 0 (on aurai pu mettre 5 meme si ca n'a pas trop de sens ici)
   -- Cette pratique n'est pas possible en C ou l'index de base est tjr 0

   Tableau_Exemple : T_Tableau;

   procedure Remplir_Tableau_Classique (Tableau : out T_Tableau);

   procedure Remplir_Tableau_Avec_Les_Predicats (Tableau : out T_Tableau);

   procedure Affecter_Valeurs_Par_Un_For (Tableau : out T_Tableau);

   procedure For_Each_Example (Tableau : out T_Tableau);

   --  ATTRIBUTS DU TYPE TABLEAU 1D:
--
--  Soit un tableau:
--
--  n°0  54
--  n°1  98
--  n°2  453
--  n°3  45
--  n°4  32
--

--
--  T'range  0..4
--  T'first  0
--  T(T'first)  54
--  T'last  4
--  T(T'last)  32
--  T'length  5

   -- < TABLEAUX A 1D

   -- > TABLEAUX A 2D

   type T_Tableau_2D is
     array (1 .. 4, 1 .. 6) of Natural;  --fonctionne pour nD

   --  ATTRIBUTS DU TYPE TABLEAU A DEUX DIMENTIONS:
--
--     soit type T_Tableau3D is array(1..2,1..4,1..3) of natural ;
--
--  Attributs: (il faut ici preciser la dimention de laquelle on parle entre ()

--  T'range(1)  1..2
--  T'range(2)  1..4
--  T'range(3)  1..3
--  T'first(1)  1
--  T'first(2)  1
--  T'first(3)  1
--  T'last(1)  2
--  T'last(2)  4
--  T'last(3)   3
--  T'length(1)  2
--  T'length(2)  4
--  T'length(3)  3

   -- < TABLEAUX A 2D

   -- > TABLEAUX NON CONTRAINTS

   type T_Tableau_Non_Constraint is array (Integer range <>) of Natural;

   Tableau_Non_Constraint_Exemple : T_Tableau_Non_Constraint
     (1 .. 8); --on est obligé de le contraindre
   
   -- astuce: pour declarrer un tableau dans un begin, utiliser "declare":
   --  begin
   --  Put("Quelle est la longueur du tableau ? ") ;
   --  get(n); skip_line ;
   --  
   --  declare
   --     tab : T_Tableau(1..n) ;
   --  begin
   
   -- < TABLEAUX NON CONTRAINTS
   


end Tableaux;
