MODULE Proced4;

FROM InOut IMPORT WriteString, WriteCard, WriteLn;

VAR Count : CARDINAL;
    Other : CARDINAL;

PROCEDURE PrintSomeData;
VAR Count : CARDINAL;
    Apple : CARDINAL;
BEGIN
   Count := 7;   (* This is the variable Count defined
                    locally in this procedure *)
   Other := 12;
   Apple := 32;
   WriteString("In PrintSomeData the variables are");
   WriteCard(Count,5);
   WriteCard(Other,5);
   WriteCard(Apple,5);
   WriteLn;
END PrintSomeData;

PROCEDURE Main; (* Main program *)
VAR Index : CARDINAL;
BEGIN
   FOR Index := 1 TO 3 DO
      Count := Index;
      Other := Index;
         WriteString("In Main Program the variables are ");
         WriteCard(Index,5);
         WriteCard(Count,5);
         WriteCard(Other,5);
         WriteLn;
      PrintSomeData;
         WriteString("In Main Program the variables are ");
         WriteCard(Index,5);
         WriteCard(Count,5);
         WriteCard(Other,5);
         WriteLn;
      WriteLn;
   END;  (* of FOR loop *)
END Main;

BEGIN
   Main;
END Proced4.
