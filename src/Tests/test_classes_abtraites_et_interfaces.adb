with Classes_Abstraites_Et_Interfaces; use Classes_Abstraites_Et_Interfaces;
with Test;                             use Test;

package body Test_Classes_Abtraites_Et_Interfaces is

   procedure Test_All (All_Tests_Passed : in out Boolean) is

      Leonard              : Humain;
      Presentation_Leonard : String_For_Presentation;

   begin

      Initialize_Humain (Leonard, "LEO");
      Presentation_Leonard := Se_Presenter (Leonard);

      Test_And_Detect_Fail
        (All_Tests_Passed, "Interface Work",
         Presentation_Leonard = "Je suis LEO");

   end Test_All;

end Test_Classes_Abtraites_Et_Interfaces;
