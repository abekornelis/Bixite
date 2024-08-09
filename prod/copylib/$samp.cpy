         HTMLDEF $SAMP.UK1
<!-- UK -->
<a name="samp1a" id="samp1a"></a>
<pre>
*
* Sample of a call to a subprogram.
*
* We assume the parameter list has been set up
         LA    R1,PLIST            Reg.1 points to parameter-list
         L     R15,=V(SUBPROG)     Address of subprogram in reg.15
         BALR  R14,R15             Fill reg.14 and call subprogram
* Handle the result
         LTR   R0,R15              Save and test returncode
         BNZ   ERROR               Returncode not zero: error-handling
GOOD     EQU   *
*        ...                       Other program-code

ERROR    N     R15,=X'00000FFF'    Remove reasoncode
         L     R15,ERRORS(R15)     Get address of error-routine from
 table
         BR    R15                 And execute error-routine
*
* Error-routines for handling unexpected results from SUBPROG
* Upon entry reg.0 contains the return- and reason-codes
ERRORS   DC    AL4(GOOD)           Result ok
         DC    AL4(RETCD4)         Returncode 4: warning
         DC    AL4(RETCD8)         Returncode 8: problem
         DC    AL4(RETCD12)        Returncode 12: undefined
         DC    AL4(RETCD16)        Returncode 16: fatal error
</pre>
<hr width="80%" />
<a name="samp1b" id="samp1b"></a>
<pre>
*
* Sample of a callable program (non-reusable or reusable)
* This sample is not usable for re-enterable or refreshable programs.
*
SUBPROG  CSECT
         USING SUBPROG,R15         Register 15 contains address
SUBPROG
         B     START               Skip data
         DC    C'SUBPROG '         Program-name
         DC    C'&amp;SYSDATE'         Date
         DC    C'&amp;SYSTIME'         Time
         DC    C'V1R2.05'          Version number
         DS    0H                  Re-align on halfword-boundary
*
START    STM   R14,R12,12(R13)     Save registers
         DROP  R15                 No longer needed as base-reg
         LR    R12,R15             Fill reg.12 with base address
         USING SUBPROG,R12         Now use reg.12 as base
         LA    R14,SAVEAREA        Address new save-area
         ST    R13,4(R14)          Point to previous save-area
         ST    R14,8(R13)          Point to next save-area
         LR    R13,R14             R13 points to a free save-area again
*        ...                       Other program-code

EXIT     L     R13,4(R13)          Get address of previous save-area
         LM    R14,R12,12(R13)     Restore all registers (except 13)
         LA    R15,...             Returncode in reg.15
         BR    R14                 Return to caller
         DROP  R12                 Base no longer needed
*
         LTORG                     All literals
SAVEAREA DS    18F                 Save-area
</pre>
<hr width="80%" />
<a name="samp1c" id="samp1c"></a>
<pre>
*
* Sample of a callable program (refreshable or re-enterable)
* This sample is usable also for reusable or non-reusable programs.
*
SUBPROG  CSECT
         USING SUBPROG,R15         Register 15 contains address
SUBPROG
         B     START               Skip data
         DC    C'SUBPROG '         Program-name
         DC    C'&amp;SYSDATE'         Date
         DC    C'&amp;SYSTIME'         Time
         DC    C'V1R2.05'          Version number
         DC    0H                  Re-align on halfword-boundary
*
START    STM   R14,R12,12(R13)     Save all registers
         DROP  R15                 No longer needed as base
         LR    R12,R15             Fill reg.12 with base address
         USING SUBPROG,R12         Use reg.12 as base
         LA    R1,PRIVATE_LEN      Amount of storage required
         GETMAIN RU,LV=(R1)        Allocate storage for save-area etc.
* Address of allocated storage now in register 1
         USING PRIVATE,R13         Make storage addressable
         ST    R13,4(R1)           Point to previous save-area
         ST    R1,8(R13)           Point to next save-area
         LR    R13,R1              R13 points to a free save-area again
*        ...                       Other program-code

EXIT     LR    R1,R13              Keep address of our private area
         L     R13,4(R13)          Get address of previous save-area
         LA    R2,PRIVATE_LEN
         FREEMAIN A=(R1),LV=(R2)   Free allocated storage
         LM    R14,R12,12(R13)     Restore all registers (except 13)
         LA    R15,...             Returncode in reg.15
         BR    R14                 Return to caller
         DROP  R12                 Base no longer needed
*
         LTORG                     All literals
*
* This dsect describes all variables private to each caller.
PRIVATE  DSECT
SAVEAREA DS    18F
*        ...                       Other private variables
PRIVATE_LEN EQU *-PRIVATE
</pre>
/HTML

         HTMLDEF $SAMP.UK2
<!-- UK -->
<a name="samp2a" id="samp2a"></a>
<pre>
         MACRO
         CHECKPRM
.*
.* The assembler program (ASMA90) accepts as a JCL-parameter a
.* specification for the variable SYSPARM. The value entered in
.* the JCL will be passed to a global set symbol named &amp;SYSPARM.
.* The value specified in the JCL is passed as a single string.
.* Options are separated from each other with a comma - no spaces.
.* This macro decomposes the string into separate parameters.
.* Then the parameters are checked and handled. 4 different keywords
.* are allowed:
.* - DEBUG  : Generate debugging code (Snap routine etc.)
.* - NODEBUG: Do not generate debugging code
.* - OPT    : Generate an optimized program
.* - NOOPT  : Generate a fully functional program
.*
*
* Macro CHECKPRM tests JCL-variable SYSPARM and sets two global
* variables to reflect the contents of SYSPARM:
* &amp;DBG is set on to include debugging code, off to omit this code
* &amp;OPT is set on to generate optimized code, off for fully
*      functional code.
*
         GBLB  &amp;DBG,&amp;OPT
&amp;DBG     SETB  0                   Default: no debug code
&amp;OPT     SETB  1                   Default: full optimization
         AIF   ('.&amp;SYSPARM' EQ '.').EXIT
*
* First we split the SYSPARM string into substrings
*
         LCLC  &amp;P(5)               Array to contain substrings (par
+ms)
         LCLA  &amp;I,&amp;N,&amp;X
&amp;I       SETA  0                   Character index for &amp;SYSPARM
&amp;N       SETA  1                   Next position to extract
&amp;X       SETA  1                   Parameter counter (indexes arra
+y &amp;P)
*
.LOOP1   ANOP
&amp;I       SETA  &amp;I+1                Increment character index
         AIF   (&amp;I GT K'&amp;SYSPARM.LOOP1X         End-of-string?
         AIF   ('&amp;SYSPARM'(&amp;I,1) NE ',').LOOP1  End-of-substrin
+g?
.* Put substring into array &amp;P
&amp;P(&amp;X)   SETC  '&amp;SYSPARM'(&amp;N,&amp;I-&amp;N
+)             Extract substring
&amp;N       SETA  &amp;I+1                Set ptr to start of next sub
+string
&amp;X       SETA  &amp;X+1                Increment substring counter
         AGO   .LOOP1              Go check next character
.*
.LOOP1X  ANOP                      Exit point for loop1
&amp;P(&amp;X)   SETC  '&amp;SYSPARM'(&amp;N,&amp;I-&amp;N) Extract las
+t substring
.*
.* Check validity of the keywords (now in array &amp;P)
.*
&amp;I       SETA  0                   Index into array &amp;P
.LOOP2   ANOP
&amp;I       SETA  &amp;I+1                Increment parameter pointer
         AIF   (&amp;I GT &amp;X).LOOP2X   Done? (&amp;X contains nr o
+f parameters)
         AIF   ('.&amp;P(&amp;I)' EQ '.').LOOP2          Skip empty par
+ameter
         AIF   ('.&amp;P(&amp;I)' EQ '.OPT').OPT         Enable optimiz
+ation
         AIF   ('.&amp;P(&amp;I)' EQ '.NOOPT').NOOPT     Disable optimi
+zation
         AIF   ('.&amp;P(&amp;I)' EQ '.DEBUG').DEBUG     Include debu
+g logic
         AIF   ('.&amp;P(&amp;I)' EQ '.NODEBUG').NODEBUG Omit debuggin
+g logic
.* Invalid value: issue warning and continue
         MNOTE 4,'Invalid SYSPARM operand: &amp;P(&amp;I)'
         AGO   .LOOP2              Go check next parm
.*
.OPT     ANOP
&amp;OPT     SETB  1
         MNOTE 0,'Optimized coding will be generated'
         AGO   .LOOP2
.*
.NOOPT   ANOP
&amp;OPT     SETB  0
         MNOTE 0,'Fault tolerant coding will be generated'
         AGO   .LOOP2
.*
.DEBUG   ANOP
&amp;DBG     SETB  1
         MNOTE 0,'Debugging code will be included'
         AGO   .LOOP2
.*
.NODEBUG ANOP
&amp;DBG     SETB  0
         MNOTE 0,'Debugging code will be excluded'
         AGO   .LOOP2
.*
.LOOP2X  ANOP                      Exit point for loop2
.EXIT    ANOP                      Exit point for empty SYSPARM
         MEND
</pre>
<hr width="80%" />
<a name="samp2b" id="samp2b"></a>
<pre>
*
* The global &amp;DBG controls debug/nodebug assembling options
* - When &amp;DBG = 1 then debugging is active
* The global &amp;OPT controls optimization
* - When &amp;OPT = 1 then optimization takes place
* - When &amp;OPT = 0 then fault tolerance will be included
*
         GBLB  &amp;DBG,&amp;OPT
         CHECKPRM                  Check &amp;SYSPARM to set &amp;DBG a
+ nd &amp;OPT
*
SOMEPROG CSECT
SOMEPROG AMODE 31
SOMEPROG RMODE ANY
*
         ...                       Here the coding follows.
</pre>
<hr width="80%" />
<a name="samp2c" id="samp2c"></a>
<pre>
* Now set printing options
         GBLC  &amp;PRT                Controls print option
&amp;PRT     SETC  'NOGEN'             Default to nogen
         AIF   (NOT &amp;DBG).NOGEN    Debugging active?
&amp;PRT     SETC  'GEN'               Yes: generate full listing
.NOGEN   ANOP
         PRINT &amp;PRT                Activate print option
*
</pre>
<hr width="80%" />
<a name="samp2d" id="samp2d"></a>
<pre>
*
* This piece of code moves data, as specified by a move control element
* The data to be moved can be up to 32767 bytes long.
*
* R6 now points to the move-control element.
* R8 will be used as a source pointer, R9 containing the length.
* R10 will be used as the destination pointer.
*
          USING MOVECTL,R6         Make move control area addressable
          L     R8,MCRECPTR        Point to start-of-record
          AH    R8,MCRECOFS        Add offset to relevant data
          LH    R9,MCDATLEN        Load length of data
          L     R10,MCDEST         Point to destination area
*
* Now to move the data we would normally code an MVCL-instruction,
* since MCDATLEN can specify any amount of data up to 32767 bytes.
* Since it is known that currently no MOVECTL-element specifies a
* length of more than 256, we can optimize the code by using an MVC
* in stead of an MVCL.
*
          AIF   (&amp;OPT).OPTMOVE
          LR    R11,R9             Target-length always eq. Source-len
          MVCL  R10,R8             Move the data
          AGO   .MOVEDONE
.*
.OPTMOVE  ANOP
          BCTR  R9,R0              Decrement length by 1 for MVC
          EX    R9,MOVEDATA        Execute MVC-instruction
          B     MOVEDONE
MOVEDATA  MVC   0(0,R10),0(R8)     Move the data
MOVEDONE  EQU   *
*
.MOVEDONE ANOP
          DROP  R6                 MOVECTL no longer needed
</pre>
/HTML

         HTMLDEF $SAMP.UK3
<!-- UK -->
<a name="samp3a" id="samp3a"></a>
<pre>
*        ...                       Setup addressability etc.
INIT     BC    X'00',INITDONE      This branch is a branch-never
         OI    INIT+1,X'F0'        Make previous branch a branch-always
*        ...                       Initialization code goes here
INITDONE EQU   *                   End of initialization routine
</pre>
<hr width="80%" />
<a name="samp3b" id="samp3b"></a>
<pre>
         L     R1,LINEPTR          Get last-used pointer into LINE
SETPTR   SH    R1,=H'50'           Switch to other column (initial: SH)
         XI    SETPTR,X'01'        Change AH to SH, or vice versa
         ST    R1,LINEPTR          Store updated pointer
         MVC   0(40,R1),DATA       Move data into print-line
         ...                       Other coding for printing the line
LINE     DC    CL133' '
         DS    0F                  Re-align on fullword boundary
LINEPTR  DC    AL4(LINE+67)        To start printing the data in the
*                                  left column, we pretend the last
*                                  move was to the right-hand column.
</pre>
/HTML

         HTMLDEF $SAMP.UK4
<!-- UK -->
<pre>
*
SUBROUTN STM   R14,R12,12(R13)       Save all registers
         LA    R1,SAVEAREA           Address new save-area
         ST    R13,4(R1)             Point to previous save-area
         ST    R1,8(R13)             Point to next save-area
         LR    R13,R1                Reg.13 points to a free save-area
                                     again
*
* First we allocate storage for ACB and RPL
*
         GETMAIN RC,LV=IFGACBLV+IFGRPLLV Request storage for ACB + RPL
         LTR   R15,R15             Getmain was ok?
         BNE   ERROR16             Error is handled elsewhere
         ST    R1,ACBPTR           Store pointer to ACB
         LA    R1,IFGACBLV(R1)     Point to RPL-part of area
         ST    R1,RPLPTR           Store pointer to RPL
*
* Allocate storage for a workarea
*
         GETMAIN RC,LV=4096,BNDRY=PAGE Request storage for workarea
         LTR   R15,R15             Getmain was ok?
         BNE   ERROR16             Error is handled elsewhere
         ST    R1,WORKPTR          Store pointer to workarea
*
* Create PLIST for GENCB ACB in getmained area.
* No returncode is provided for this GENCB.
*
         SR    R6,R6               Wipe register 6
         IC    R6,SHRPOOL           to contain shrpool-number
         L     R7,WORKPTR          Point to workarea for creating PLIST
         USING WORKAREA,R7
         GENCB BLK=ACB,            Generate PLIST for GENCB ACB
+(@72)*
               AM=VSAM,            Access method
+(@72)*
               WAREA=(R7),         Location for generated ACB
+(@72)*
               LENGTH=IFGACBLV,    Max length for generated ACB
+(@72)*
               DDNAME=(*,DDNAME),  GENCB ACB is to copy DDNAME
+(@72)*
               SHRPOOL=(S,0(R6)),  Shrpool-nr varies from 0 to 15
+(@72)*
               MACRF=(KEY,DFR,SEQ,SKP,SIS,NSR), Options for this ACB
+(@72)*
               BUFND=8,            Minimum nr of data buffers
+(@72)*
               BUFNI=1,            Minimum nr of index buffers
+(@72)*
               RMODE31=ALL,        Buffer and control blocks above 16M
+(@72)*
               MF=(L,WORKAREA,GENACBLV) Generate PLIST in WORKAREA
*
* Now create the ACB, using the PLIST in WORKAREA
*
         GENCB BLK=ACB,MF=(E,(R7)) Generate ACB using PLIST in WORKAREA
         LTR   R15,R15             ACB generated?
         BNZ   ERROR17             Error is handled elsewhere
         DROP  R7                  WORKAREA no longer needed
*
* Create PLIST for GENCB RPL in getmained area.
* No returncode is provided for this GENCB.
*
         SR    R6,R6               Clear register
         IC    R6,KEYLV             to contain key length
         L     R7,ACBPTR           Point to ACB
         LH    R8,RECDLV           Specify record length
         L     R9,RPLPTR           And point to location for gen'ed RPL
         L     R10,WORKPTR         Re-address workarea
         USING WORKAREA,R10
*
         GENCB BLK=RPL,            Generate PLIST for GENCB RPL
+(@72)*
               AM=VSAM,            Access method
+(@72)*
               WAREA=(R9),         Location for generated RPL
+(@72)*
               LENGTH=IFGRPLLV,    Max length for generated RPL
+(@72)*
               ACB=(R7),           Specify ACB-address for RPL
+(@72)*
               AREA=(S,RECDPTR),   Specify data-area for records
+(@72)*
               AREALEN=4,          Length of data-area
+(@72)*
               ARG=(S,KEYPTR)      Specify key location
+(@72)*
               KEYLEN=(S,0(R6)),   And key length in bytes
+(@72)*
               ECB=(S,ECBPTR)      Specify ECB-address
+(@72)*
               RECLEN=(R8),        And record length
+(@72)*
               OPTCD=(KEY,SEQ,ASY,NUP,KGE,GEN,LOC), Options for RPL
+(@72)*
               MF=(G,WORKAREA,GENRPLLV)
*
* Now create the RPL, using the PLIST in WORKAREA
*
         GENCB BLK=RPL,MF=(E,(R10)) Generat RPL using PLIST in WORKAREA
         LTR   R15,R15             RPL generated?
         BNZ   ERROR18             Error is handled elsewhere
*
* Now that we have created both ACB and RPL, we can open the dataset
*
         L     R2,=AL4(VSAMOPEN)   Get address of list-form open
         MVC   WORKAREA(VSAMOPLV),0(R2) Copy to work-area
         L     R2,ACBPTR           Reload ACB-pointer
         OPEN  ((R2)),MF=(E,(R10)) Open ACB with modifiable PLIST
         LTR   R15,R15             Dataset opened successfully?
         BNZ   ERROR19             Error is handled elsewhere
*
* Return from subroutine
*
         L     R13,4(R13)          Get address of previous save-area
         LM    R14,R12,12(R13)     Restore all registers (except 13)
         BR    R14                 Return to mainline
*
* Default list-form of open-macro
*
VSAMOPEN OPEN  (0),                ACB-address not yet known
+(@72)*
               MODE=31,            Enable 31-bit addressing
+(@72)*
               MF=L                Generate only PLIST
</pre>
/HTML
