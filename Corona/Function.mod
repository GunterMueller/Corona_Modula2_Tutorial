MODULE Function;

FROM Terminal2 IMPORT WriteString, WriteInt, WriteLn;

PROCEDURE QuadOfSum(Number1, Number2 : INTEGER) : INTEGER;
BEGIN
   RETURN(4*(Number1 + Number2));
END QuadOfSum;

VAR Dogs, Cats, Feet : INTEGER;

BEGIN  (* Main program *)
   Dogs := 4;
   Cats := 3;
   Feet := QuadOfSum(Dogs,Cats);
   WriteString("There are a total of");
   WriteInt(Feet,3);
   WriteString(" paws.");
   WriteLn;
END Function.
