         HTMLDEF SAMPSI.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/sampsi.htm -->
<!-- -->
<title>HLASM - Collection of assembler macros for large numbers
</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<link rev="HLASM sample programs" href="samples.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe, Macro, Examples" />
<meta http-equiv="description"
      content="Examples of macro source code for mainframe
      assembler." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF SAMPSI.UKT
<!-- UK -->
<h1 align="center">Macros for handling large numbers</h1>

<p class="copy" align="center">
 &copy; Copyright Sergio ovacchini, 1982-1983. All rights reserved.
</p>

<h2>Short macro descriptions.</h2>

<p>This set of macros was created for manipulating large numbers.</p>

<p class="remark">
 Remark1:<br />
 (IM) Means Internal Macro, Not intended for use in a program.<br />
 ... (omissis) ... indicates that I have NOT analyzed macro, so
 I described only its use.</p>

<p class="remark">
 Remark2:<br />
 This page contains small code samples, which do not format correctly.
 These code snippets will be moved to the relevant macro details page
 in due time.</p>

<h3>$</h3>
<p>Used for LABELS; they are used separated from their operaration
 field to
 permit UPDATE to insert lines without change line number</p>

<h3>$$DSGEN</h3>
<p>(IM) Used by $DCL macro to generate variable declarations<br />
 Usage: $$DSGEN &amp;TYPE,LMOD=</p>
<dl compact="compact">
 <dt>&amp;TYPE</dt>
 <dd>a type of variables: F, D, C etc...</dd>
 <dt>LMOD</dt>
 <dd>a parameter for length modifier, has values:
  <ul compact="compact">
   <li>NO: if is present length modif. no DS instr. is generated</li>
   <li>YES: if length modif., the DS is generated</li>
   <li>ONLY: only if length modif. is present, the DS is generated
   </li>
  </ul>
 </dd>
</dl>
<p>Example:</p>
<pre>
         $$DSGEN (D,L),LMOD=ONLY
</pre>
<p>Expl.: Declatives are generated for variables of type "D" and "L"
 only if is present length modifier.</p>

<h3>$$GETREL</h3>
<p>(IM) Used to obtain an already set Condition Code.<br />
 (NOT COMPLETED)</p>

<h3>$$REG#</h3>
<p>(IM) To return a numerical value indicating if a symbolic name
 &amp;OPERAND is a register, type of reg., etc...<br />
 Usage:</p>
<pre>
         $$REG# &amp;OPERAND
</pre>
<p>The variable &amp;$REG# is set:<br />
 -1 &amp;OPERAND isn't a register,<br />
 0 15 num. of a general register<br />
 -16 -22 Float 0 to 6<br />
 -256 -271 Control registers 0 to 15</p>

<h3>$@#</h3>
<p>Used to assign to a even-odd reg.'s pair the adress (@) and a
 length
 (#) of an operand<br />
 Usage:</p>
<pre>
         $@# &amp;REG,&amp;OP
</pre>

<h3>$A</h3>
<p>Add (with carry) &amp;OPERAND to &amp;RESULT, &amp;CARRY contains
 Carry from additions. Used in loops to repeatedly add pieces
 (words) of numbers<br />
 Usage:</p>
<pre>
         $A    &amp;RESULT,&amp;OPERAND,&amp;CARRY
</pre>

<h3>$ACR</h3>
<p>Add Carry register, used to add carry from prec.
 oper. to the result, obtaining (in &amp;carry) a new carry.<br />
 Usage:</p>
<pre>
         $ACR  &amp;RESULT,&amp;CARRY
</pre>

<h3>$ACST</h3>
<p>Add Complement and STore  (in a loop, with carry)<br />
 Add &amp;REG to the contents of a word at the end of a string
 representing
 the number &amp;OPERAND, complement it, and if a register (&amp;CR),
 used
 as control, isn't negative, store value.<br />
 See $CHSR for details. Used in MULTIPLY operation.<br />
 Usage:</p>
<pre>
         $ACST &amp;REG,&amp;OPERAND,&amp;CARRY,&amp;WORK=WRKADR,
 &amp;CR=,&amp;RS=,&amp;SV=
</pre>

<h3>$AP</h3>
<p>Add  Packed (with carry) as $A, for packed numbers.<br />
 Usage:</p>
<pre>
         $AP   &amp;RESULT,&amp;OPERAND,&amp;CARRY
</pre>

<h3>$APC</h3>
<p>Add  Packed  Carry. Has the same use as $ACR, but for Packed
 numbers.<br />
 Usage:</p>
<pre>
         $APC &amp;RESULT,&amp;CARRY
</pre>

<h3>$APNT</h3>
<p>Advance PoiNTer (in loop). Used to modify address and Length of
 an
 &amp;OPERAND. A work register is used to set the length of a treated
 piece.<br />
 Usage:</p>
<pre>
         $APNT &amp;OPERAND,&amp;WORK=WRKADR
</pre>

<h3>$AR</h3>
<p>Add Register (with carry). See $A.</p>

<h3>$ARGS</h3>
<p>Used to define Procedure PARAMETERS.<br />
 Usage:</p>
<pre>
         $ARGS &amp;OPRNDS,&amp;PARMPTR=PARMPTR
</pre>
<dl compact="compact">
 <dt>&amp;OPRNDS</dt>
 <dd>a variables list whose addressing instructions are to be
  generating.</dd>
 <dt>PARMPTR</dt>
 <dd>a gen register to be used as pointer of a list of addresses.
</dd>
</dl>
<p>Es.:</p>
<pre>
*       parm. definition
         $ARGS (VAR1,VAR2,VAR3,VARN),PARMPTR=R1
*
         $USE  VAR1,R2   R2 is used to address VAR1
         .....
         MVC   WORK(8),VAR2  N.B. No len. info of VAR1 ..
*           was passed.
</pre>

<h3>$AST</h3>
<p>Add and STore Nooverflow (with carry, in a loop). Add data
 contained in
 &amp;REG to the contents of a word at the end of a string
 representing the
 number &amp;OPERAND. No Overflow occurs.<br />
 Usage:</p>
<pre>
         $AST  &amp;REG,&amp;OPERAND,&amp;CARRY,&amp;WORK=WRKADR
</pre>
<dl compact="compact">
 <dt>&amp;REG</dt>
 <dd>the register to be added</dd>
 <dt>&amp;OPERAND</dt>
 <dd>the name of the string in which is stored the number</dd>
 <dt>&amp;CARRY</dt>
 <dd>a register used to contain carry from add.</dd>
 <dt>WORK= ...</dt>
 <dd>indicate a register to be used as work.</dd>
</dl>

<h3>$ASTN</h3>
<p>Same as $AST, but no test if performed for overflow.</p>

<h3>$BSF</h3>
<p>Binary Shortest Form. Is used to reduce a number to its shortest
 form;
 trunc. is done on byte basis.<br />
 Usage:</p>
<pre>
         $BSF  &amp;OPERAND,&amp;WORK=(WRKLNK,WRKADR)
</pre>
<dl compact="compact">
 <dt>&amp;OPERAND</dt>
 <dd>the string containing the number</dd>
 <dt>WORK=</dt>
 <dd>specifies 2 reg. used as work.</dd>
</dl>
<p>On return Condition Code:<br />
  CC = 0: length is 1 byte; the value of the number is 0 or -1.<br />
  CC = 1: number is negative<br />
  CC = 2: number is positive</p>

<h3>$BSFP</h3>
<p>Binary Shortest Form (positvive numbers). Is a simplified version
 of
 $BSF<br />
 Usage:</p>
<pre>
        $BSFP &amp;OPERAND,&amp;WORK=WRKADR
</pre>

<h3>$CALL</h3>
<p>Call a program. The code produced by this macro is ADCON-FREE,
 (the machine code may be moved across memory). Standard OS LINK is
 generated. may be used also for recursive call. Coherence is checked.
 Limits: 256 max routine addresses, 256*16 parameter addresses in the
 same
 Assembler session.<br />
 Usage:</p>
<pre>
         $CALL &amp;ENTRY,&amp;OPRNDS,&amp;OP1=,&amp;OP2=,&amp;RES=,
 &amp;RES1=,&amp;RES2=,         *
               &amp;R0=,&amp;R1=,&amp;R2=,&amp;R3=,&amp;ID=,&amp;
 WKAPTR=WKAPTR,                *
               &amp;PARMPTR=R1,&amp;LINK=(WRKLNK,WRKADR),&amp;
 STATIC=NO
</pre>
<dl compact="compact">
 <dt>&amp;ENTRY</dt>
 <dd>the routine name to be called, if it is like: @xxxxxx, then
  is assumed that this operand contains the routine address; if it is
  written
  as (xxxxxxx), then is assumed to be a register containing the
  address.</dd>
 <dt>&amp;OPRNDS</dt>
 <dd>the parameter list in the form: (p1,p2,p3,,p5,....pn)</dd>
 <dt>&amp;OP1=,&amp;OP2=,&amp;RES=,&amp;RES1=,&amp;RES2=</dt>
 <dd>used to call quickly mathematic function, using registers.
  For &amp;OP1 are used R4 (address) and R5 (length),
  for &amp;OP2: R6 &amp; R7, for &amp;RES/&amp;RES1: R8 &amp; R9,
  for &amp;RES2: R10 &amp; R11. &amp;R0,&amp;R1,&amp;R2,&amp;R3
  are used to assign values to these registers.</dd>
 <dt>&amp;ID</dt>
 <dd>the identifier and is used as in OS.</dd>
 <dt>WKAPTR</dt>
 <dd>indicates the pointer to be used for WORK/STACK area; if "NONE"
  is
  specified, no address is passed and neither code for recursivity is
  generated.</dd>
 <dt>PARMPTR</dt>
 <dd>specifies a pointer for paramter list, if the par. list is
  omitted, no value is assigned to R1 (or oth. reg.).</dd>
 <dt>LINK=(r1,r2)</dt>
 <dd>specifies 2 registers to be used as return address (1. reg)
  and link addr. (2. reg). By default for return adress is used
  WRKLNK
  (R14)
  for routine address WRKADR (R15).</dd>
 <dt>LINK=SVCnnn</dt>
 <dd>indicates the JUMP must be taken by means of the "nnn"
  Supervisor Call instr.. If used in the form: LINK=(SVCnnn,r), then
  "r" is
  the register containing routine address.</dd>
 <dt>STATIC=NO/(YES/SI)</dt>
 <dd>specifies if LA &amp; ST instr. are to be used to generate the
  parameter
  list (STATIC=NO), or constants A(yyyyyy) if STATIC=YES.</dd>
</dl>

<h3>$CC</h3>
<p>Used to set a Condition Code value (0-3).<br />
 Usage:</p>
<pre>
         $CC   &amp;OP
</pre>
<p>&amp;OP is the value of CC to be set.</p>

<h3>$CHS</h3>
<p>CHange Sign (in loop).<br />
 If value of &amp;OPERAND is negative, 2 complement of data in &amp;
 REG is
 done; in the field "FLG0" &amp;OPERAND is indicated "CARRY".<br />
 Usage:</p>
<pre>
         $CHS  &amp;REG,&amp;OPERAND
</pre>

<h3>$CHSR</h3>
<p>CHange Sign control Register (in loop).<br />
 A register (CR=) is used to control a complementation operation.
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $CHSR &amp;REG,&amp;CR=,&amp;SV=NO,&amp;RS=NO
</pre>
<p>... (omissis) ...</p>

<h3>$CHS1</h3>
<p>Another version of $CHSR.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
     $CHS1 &amp;REG,&amp;CR=
</pre>

<h3>$CLR</h3>
<p>Fills an area with binary zeroes.<br />
 Usage:</p>
<pre>
       $CLR  &amp;OPER,&amp;TEST=NO,&amp;WORK=WORK1
</pre>
<dl compact="compact">
 <dt>&amp;OPER</dt>
 <dd>the area to be cleared.</dd>
 <dt>WORK=</dt>
 <dd>specified a work (must be odd) reg..</dd>
 <dt>TEST=NO</dt>
 <dd>indicates: do not test the operand length, it was already done.
 </dd>
</dl>

<h3>$CLRN</h3>
<p>CLeaR  Negative.<br />
 Fill an area with binary ones.<br />
 Usage:</p>
<pre>
         $CLRN &amp;OPERAND,&amp;SAVE=NO,&amp;TEST=NO,&amp;WORK=
(WRKLNK,WRKADR)
</pre>
<dl compact="compact">
 <dt>&amp;OPERAND</dt>
 <dd>the name of the string to be cleared.</dd>
 <dt>SAVE = ADDR/LENGTH/NO</dt>
 <dd>save/restore address, length etc. if other value save/restore all.
 </dd>
</dl>
<p>... (omissis) ...</p>

<h3>$CLRP</h3>
<p>CLeaR  Packed.<br />
 The sign is specified in &amp;SGNR.<br />
 Usage:</p>
<pre>
         $CLRP &amp;OPERAND,&amp;SGNR,&amp;SAVE=NO,&amp;TEST=NO,&amp;
WORK=(WRKLNK,WRKADR)
</pre>
<p>... (omissis) ...</p>

<h3>$DAR</h3>
<p>Divide Absolute Register (with 32.th bit correction).<br />
 Divide &amp;REG0 by &amp;REG1, the result is corrected to
 sign
 bit.<br />
 Usage:</p>
<pre>
         $DAR  &amp;REG0,&amp;REG1,&amp;WORK=(WRKLNK,WRKADR)
</pre>
<p>... (omissis) ...</p>

<h3>$DCL</h3>
<p>Generates DC and DSECT for various macros.<br />
 Usage:</p>
<pre>
         $DCL
</pre>

<h3>$DECR</h3>
<p>DECRement register.<br />
 In &amp;DECR is contained amount of decrement; if omitted, decr.
 = 1.<br />
 Usage:</p>
<pre>
         $DECR &amp;REG,&amp;DECR,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$DEF</h3>
<p>Used to define a DSECT defining a field used by means of address
 and
 length.<br />
 Usage:</p>
<pre>
         $DEF  &amp;OPERAND,&amp;OLDOPR,&amp;NEW,&amp;SAVE=NO
</pre>
<dl compact="compact">
 <dt>&amp;OPERAND</dt>
 <dd>the name for which the DSECT is generated.</dd>
 <dt>&amp;OLDOPR</dt>
 <dd>If specified, same couple of regs is used for &amp;OPERAND.</dd>
 <dt>&amp;NEW</dt>
 <dd>specifies a field never declared.</dd>
 <dt>&amp;SAVE=NO/YES</dt>
 <dd>specifies if must be generated instr. to save registers or not.
 </dd>
</dl>

<h3>$DIIR</h3>
<p>Division; 2 bytes of result are intended as fractional part.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $DIIR &amp;RDIV,&amp;OP
</pre>
<p>... (omissis) ...</p>

<h3>$DPR</h3>
<p>Divide Register; divisor is positive. See $DR.</p>

<h3>$DR</h3>
<p>Divide Register.<br />
 This is used to do division as: ((N-1)*16**8+16**8-1)/N whose
 quotient
 isn't 31 bits in length.<br />
 Usage:</p>
<pre>
         $DPR  &amp;REG0,&amp;REG1,&amp;WORK=(WRKLNK,WRKADR)
</pre>
<p>... (omissis) ...</p>

<h3>$DRIIR</h3>
<p>Another version of $DIIR.<br />
 Usage:</p>
<pre>
         $DRIIR &amp;RDIV,&amp;OPR
</pre>

<h3>$DROP</h3>
<p>Used to generate instr. to save information on a
 variable when discontinuing usage.<br />
 Usage:</p>
<pre>
         $DROP &amp;VARNAME,&amp;SAVE=YES
</pre>
<dl compact="compact">
 <dt>&amp;VARNAME</dt>
 <dd>variable to be dropped, if it is a
  passed parameter, only the "DROP" is generated,
  if it is in a symbol table (es. $DEF)</dd>
 <dt>SAVE=YES</dt>
 <dd>if spedified save instr. for address and length are generated.
 </dd>
</dl>

<h3>$DR1</h3>
<p>Divide Register (with correction for 32.th bit),
 divisor is an even number.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $DR1  &amp;REG0,&amp;REG1,&amp;WORK=(WRKLNK,WRKADR)
</pre>
<p>... (omissis) ...</p>

<h3>$DS</h3>
<p>Used as the DS instrucion, if the variable name was, or
 will be, already generated, no DS instruction is gener.<br />
 Usage:</p>
<pre>
&amp;VARNAME $DS   &amp;TYPE
</pre>

<h3>$ENDPROC</h3>
<p>Used to close a procedure. If no $RETURN is present in
 the current procedure, one is generated. If no $DCL is
 used, one $DCL is performed.<br />
 Usage:</p>
<pre>
         $ENDPROC
</pre>

<h3>$ENTRY</h3>
<p>As $PROC, declares an ENTRY, but isn't possible alter
 options used in $PROC. (see)<br />
 Usage:</p>
<pre>
         $ENTRY &amp;OPRNDS,
+(@76)*
           &amp;OP1=,&amp;OP2=,&amp;RES=,&amp;RES1=,&amp;RES2=,
+(@92)*
           &amp;R0=,&amp;R1=,&amp;R2=,&amp;R3=,TOKENS=,
+(@88)*
           &amp;WKASIZE=,
+(@76)*
           &amp;SAVE=ALL,&amp;ERRSTK=
</pre>
<p>See $PROC.</p>

<h3>$EQU</h3>
<p>As the EQU; add symbol to the symbol table.<br />
 Usage:</p>
<pre>
&amp;SYMBOL  $EQU  &amp;OPERAND
</pre>

<h3>$ES</h3>
<p>Extend Sign (short). Used to extend sign for numbers
 of length &lt;= 256 bytes.<br />
 Usage:</p>
<pre>
         $ES   &amp;OPERAND,&amp;TEST=NO,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$ESGN</h3>
<p>Extract Significant part of a number. Is used also to
 verify if bits are all zeroes or ones.<br />
 Usage:</p>
<pre>
         $ESGN &amp;OPERAND,&amp;TEST=NO,&amp;SAVE=NO,&amp;
 WORK=(WRKLNK,WRKADR),       *
           &amp;RES=(WORK0,WORK1)
</pre>
<p>... (omissis) ...</p>

<h3>$EXTS</h3>
<p>EXTend Sign (long)<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $EXTS &amp;OPERAND,&amp;SAVE=NO,&amp;TEST=NO,&amp;
 WORK=(WRKLNK,WRKADR)
</pre>
<p>... (omissis) ...</p>

<h3>$FAR</h3>
<p>Fast Add Register (with carry)<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $FAR  &amp;RESR,&amp;OPR,&amp;CARRY,&amp;ONE=ONE
</pre>
<p>... (omissis) ...</p>

<h3>$FLSP</h3>
<p>Field  Load Sign Packed; used to transfer sign of a packed number.
<br />
 Usage:</p>
<pre>
         $FLSP &amp;FIELD,&amp;OPERAND,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$FSR</h3>
<p>Fast Subtract Register (with borrow).<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $FSR  &amp;RESULT,&amp;OPERAND,&amp;BORROW,&amp;ONE=ONE
</pre>
<p>... (omissis) ...</p>

<h3>$G30PE</h3>
<p>Get 30 digits Packed from Exponent (in loop).<br />
 Decrement exponent by 30, moves 30 zeroes in number, maintaining
 sign.<br/>
 Usage:</p>
<pre>
         $G30PE &amp;FIELD,&amp;EXP,&amp;WORK=WRKADR
</pre>

<h3>$G9PE</h3>
<p>Get 9 digits Packed from Exponent (in loop).<br />
 ... (omissis) ...<br />
 Usage:<br />
 ... (omissis) ...</p>

<h3>$INCR</h3>
<p>INCRement register. &amp;INCR is added to &amp;REG.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $INCR &amp;REG,&amp;INCR,&amp;WORK=WRKADR,&amp;OPT=
</pre>
<p>... (omissis) ...</p>

<h3>$L</h3>
<p>Load in &amp;REG, data from the end of &amp;OPERAND. Used in
 loops.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $L    &amp;REG,&amp;OPERAND,&amp;WORK=WRKADR,&amp;SET=NO
</pre>
<p>... (omissis) ...</p>

<h3>$LL</h3>
<p>Left Load (in loop).<br />
 Load in &amp;REG data from beginning of a string &amp;OPERAND.<br />
 Usage:</p>
<pre>
         $LL   &amp;REG,&amp;OPERAND
</pre>
<p>... (omissis) ...</p>

<h3>$LL1</h3>
<p>Left Load 1.st (in loop). Used to load 1.st word
 (or less) of a string from left.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $LL1  &amp;REG,&amp;OPERAND,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$LL9P</h3>
<p>Load 9 digits Packed (in loop). Data is loaded from a number in
 packed format &amp;OPERAND and stored in a field (&amp;FIELD).
 Used for conversion from Packed to Binary and vice versa.<br />
 Usage:</p>
<pre>
         $LL9P &amp;FIELD,&amp;OPERAND,&amp;REG,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$LL9PD</h3>
<p>As $LL9P. Exponent is considered.<br />
 Usage:</p>
<pre>
         $LL9PD &amp;FIELD,&amp;OPERAND,&amp;EXP,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$LL9PE</h3>
<p>Variant of $LL9PD.<br />
 Usage:</p>
<pre>
         $LL9PE &amp;FIELD,&amp;OPERAND,&amp;EXP,&amp;WORK=WRKADR,
 &amp;CR=
</pre>
<p>... (omissis) ...</p>

<h3>$LL9PS</h3>
<p>Same as $LL9PD, but first digit is stored in a left (SX) semibyte.
</p>

<h3>$LSP</h3>
<p>Load Sign Packed.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $LSP  &amp;FIELD,&amp;OPERAND,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$LST</h3>
<p>Left STore (in loop). Store data in &amp;REG in words of &amp;
 OPERAND, from left.<br />
 Usage:</p>
<pre>
         $LST  &amp;REG,&amp;OPERAND,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$LST1</h3>
<p>Left STore  1.st (in loop). Store &amp;REG, or part, in
 &amp;OPERAND, beginning from left.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $LST1 &amp;REG,&amp;OPERAND,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$LT</h3>
<p>Load  &amp; Test (in loop). Load in &amp;REG data from the
 end of &amp;OPERAND, set Condition code.<br />
 Usage:</p>
<pre>
         $LT   &amp;REG,&amp;OPERAND,&amp;WORK=WRKADR,&amp;SET=NO
</pre>
<p>... (omissis) ...</p>

<h3>$LTL</h3>
<p>Load data from the end of &amp;OPERAND and Test Length.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $LTL  &amp;REG,&amp;OPERAND,&amp;WORK=WRKADR,&amp;SET=NO
</pre>
<p>... (omissis) ...</p>

<h3>$LTLMR</h3>
<p>Left Test Length and Multiply Register.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $LTLMR &amp;REG0,&amp;REG1,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$L1L9P</h3>
<p>Load 9 digits Packed (in loop).<br />
 ... (omissis) ...<br />
 Used to convert from packed to binary and vice versa.<br />
 Usage:</p>
<pre>
         $L1L9P &amp;FIELD,&amp;OPERAND,&amp;REG,&amp;WORK=(WRKLNK,
 WRKADR),&amp;CC=NO
</pre>
<p>... (omissis) ...</p>

<h3>$L1L9PE</h3>
<p>Load 9 digits Packed with Exponent (in loop).
 As $L1L9P. Exponent is considered.<br />
 Usage:</p>
<pre>
         $L1L9PE &amp;FIELD,&amp;OPERAND,&amp;EXP,&amp;
 WORK=(WRKLNK,WRKADR),&amp;CR=NO
</pre>
<p>... (omissis) ...</p>

<h3>$L10P</h3>
<p>Load  10 digits Packed   (in loop).<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $L10P &amp;FIELD,&amp;OPERAND,&amp;WORK=(WRKADR,WRKLNK),
 &amp;OVFLW=NO
</pre>
<p>... (omissis) ...</p>

<h3>$L14P</h3>
<p>As $L10P.</p>

<h3>$L15PE</h3>
<p>Load 9 digits Packed with Exponent (in loop). Exponent is
 considered.<br />
 Usage:</p>
<pre>
         $L15PE &amp;FIELD,&amp;OPERAND,&amp;EXP,&amp;
 WORK=(WRKLNK,WRKADR),&amp;CR=NO,     *
               &amp;CLEAR=YES
</pre>
<p>... (omissis) ...</p>

<h3>$L28P</h3>
<p>As $L10P.</p>

<h3>$L30P</h3>
<p>As $L10P.<br />
   Usage:</p>

<h3>$L30PD</h3>
<p>Load 30 digits Packed (in loop) when last digit is in right
 (DX) semibyte.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $L30PD &amp;FIELD,&amp;OPERAND,&amp;REG,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$L30PE</h3>
<p>Load 30 digits Packed (in loop) consideriing exponent.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $L30PE &amp;FIELD,&amp;OPERAND,&amp;EXP,&amp;
 WORK=(WRKLNK,WRKADR),&amp;CR=NO
</pre>
<p>... (omissis) ...</p>

<h3>$L30PS</h3>
<p>Load 30 digits Packed  (in loop) when last digit is in left
 (SX) semibyte.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $L30PS &amp;FIELD,&amp;OPERAND,&amp;WORK=(WRKLNK,WRKADR),
 &amp;OVFLW=NO
</pre>
<p>... (omissis) ...</p>

<h3>$L9P</h3>
<p>As $L10P.</p>

<h3>$L9PE</h3>
<p>As $L10P.</p>

<h3>$MOVE</h3>
<p>MOVE 256 bytes (or less) of &amp;OPERAND to &amp;AREA (in
 />
 Usage:</p>
<pre>
         $MOVE

</pre>
<p>... (omissis) ...</p>

<h3>$MR</h3>
<p>Multiply Register, in loop (with correction for 32.th bit).<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $MR   &amp;REG0,&amp;REG1,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$MR1</h3>
<p>Same as $MR, with correction for 32.th bit only for the 1.st
 operand.<br />
 Usage:</p>
<pre>
         $MR1  &amp;REG0,&amp;REG1
</pre>
<p>... (omissis) ...</p>

<h3>$MR2</h3>
<p>Same as $MR, with correction for 32.th bit only for the
 operand.<br />
 Usage:</p>
<pre>
         $MR2  &amp;REG0,&amp;REG1,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$MV</h3>
<p>Fill an area from &amp;STRADDR, for the length &amp;LENGTH,
 with the last character contained in &amp;REG.<br />
 Usage:</p>
<pre>
         $MV   &amp;REG,&amp;STRADDR,&amp;LENGTH,&amp;TEST=NO
</pre>
<p>... (omissis) ...</p>

<h3>$MVA</h3>
<p>MoVe Address. Store in &amp;LOC, value of address specified in
 &amp;VALUE.<br />
 Usage:</p>
<pre>
         $MVA  &amp;LOC,&amp;VALUE,&amp;WORK=WRKADR
</pre>
<dl compact="compact">
 <dt>&amp;LOC</dt>
 <dd>specifies where the address is to be stored.
  If it is a register a L instruction is generated,
  otherwise a MVC.</dd>
 <dt>&amp;VALUE</dt>
 <dd>indicates the value to be stored in &amp;LOC.
  If &amp;VALUE is a parameter, address in load from parameter list.
  If &amp;VALUE is a symbol name used as couple address-length,
  address is taken from this register.<br />
  If &amp;VALUE is a register whose name begins with @, is assumed
  that this register contains address.<br />
  If &amp;VALUE is a constant beginning with @, is assumed that
  the address is a constant.<br />
  eg.: if &amp;VALUE is a variable, &amp;LOC receives address of
  its location. Thus $MVA LOC,@234, generates:</dd>
</dl>
<pre>
         LA    WRKADR,234
         ST    WRKADR,LOC
</pre>

<h3>$MVC</h3>
<p>MoVe Characters  (for string &lt; 256 char in length).
 Copies value of &amp;OP2 into &amp;OP1.<br />
 Usage:</p>
<pre>
         $MVC  &amp;OP1,&amp;OP2,&amp;TEST=NO,&amp;RES=NO
</pre>
<dl compact="compact">
 <dt>&amp;OP1, &amp;OP2</dt>
 <dd>destination and source of the move.</dd>
 <dt>TEST=YES/SI</dt>
 <dd>indicates test must be performed before move.</dd>
 <dt>RES=YES/SI</dt>
 <dd>restore of the length of &amp;OP1 must be done.</dd>
</dl>

<h3>$MVIN</h3>
<p>MoVe INverse (in loop).<br />
 Pieces of 256 char (or less) are loaded from &amp;OPERAND,
 from right to left, and stored, inverted by MVCIN, in
 a field &amp;FIELD (256 bytes length).<br />
 Usage:</p>
<pre>
         $MVIN &amp;FIELD,&amp;OPERAND,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$MVN</h3>
<p>MoVe   Number  (as MVCL, but right aligned). Padded with sign.
<br />
 Usage:</p>
<pre>
         $MVN  &amp;OP1,&amp;OP2,&amp;TEST=NO,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$MVNP</h3>
<p>MoVe Number Positive or Packed. (as $MVN but padded with zeroes)
<br />
 Usage:</p>
<pre>
         $MVNP &amp;OP1,&amp;OP2,&amp;TEST=NO,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$MVPSF</h3>
<p>MoVe Packed Shortest Form.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $MVPSF &amp;OPER,&amp;WORK=(WORK0,WORK1,WRKADR)
</pre>
<p>... (omissis) ...</p>

<h3>$MVSP</h3>
<p>MoVe Short Packed (in loop).<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $MVSP &amp;OP1,&amp;OP2,&amp;WORK=(WRKLNK,WRKADR),&amp;
 OVFLW=NO
</pre>
<p>... (omissis) ...</p>

<h3>$MVV</h3>
<p>A simplified variant of $MVA.<br />
 Usage:</p>
<pre>
         $MVV  &amp;LOC,&amp;VALUE,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$NAR</h3>
<p>... (omissis) ...<br />
 Usage:  ... (omissis) ...</p>

<h3>$PACK</h3>
<p>PAcK  16 byte (or less) at a time (in loop).<br />
 Pieces of 16 bytes are loaded, from right to left, from
 &amp;OPER and packed into &amp;RIS.<br />
 Usage:</p>
<pre>
     $PACK  &amp;RIS,&amp;OPER,&amp;WORK=(WRKLNK,WRKADR),&amp;CC=NO,
 &amp;TEST=NO
</pre>
<p>... (omissis) ...</p>

<h3>$PACK1</h3>
<p>As $PACK, used for the 1.st occurence in PACK loops.<br />
 Usage: ... (omissis) ...</p>

<h3>$POS</h3>
<p>POSition of a String in Operand. In &amp;OPERAND is
 searched for &amp;STRING. Resulting address is in &amp;ADDR.<br />
 Usage:</p>
<pre>
         $POS  &amp;ADDR,&amp;OPERAND,&amp;STRING,&amp;WORK=WRKADR
</pre>
<p>CC = 0 &amp;OPERAND contains &amp;STRING.<br />
 ... (omissis) ...</p>

<h3>$PROC</h3>
<p>Used to inizialize a program.<br />
 N.B. Code for: MAIN, OS, CMS, WKASIZE is not implemented.<br />
 Usage:</p>
<pre>
     $PROC &amp;OPRNDS,
+(@76)*
           &amp;OP1=,&amp;OP2=,&amp;RES=,&amp;RES1=,&amp;RES2=,
+(@92)*
           &amp;R0=,&amp;R1=,&amp;R2=,&amp;R3=,&amp;TOKENS=,
+(@92)*
           &amp;WKAPTR=WKAPTR,&amp;PARMPTR=PARMPTR,
+(@80)*
           &amp;BASE=BASEREG,&amp;LINK=(WRKLNK,WRKADR),
+(@80)*
           &amp;OPTIONS=,&amp;WKASIZE=,&amp;SAVE=ALL,&amp;ERRSTK=
</pre>
<dl compact="compact">
 <dt>&amp;OPRNDS</dt>
 <dd>parameter list passed from calling
  program. If called from OS, only one parameter
  is allowed, 100 char. in length, PARMPRT= must
  indicate R1 as pointer, WKAPTR (Work Area
  Pointer) must be R13, LINK= must specify R14 &amp; R15.</dd>
 <dt>&amp;OP1=,&amp;OP2=,&amp;RES=,&amp;RES1=,&amp;RES2=</dt>
 <dd>used to call quickly mathematic function, using registers.
   for &amp;OP1 are used R4 (address) and R5 (length),
   for &amp;OP2: R6 &amp; R7, for &amp;RES/&amp;RES1: R8 &amp; R9,
   for
   &amp;RES2: R10 &amp; R11.</dd>
 <dt>&amp;R0=,&amp;R1=,&amp;R2=,&amp;R3=</dt>
 <dd>are used to assign values to
  these registers. 3 definition type are accepted:
  <ul compact="compact">
   <li>1 element, eg.: R0=EXP<br />
    R0 is named EXP and is used in this way.</li>
   <li>2 elements:
    <ul compact="compact">
     <li>1.st is the name,</li>
     <li>2.nd is an indicator whose value is:
      <ul compact="compact">
       <li>"STORAGE" if content is to stored in
        storage; eg.: R0=(VARX,STORAGE)  indicates
        R0 must be stored at the location VARX
        (is to be saved in variable VARX in storage)</li>
       <li>"SAVE" if it must be saved by $SV (and then
        restored by $RS); eg.: RO=(ARGPTR,SAVE) is
        used as $SV ARGPTR.</li>
       <li>a REGISTER specification as.: 0, .... 15, or
        R0, ... R15, or other knows register names;
        eg.: R0=(PLISTPTR,R5) R5 receives the value
        of R0.</li>
      </ul></li>
    </ul></li>
   <li>3 elements:
    <ul compact="compact">
     <li>1.st is the name</li>
     <li>2.nd is the name of the register that will
      receive the value</li>
     <li>3.rd the indicator "SAVE"; eg.: R1=(ARGPTR,R5,SAVE)....</li>
    </ul></li>
  </ul></dd>
 <dt>&amp;TOKENS</dt>
 <dd>In CMS programs a DSECT defining tokens is
  generated; eg.: TOKENS=(COMMAND,FNAME,FTYPE,FMODE,TOKEN)
  generates:
 <pre>

         @CMS@PL@ DSECT
         COMMAND  DS   CL8
         FNAME    DS   CL8
         FTYPE    DS   CL8
         FMODE    DS   CL8
         TOKEN    DS   CL8
         ............
         USING    @CMS@PL@,$@PLIST indirizzamento
 </pre>
 If TOKENS=YES then the following DSECT:
 <pre>

         @CMS@PL@ DSECT
         TOKEN    DS   CL8
         NEXTOKEN DS   CL8
 </pre>
 is generated.
 ===&gt; NOT IMPLEMENTED ..........</dd>
 <dt>WKAPTR</dt>
 <dd>indicates the pointer to be used for
  WORK/STACK area; if "NONE" is specified, no
  address is passed and neither code for recursivity
  is generated.</dd>
 <dt>PARMPTR</dt>
 <dd>specififies a pointer for paramter list, if
  the par. list is omitted, no value is assigned to
  R1 (or oth. reg.).</dd>
 <dt>LINK=(r1,r2)</dt>
 <dd>specifies 2 registers to be used as
  return address (1. reg) and link addr. (2. reg).
  By default for return adress is used WRKLNK (R14)
  and for routine address WRKADR (R15).</dd>
 <dt>LINK=SVCnnn</dt>
 <dd>indicates the JUMP must be taken by
  means of the "nnn" Supervisor Call instr.. If used
  in the form: LINK=(SVCnnn,r), then "r" is the
  register containing routine address.</dd>
 <dt>BASE=BASEREG</dt>
 <dd>Specifies the name of base register.</dd>
 <dt>OPTIONS=</dt>
 <dd>Specifies routine type; values are:
  <ul compact="compact">
   <li>MAIN/NOMAIN (default NOMAIN).</li>
   <li>RECURSIVE if it is a subroutine, the code is
    always recursive, if MAIN, then is generated
    code for recursivity.</li>
   <li>OS/CMS specifies OS system interface to be used.</li>
   <li>NOCALL if present no code for CALL is generated.</li>
   <li>CALVLSTK specifies that Code for STACK
    management must consider Work Area Length
    continuously varying.</li>
   <li>STKCLR if present used to clear the address
    field of the stack of a called routine.</li>
   <li>PLICD specifies this routine is called from a
    PL/I program.</li>
   <li>PLICG specifies that this routine calls a PLI
    program (not implemented).</li>
  </ul></dd>
 <dt>WKASIZE=</dt>
 <dd>If options specifies MAIN, this is the
  amount of storage to be acquired, by means of
  GETMAIN R (actually STORAGE OBTAIN), if OS, or
  DMSFREE (actually CMSSTOR OBTAIN), if CMS.
  De-allocation is done by $RETURN.<br />
  ===&gt; NON IMPLEMENTED .....</dd>
 <dt>ERRSTK=</dt>
 <dd>specifies LABEL of routine to be called if
  error in storage acquisition.</dd>
</dl>
<p>------- GENERAL USAGE OF $PROC MACROS ------<br />
 EXAMPLES:</p>
<pre>
PROG     $PROC PARM,OPTIONS=(MAIN,OS),WKASIZE=512K
         .....
         $USE  PARM,R2
REG1     $EQU  R1
         L     REG1,PALLINO
         .....
         $SV   REG1
         L     R1,PINCO
         .....
         $RS   REG1
         $CALL EXT,(P1,REG1,456,P4,P5)
         BNZ   ERROR
         .....
         $RETURN
PINCO    $DS   F
PALLINO  $DS   F
COSTANTE DC    C'Costante'
KNUMERIC DC    F'12345678'
         $DCL
         .....
         $ENDPROC
</pre>
<p>....... and, in another ASM SESSION ....</p>
<pre>
         EXT   $PROC (P1,P2,P3,P4,P5)
         .....
RP1      $EQU  R5
         $SV   R2
         $USE  P1,R2
         L     RP1,P1
         .....
         $SV   RP1
RP2      $EQU  R5
         $USE  P2,R2
         L     RP2,P2
         .....
         $RS   R2
         $RS   RP1
         $CALL EXT2,(RP1,RP2,P3,P4,P5)
         BNZ   ERROR
         .....
         $RETURN
DCM      DC    C'Messaggio'
DSL1     $DS   CL3
DSLM     $DS   CL13
         $DCL
         .....
         $ENDPROC
</pre>

<h3>$PSF</h3>
<p>Packed Shortest Form. Used to reduce a packed number to
 its minimal lenght.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $PSF  &amp;OPERAND,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$REQU</h3>
<p>Register Equate &amp; definition of some values used by
 those macros.<br />
 Usage:</p>
<pre>
         $REQU
</pre>

<h3>$RETURN</h3>
<p>Generates code to accomplish necessary operations to
 cleanly return to the calling program; names of
 registers have to be the sames as used in $PROC.<br />
 Usage:</p>
<pre>
         $RETURN &amp;RSRA=,&amp;RETC=,&amp;CC=
</pre>
<dl compact="compact">
 <dt>RSRA=</dt>
 <dd>specifies the list of register saved by $PROC
 to be restored; if omitted, all saved register are
 restored.</dd>
 <dt>RETC=</dt>
 <dd>used to set Return code (R15) to be passed to
 the calling program; if not specified, no code is
 generated.</dd>
 <dt>CC=</dt>
 <dd>used to set Condition Code.</dd>
</dl>

<h3>$REUSE</h3>
<p>Generates code to reuse &amp;VARNAME as a couple
 address-length (a DSECT, regs equates, USING).<br />
 Usage:</p>
<pre>
         $REUSE &amp;VARNAME,&amp;OPRND,&amp;PARMPTR=NO,&amp;SAVE=NO
</pre>
<dl compact="compact">
 <dt>&amp;VARNAME</dt>
 <dd>the variable to be reused.
  <ul compact="compact">
   <li>If &amp;VARNAME is an item passed via parameter list,
    then code for addressing is generated using &amp;OPRND
    as base register and, if PARMPTR not = "NO", also
    code for parameter list addressing is generated
    using this value as pointer register. &amp;OPRND must
    be a register.</li>
   <li>If &amp;VARNAME is in the symbol table done by $DEF,
    then old addressing mode is restored. &amp;OPRND is not
    a register.</li>
   <li>If &amp;VARNAME isn't in the symbol table done by
    $DEF, if &amp;OPRND is an old symbol, then addressing
    is generated using register(s) already used by
    &amp;OPRND, if &amp;OPRND isn't present, addressing is
    generated without register equate.
    If &amp;OPRND is a register, then it must be an even
    register to be used to containg address (of couple
    address-length).</li>
  </ul></dd>
 <dt>&amp;OPRND</dt>
 <dd>an optional operand used to specify how
  the addressing is to be restored, it may be a
  register or a know symbol.</dd>
 <dt>PARMPTR=</dt>
 <dd>used to restore parameters passed to this
  routine, values are:<br />
  "NO" or a symbol indicating a register.</dd>
 <dt>SAVE=</dt>
 <dd>if not = "NO", then &amp;OPRND is saved.</dd>
</dl>

<h3>$RS</h3>
<p>Used to generate code for restore symbol saved by $SV.<br />
 Usage:</p>
<pre>
         $RS   &amp;OP,&amp;OP1
</pre>
<dl compact="compact">
 <dt>&amp;OP</dt>
 <dd>the symbol to be restored to.</dd>
 <dt>&amp;OP1</dt>
 <dd>if present, is the source of restore IE
  storage location used to hold &amp;OP1, is used as
  restore loc. for &amp;OP.<br />
  N.B. $SV and $RS DO NOT USE A STACK to do SAVE/RESTORE</dd>
</dl>

<h3>$RSRA</h3>
<p>ReStore from Register Area. As standardized, locations
 from 12 to 72 are used to store regs from 12 to 13 in
 an area passed from calling program and pointed by R13.<br />
 Usage:</p>
<pre>
         $RSRA &amp;OP,&amp;OP1
</pre>
<dl compact="compact">
 <dt>&amp;OP</dt>
 <dd>register to be restored.</dd>
 <dt>&amp;OP1</dt>
 <dd>if present, source of restore; value is loaded
  from location reserved to hold value of &amp;OP1, means
  restore &amp;OP as if it is &amp;OP1.</dd>
</dl>

<h3>$RTL</h3>
<p>Right Test Length.
 Load data from the beginning of &amp;OPERAND and
 Test Length.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $RTL  &amp;OP1,&amp;OP2,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$S</h3>
<p>Subtract   (in loops, with borrow)
 Subtract &amp;OPERAND from &amp;RESULT, &amp;BORROW contains
 Borrow from subtractions. Used in loops to repeatedly
 subtract pieces (words) of numbers<br />
 Usage:</p>
<pre>
         $S    &amp;RESULT,&amp;OPERAND,&amp;BORROW
</pre>

<h3>$SGN</h3>
<p>SiGN verify. Verify that &amp;OPERAND's bits are all zeroes
 or ones. CC is set.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
     $SGN  &amp;OPERAND,&amp;TEST=NO
</pre>
<p>... (omissis) ...</p>

<h3>$SGNP</h3>
<p>SiGN Packed. Set sign for a packed number.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $SGNP &amp;OPERAND,&amp;SGNR,&amp;ONLY=NO,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$SGXAR</h3>
<p>SiGn eXtension Add Register. Adds sign's extension to a register.
<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $SGXAR &amp;RESULT,&amp;#NEG,&amp;CARRY
</pre>
<p>... (omissis) ...</p>

<h3>$SGXI</h3>
<p>SiGn eXtension Increment.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $SGXI &amp;#NEG,&amp;REG,&amp;PRESERV=NO
</pre>
<p>... (omissis) ...</p>

<h3>$SNE</h3>
<p>Search Not Equal char in operand.
 Code is generated to search for &amp;CHAR in &amp;OPERAND,
 from right to left (Is Used for numbers).<br />
 Usage:</p>
<pre>
         $SNE  &amp;ADDR,&amp;OPERAND,&amp;CHAR,&amp;WORK=WRKADR
</pre>
<dl compact="compact">
 <dt>&amp;ADDR</dt>
 <dd>will contain address of 1.st caracter not equal
  to &amp;CHAR, beginning from the end of the string, if
  found.</dd>
 <dt>&amp;OPERAND</dt>
 <dd>the string object of the searching.</dd>
 <dt>&amp;CHAR</dt>
 <dd>the character that is searching for.</dd>
 <dt>WORK=</dt>
 <dd>indicates a work register to be used.</dd>
</dl>
<p>CC = 0 indicates &amp;CHAR isn't present in the string,
 Lenght of &amp;OPERAND reaches zero.</p>

<h3>$SP</h3>
<p>Subtract Packed (in loops,with borrow)<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $SP   &amp;RESULT,&amp;OPERAND,&amp;BORROW
</pre>
<p>... (omissis) ...</p>

<h3>$SPB</h3>
<p>Subtract Packed Borrow. Used to subtract borrow.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $SPB  &amp;RESULT,&amp;BORROW
</pre>
<p>... (omissis) ...</p>

<h3>$SR</h3>
<p>Subtract Register (in loops, with borrow), like $S.<br />
 Usage:</p>
<pre>
         $SR   &amp;RESULT,&amp;OPERAND,&amp;BORROW
</pre>
<p>... (omissis) ...</p>

<h3>$SSP</h3>
<p>Store Sign Packed. Used to transfer sign for packed numbers.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $SSP  &amp;FIELD,&amp;OPERAND,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$ST</h3>
<p>STore (in loop).
 Store data in &amp;REG, to the end of &amp;OPERAND.
 Used in loops.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $ST   &amp;REG,&amp;OPERAND,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$STC</h3>
<p>STore Caracter (in loop). like $ST.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $STC  &amp;REG,&amp;OPERAND
</pre>
<p>... (omissis) ...</p>

<h3>$STN</h3>
<p>STore No test for overflow (in loop).<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $STN  &amp;REG,&amp;OPERAND,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$ST10P</h3>
<p>STore 10 digits Packed (in loop). Used for coversions
 from/to binary.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $ST10P  &amp;FIELD,&amp;OPERAND,&amp;WORK=(WRKLNK,WRKADR),
 &amp;OVFLW=NO
</pre>
<p>... (omissis) ...</p>

<h3>$ST14P</h3>
<p>STore 14 digits Packed (in loop).<br />
 ... (omissis) ...</p>

<h3>$ST15P</h3>
<p>STore 15 digits Packed (in loop).<br />
 ... (omissis) ...</p>

<h3>$ST15PE</h3>
<p>STore 15 digits Packed (in loops) number has exponent.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $ST15PE &amp;FIELD,&amp;OPERAND,&amp;EXP,&amp;
 WORK=(WRKLNK,WRKADR),           *
               &amp;OVFLW=NO,&amp;PRESERV=NO,&amp;CR=NO,&amp;ONLY=YES
</pre>
<p>... (omissis) ...</p>

<h3>$ST28P</h3>
<p>STore 28 digits Packed. Like $ST10P.<br />
 ... (omissis) ...</p>

<h3>$ST30P</h3>
<p>STore 30 digits Packed. Like $ST10P.<br />
 ... (omissis) ...</p>

<h3>$ST30PD</h3>
<p>STore 30 digits Packed.<br />
 ... (omissis) ...</p>

<h3>$ST30PE</h3>
<p>STore 30 digits Packed (in loops) number has exponent.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $ST30PE &amp;FIELD,&amp;OPERAND,&amp;ADDER,&amp;EXP,&amp;
 MAXEXP=,                 *
           &amp;WORK=(WRKLNK,WRKADR),&amp;OVFLW=NO,&amp;CR=
</pre>
<p>... (omissis) ...</p>

<h3>$ST30PS</h3>
<p>STore 30 digits Packed.<br />
 ... (omissis) ...</p>

<h3>$ST9P</h3>
<p>STore 9 digits Packed. Like $ST10P.<br />
 ... (omissis) ...</p>

<h3>$ST9PE</h3>
<p>Like $ST30PE.</p>

<h3>$SV</h3>
<p>Generates code to save value of a register in an area generated by
 $DCL.<br />
 Usage:</p>
<pre>
         $SV   &amp;OP,&amp;OP1
</pre>
<dl compact="compact">
 <dt>&amp;OP</dt>
 <dd>the name of the register to be saved.</dd>
 <dt>&amp;OP1</dt>
 <dd>if present, indicates that &amp;OP is to be saved
  as it ts &amp;OP1. Eg.:
  <pre>

          $SV  REG1,REG2
          .....
          $RS  REG2
          avoid use of LR REG2,REG1
  </pre>
  N.B.: this macro is NOT intented to be used in stack
  mode; the name of a register, in the logic of
  those macros, must change when meaning change;
  so they are many symbol for a only one
  register: $EQU is to be used to signal change
  of meaning of a register.
  $EQU puts register name in a symbol table, so
  those macros can avoid register overlay.</dd>
</dl>

<h3>$SVAREA</h3>
<p>Defines fields &amp; symbols for a SAVE/STACK area.<br />
 Usage:</p>
<pre>
         $SVAREA &amp;LNG=ASSEMBLE
</pre>
<p>LNG=PLI, generates an area filled with PLI indicators.</p>

<h3>$SVRA</h3>
<p>SaVe in Register Area. Save register in SAVE/STACK
 area. See $RSRA for details.<br />
 Usage:</p>
<pre>
         $SVRA &amp;OP,&amp;OP1
</pre>
<p>... (omissis) ...</p>

<h3>$TR</h3>
<p>TRanslate 256 bytes (or less) (in loops).
 Used to repeat TR (translate) instruction in a loop.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $TR   &amp;OPERAND,&amp;TABLE,&amp;WORK=WRKADR
</pre>
<p>... (omissis) ...</p>

<h3>$TSGE</h3>
<p>Test SiGn Extension.<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $TSGE &amp;OPERAND,&amp;TEST=NO,&amp;SAVE=NO,&amp;
 WORK=(WRKLNK,WRKADR)
</pre>
<p>... (omissis) ...</p>

<h3>$TZERO</h3>
<p>Test if ZERO. Veriifies that an area is filled by all zeroes.
<br />
 Usage:</p>
<pre>
         $TZERO &amp;OPERAND,&amp;SAVE=NO,&amp;TEST=NO,&amp;
 WORK=(WRKLNK,WRKADR)
</pre>
<p>... (omissis) ...</p>

<h3>$UNPK</h3>
<p>UNPacK a packed 16 digits (or less) at a time, used in loops.
<br />
 ... (omissis) ...<br />
 Usage:</p>
<pre>
         $UNPK &amp;RES,&amp;OPERAND,&amp;WORK=(WRKLNK,WRKADR),
 &amp;CC=NO,&amp;TEST=NO
</pre>
<p>... (omissis) ...</p>

<h3>$UNPK1</h3>
<p>Like $UNPK, but used first when doing a loop.<br />
 Usage:</p>
<pre>
         $UNPK1 &amp;RES,&amp;OPERAND,&amp;WORK=(WRKLNK,WRKADR),
 &amp;CC=NO,&amp;TEST=NO
</pre>
<p>... (omissis) ...</p>

<h3>$USE</h3>
<p>Generates instructions to address and use &amp;VARIABLE as
 a couple address-length (a DSECT, regs equates, USING).<br />
 Usage:</p>
<pre>
         $USE  &amp;VARNAME,&amp;OPRND,&amp;PARMPTR=NO,&amp;SAVE=NO
</pre>
<dl compact="compact">
 <dt>&amp;VARNAME</dt>
 <dd>the variable to be used as a pair address-length.
  <ul compact="compact">
   <li>If &amp;VARNAME is an item passed via parameter list,
    then code for addressing is generated using &amp;OPRND
    as base register and, if PARMPTR not = "NO", also
    code for parameter list addressing is generated
    using this value as pointer register. &amp;OPRND must
    be a register.</li>
   <li>If &amp;VARNAME is in the symbol table done by $DEF,
    then old addressing mode is restored. &amp;OPRND is not
    a register.</li>
   <li>If &amp;VARNAME isn't in the symbol table done by
    $DEF, if &amp;OPRND is an old symbol, then addressing
    is generated using register(s) already used by
    &amp;OPRND, if &amp;OPRND isn't present, addressing is
    generated without register equate.
    If &amp;OPRND is a register, then it must be an even
    register to be used to containg address (of couple
    address-length).</li>
  </ul></dd>
 <dt>&amp;OPRND</dt>
 <dd>an optional operand used to specify how
  the addressing is to be restored, it may be a
  register or a know symbol.</dd>
 <dt>PARMPTR=</dt>
 <dd>used to restore parameters passed to this
  routine, values are: "NO" or a symbol indicating a
  register.</dd>
 <dt>SAVE=</dt>
 <dd>if not = "NO", then &amp;OPRND is saved.</dd>
</dl>

<h3>$WORK</h3>
<p>Obsolete. As $SVAREA, defines fields &amp; symbols for a
 SAVE/STACK area.<br />
 Usage:</p>
<pre>
         $WORK &amp;OP
</pre>
<dl compact="compact">
 <dt>&amp;OP</dt>
 <dd>"END" when $WORK is to be closed.</dd>
</dl>

/HTML

         HTMLDEF SAMPSI.UKL
<!-- UK -->

/HTML

         HTMLDEF SAMPSI.UKF
<!-- UK -->
<p class="footer" align="center">
 This text was written by Sergio Iovacchini<br/>
 &copy; Copyright: S. Iovacchini, 2003. All rights reserved.<br />
 <a href="mailto:??@???.??">e-mail</a> the author.</p>

/HTML
