DEFINITION MODULE BitOps;

(*          Copyright (c) 1987 - Coronado Enterprises              *)

(* EXPORT QUALIFIED LogicalAND,      (* Note;                         *)
                 LogicalOR,       (*   All of these operations are *)
                 LogicalXOR,      (*   performed in a bitwise man- *)
                 LogicalNOT;      (*   ner with no carry to higher *)
                                  (*   level bits.                 *) *)

PROCEDURE LogicalAND(In1, In2 : CARDINAL) : CARDINAL;
                    (* This procedure obtains the logical AND of   *)
                    (* the arguments and returns the value.        *)

PROCEDURE LogicalOR(In1, In2 : CARDINAL) : CARDINAL;
                    (* This procedure obtains the logical OR of    *)
                    (* the arguments and returns the value.        *)

PROCEDURE LogicalXOR(In1, In2 : CARDINAL) : CARDINAL;
                    (* This procedure obtains the logical XOR of   *)
                    (* the argiments and returns the value.        *)

PROCEDURE LogicalNOT(In1 : CARDINAL) : CARDINAL;
                    (* This procedure returns the bitwise comple-  *)
                    (* ment of the argument.                       *)

END BitOps.


