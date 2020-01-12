                                         (* Chapter 8 - Program 1 *)
MODULE SimplOut;

FROM InOut IMPORT WriteString, WriteLn;         (* unqualified *)
IMPORT InOut;         (* This imports every procedure in InOut *)

VAR Index : CARDINAL;

BEGIN
   WriteString("This is from InOut, ");
   InOut.WriteString("and so is this.");
   InOut.WriteLn;

   InOut.WriteString("This is from InOut, ");
   InOut.WriteString('and so is this.');
   WriteLn;

   FOR Index := 1 TO 10 DO
      InOut.WriteCard(Index,5);
   END;
   InOut.WriteLn;
END SimplOut.
