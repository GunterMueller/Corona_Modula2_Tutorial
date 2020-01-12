MODULE StringEx;

FROM Terminal2   IMPORT WriteString, WriteInt, WriteLn;
FROM Strings IMPORT Assign, Concat;

TYPE SevenChar = ARRAY[0..6] OF CHAR;

VAR Horse : ARRAY[0..12] OF CHAR;
    Cow   : ARRAY[0..5] OF CHAR;
    S1    : SevenChar;
    S2    : SevenChar;

(* ******************************************************* Display *)
PROCEDURE Display(Stuff : ARRAY OF CHAR);
VAR Index : CARDINAL;
BEGIN
   WriteString("Array(");
   WriteString(Stuff);
   WriteString(") - ");
   FOR Index := 0 TO HIGH(Stuff) DO
      WriteInt(ORD(Stuff[Index]),4);
   END;
   WriteLn;
END Display;

(* ************************************************** main program *)
BEGIN
   Horse := "ABCDEFGHIJKL";           (* Copy constant to variable *)
   Display(Horse);

   Cow := "12345";
   Assign(Cow,Horse);               (* Assign variable to variable *)
   Display(Horse);

   S1 := "Neat";
   S2 := "Things";
   Concat(S1,S2,Horse);       (* Concatenate variables to variable *)
   Display(Horse);
   S1 := S2;                        (* Assign variable to variable *)

   Concat(Horse,Cow,Horse); (* Concatenate one variable to another *)
   Display(Horse);

   Concat(Cow,Horse,Horse);        (* Concatenate to the beginning *)
   Display(Horse);
END StringEx.
