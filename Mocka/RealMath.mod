MODULE RealMath;

FROM InOut       IMPORT   WriteString, WriteLn;
FROM InOut 	 IMPORT   WriteReal;
FROM MathLib    IMPORT   sin, cos;

VAR Sum, Diff, Product, Div : REAL;
    A, B    : REAL;
    Inumber : INTEGER;
    Cnumber : CARDINAL;

BEGIN
   A   := 3.234;                    (* Assigns a value          *)
   B   := A + 1.0123;               (* Add a constant           *)
   Sum := A + B;                    (* Add two variables        *)
   Product := A * B;                (* Multiplication           *)
   Div  := A / B;                   (* Division                 *)
   Diff := A - B;                   (* Subtraction              *)
   A := (A + B)/(12.345 * A - B);   (* Multiple math expression *)
   B := sin (A) * cos (B);

   WriteString("The REAL values are");
   WriteReal(Sum,12,8);
   WriteString("  ");
   WriteReal(Diff,12,8);
   WriteString("  ");
   WriteReal(Product,12,8);
   WriteString("  ");
   WriteReal(Div,12,8);
   WriteLn;

         (* Conversion between data types - illustration  *)

   Inumber := 15;          (* This is an INTEGER              *)
   Cnumber := 333;         (* This is a CARDINAL              *)
   A := FLOAT(CARDINAL(Inumber));    (* INTEGER to REAL                 *)
   B := FLOAT(Cnumber);    (* CARDINAL to REAL                *)
   Inumber := TRUNC(Sum);  (* REAL to INTEGER                 *)
   Cnumber := TRUNC(Sum);  (* REAL to CARDINAL                *)

   A := MIN(REAL);   (* This produces the smallest REAL *)
   A := MAX(REAL);   (* This produces the largest REAL  *)

END RealMath.
