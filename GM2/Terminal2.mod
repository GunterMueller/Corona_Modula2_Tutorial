IMPLEMENTATION MODULE Terminal2;

(* Implementation of Terminal2 using ISO modules
   Frank Schoonjans - January 2003                  *)

IMPORT STextIO,IOChan,StdChans,IOConsts,SWholeIO;
IMPORT RealStr,Strings,ConvTypes;

PROCEDURE ReadChar(VAR v : CHAR);
BEGIN
    Done:=TRUE;
    STextIO.ReadChar(v); STextIO.SkipLine;
END ReadChar;

PROCEDURE ReadString(VAR v: ARRAY OF CHAR);
BEGIN
    Done:=TRUE;
    STextIO.ReadString(v); STextIO.SkipLine;
END ReadString;

PROCEDURE ReadCard(VAR v: CARDINAL);
BEGIN
    Done:=TRUE;
    SWholeIO.ReadCard(v); STextIO.SkipLine;
    IF IOChan.ReadResult(StdChans.StdInChan())#IOConsts.allRight
    THEN
      v:=0;
      Done:=FALSE;
    END;
END ReadCard;

PROCEDURE ReadInt(VAR v: INTEGER);
BEGIN
    SWholeIO.ReadInt(v); STextIO.SkipLine;
    IF IOChan.ReadResult(StdChans.StdInChan())#IOConsts.allRight
    THEN
      v:=0;
      Done:=FALSE;
    END;
END ReadInt;

PROCEDURE ReadReal(VAR r: REAL);
VAR str : ARRAY [0..80] OF CHAR;
    res : RealStr.ConvResults;
BEGIN
    ReadString(str);
    RealStr.StrToReal(str,r,res);
    Done := res=ConvTypes.strAllRight;
    IF ~Done THEN r:=0.0 END;
END ReadReal;

PROCEDURE WriteChar(v: CHAR);
BEGIN
    STextIO.WriteChar(v);
END WriteChar;

PROCEDURE WriteLn;
BEGIN
    STextIO.WriteLn;
END WriteLn;

PROCEDURE WriteString(v: ARRAY OF CHAR);
BEGIN
    STextIO.WriteString(v);
END WriteString;

PROCEDURE WriteCard(v: CARDINAL; w: CARDINAL);
BEGIN
    SWholeIO.WriteCard(v,w);
END WriteCard;

PROCEDURE WriteInt(v: INTEGER;  w: CARDINAL);
BEGIN
    SWholeIO.WriteInt(v,w);
END WriteInt;

PROCEDURE WriteOctOrHex(v: CARDINAL; w: CARDINAL; oh : CARDINAL);
CONST MAXCHARS=80;
CONST OHstr = "0123456789ABCDEF";
VAR str : ARRAY [0..MAXCHARS] OF CHAR;
    i,j : CARDINAL;
BEGIN
    Done:=TRUE;
    i:=0;
    REPEAT
      str[i]:=OHstr[v MOD oh];
      v:=v DIV oh;
      INC(i);
    UNTIL (v=0) OR (i>MAXCHARS);
    IF (v#0) AND (i>MAXCHARS) THEN
      Done:=FALSE;
      RETURN
    END;
    IF (w>0) AND (i<w) THEN
      FOR j:=1 TO w-i DO
        WriteChar(" ");
      END;
    END;
    FOR j:=i-1 TO 0 BY -1 DO
      WriteChar(str[j])
    END;
END WriteOctOrHex;

PROCEDURE WriteOct(v: CARDINAL; w: CARDINAL);
BEGIN
    WriteOctOrHex(v,w,8);
END WriteOct;

PROCEDURE WriteHex(v: CARDINAL; w: CARDINAL);
BEGIN
    WriteOctOrHex(v,w,16);
END WriteHex;

PROCEDURE WriteReal(r: REAL; w: CARDINAL);
VAR str : ARRAY [0..15] OF CHAR;
    len : CARDINAL;
BEGIN
    RealStr.RealToStr(r,str);
    len:=Strings.Length(str);
    WHILE (len>0) AND (str[len-1]="0") DO
      DEC(len)
    END;
    str[len-1]:=00C;
    WHILE len<w DO
      Strings.Concat(" ",str,str);
      INC(len);
    END;
    WriteString(str);
    Done:=TRUE;
END WriteReal;

PROCEDURE Wait;
BEGIN
    STextIO.SkipLine;
END Wait;

BEGIN
    Done:=TRUE;
FINALLY
    Wait;
END Terminal2.
