with Test;       use Test;
with Conditions; use Conditions;

package body Test_Conditions is

   procedure Test_All is
   begin
      Test_And_Detect_Fail
        ( Identifier => "test Test_Conditions if",
         Equality =>
           Le_Nombre_Est_Il_Pair (8) and not Le_Nombre_Est_Il_Pair (13));

      Test_And_Detect_Fail
        (Identifier => "test Test_Conditions if conci",
         Equality =>
           Le_Nombre_Est_Il_Pair_Conci (8) and
           not Le_Nombre_Est_Il_Pair_Conci (13));

      Test_And_Detect_Fail
        (Identifier => "test Test_Conditions else if",
         Equality =>
           Le_Nombre_Est_Il_Pair_Ou_Multiple_De_Cinq (22) and
           Le_Nombre_Est_Il_Pair_Ou_Multiple_De_Cinq (105) and
           not Le_Nombre_Est_Il_Pair_Ou_Multiple_De_Cinq (13));

      Test_And_Detect_Fail
        (Identifier => "test Test_Conditions case",
         Equality =>
           Le_Nombre_Est_Il_Egal_A_Deux_Trois_Cinq_Sept (5) and
           not Le_Nombre_Est_Il_Egal_A_Deux_Trois_Cinq_Sept (14));

   end Test_All;

end Test_Conditions;
