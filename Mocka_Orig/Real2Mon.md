DEFINITION MODULE Real2Mon;

(*          Copyright (c) 1987 - Coronado Enterprises            *)

(* EXPORT QUALIFIED WriteReal;

(* This procedure allows writing to the monitor in a fully       *)
(* formatted manner (i.e. XXXXXX.XXX) instead of the scientific  *)
(* notation which is available in the Logitech library.          *) *)

PROCEDURE WriteReal(DataOut  : REAL;
                    FieldSize : CARDINAL;
                    Digits    : CARDINAL);
          (* Writes a REAL to the monitor with "FieldSize" total *)
          (* columns and "Digits" significant places after the   *)
          (* decimal point.                                      *)

END Real2Mon.

