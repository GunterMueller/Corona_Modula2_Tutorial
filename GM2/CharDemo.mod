MODULE CharDemo;

FROM Terminal2 IMPORT WriteLn, WriteChar, WriteString;

VAR Char1, Char2, Dog3, Cat4 : CHAR;
    Index                    : INTEGER;

BEGIN

   Char1 := 'A';                  (* This is a capitol A      *)
   Char2 := "T";                  (* This is a capitol T      *)
   Index := ORD(Char1) + 2;       (* The numerical value of A
                                     plus 2 = the value of C  *)
   Dog3 := CHR(Index);            (* The letter C             *)
   Cat4 := '"';                   (* The quotation mark       *)

   WriteString("The characters can spell ");
   WriteChar(Cat4);
   WriteChar(Dog3);
   WriteChar(Char1);
   WriteChar(Char2);
   Char1 := "S";                  (* Change to the letter S   *)
   WriteChar(Char1);
   WriteChar(Cat4);
   WriteLn;

   Char1 := 65C;                    (* This sets Char1 to 'A' *)
   Char1 := 'a';                    (* This sets Char1 to 'a' *)
   Char2 := CAP(Char1);             (* This sets Char2 to 'A' *)

END CharDemo.
