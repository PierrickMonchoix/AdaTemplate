
   with Test;    use Test;
with Polymorphisme_De_Types; use Polymorphisme_De_Types;

package body Test_Polymorphisme_De_Types is

   procedure Test_All (All_Tests_Passed : in out Boolean) is
   Bulletin_Lycee : T_Bulletin_Lycee;
   begin
      Bulletin_Lycee.francais := 10.5;
      Bulletin_Lycee.math := 10.5;
      Bulletin_Lycee.sport := 10.5;
      Bulletin_Lycee.lv1 := 10.5;
      Bulletin_Lycee.bio := 10.5;
      Bulletin_Lycee.lv2 := 10.5;
      Bulletin_Lycee.chimie := 10.5;
      
      Test_And_Detect_Fail(B          => All_Tests_Passed,
                           Identifier => "Test_Polymorphisme_De_Types passgage bac",
                           Equality   => Passage_Du_Bac(Bulletin => Bulletin_Lycee));
      end Test_All;

end Test_Polymorphisme_De_Types;
