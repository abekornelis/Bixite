         HTMLDEF SLFTST3A.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.hlasm.com/english/slftst3a.htm -->
<!-- -->
<title>HLASM - Test-driver for Assembler self-test assignment 3</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<link rev="Assembler Proficiency Self-test" href="selftest.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe" />
<meta http-equiv="description"
      content="Test-driver for assignment 3 of the Assembler
      Proficiency Self-test" />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF SLFTST3A.UKT
<!-- UK -->
<h1 align="center">
 Test-driver for Assembler self-test assignment 3
</h1>

<pre>
SLFTST3A TITLE 'Driver for assignment 3 - Tax-deductible item'
***********************************************************************
* Start create : 12-04-2007
* 1st delivery : 12-04-2007
* Designer     : AF Kornelis
* Programmer   : AF Kornelis
***********************************************************************

*
* This program is a test-driver for the program the assignment asks
* you to create.
* Test invocations 1 through 9 have been commented out:
* these relate to aspects not requested in the assignment.
*

***********************************************************************
*
* Constants and definitions
*
***********************************************************************
MAXREASON EQU   6                      * Max. reason code from program
LPP       EQU   12                     * Max. data lines per page

***********************************************************************
*
* Program entry and linkage
*
***********************************************************************
         YREGS ,                       * Define register equates

SLFTST3A CSECT ,                       *
SLFTST3A AMODE 31
SLFTST3A RMODE 24

         USING SLFTST3A,R15            * Establish addressability
         B     START                   * Skip header data
         DC    AL1(START-*),C'SLFTST3A &amp;SYSDATE &amp;SYSTIME'
START    DS    0H
         STM   R14,R12,12(R13)         * Save GPRs
         LR    R12,R15                 * Copy base address
         DROP  R15                     * No longer needed
         USING SLFTST3A,R12            * Re-establish addressability

         LA    R2,SAVEAREA             * Point new savearea
         ST    R2,8(,R13)              * Set ptr to new savearea
         ST    R13,4(,R2)              * Set ptr from ne to prev save
         LR    R13,R2                  * Activate new savearea

***********************************************************************
*
* Obtain test results
*
***********************************************************************
         OPEN  (SYSOUT,OUTPUT)
         MVC   OUTREC,OUTREC-1         * Wipe entire print line
         LA    R8,1                    * Init data line count
*                                      * to force header on first put

* Testcase 1 - invalid pointer
         XR    R1,R1                   * Destroy parm ptr
**       BAS   R14,CALL2B              * Call ASSGN3
         LA    R1,PARMPTR              * Set up parm ptr

* Testcase 2 - invalid pointer to parmarea
**       BAS   R14,CALL2B              * Call ASSGN3
         LA    R15,PARMAREA
         ST    R15,PARMPTR
         OI    PARMPTR,X'80'

* Testcase 3 - missing pointer to printer record
         LA    R1,PARMPTR              * Set up parm ptr
**       BAS   R14,CALL2B              * Call ASSGN3
         NI    PARMPTR,X'7F'

* Testcase 4 - invalid pointer to printer record
         LA    R1,PARMPTR              * Set up parm ptr
**       BAS   R14,CALL2B              * Call ASSGN3
         LA    R15,OUTREC+1            * Pass only data area, no ASA
         ST    R15,PARMPTR+4

* Testcase 5 - too many parameters in parmarea
         LA    R1,PARMPTR              * Set up parm ptr
**       BAS   R14,CALL2B              * Call ASSGN3
         OI    PARMPTR+4,X'80'

* Testcase 6 - invalid pointer to percentage table
         LA    R1,PARMPTR              * Set up parm ptr
**       BAS   R14,CALL2B              * Call ASSGN3
         LA    R15,TABLE1
         ST    R15,TABPTR

* Testcase 7 - invalid reasoncode (too high)
         LA    R7,TEST7OK              * Fake subrtn retaddr
         IC    R15,OUTREC              * Save ASA char
         MVC   OUTREC,OUTREC-1         * Clear entire print line
         STC   R15,OUTREC              * Restore ASA char
         LA    R15,12                  * Set retcode=12
         LA    R0,MAXREASON+1          * Set reason too high
**       B     CHEAT                   * Pretend 2B did that
TEST7OK  DS    0H

* Testcase 8 - invalid reasoncode (negative)
         LA    R7,TEST8OK              * Fake subrtn retaddr
         IC    R15,OUTREC              * Save ASA char
         MVC   OUTREC,OUTREC-1         * Clear entire print line
         STC   R15,OUTREC              * Restore ASA char
         LA    R15,12                  * Set retcode=12
         LA    R0,1                    * Set reason to
         LNR   R0,R0                   *        Minus 1
**       B     CHEAT                   * Pretend 2B did that
TEST8OK  DS    0H

* Testcase 9 - invalid returncode
         LA    R7,TEST9OK              * Fake subrtn retaddr
         IC    R15,OUTREC              * Save ASA char
         MVC   OUTREC,OUTREC-1         * Clear entire print line
         STC   R15,OUTREC              * Restore ASA char
         L     R15,=X'7FFFFFFF'        * Set retcode to max value
**       B     CHEAT                   * Pretend 2B did that
TEST9OK  DS    0H

* Prepare next series of testcases
         MVC   NOMINAL,=CL6' '
         MVC   RESULT,=CL6' '
         MVC   GROSS,=CL6' '
         MVC   MINPERC,=CL6' '
         MVC   MINAMT,=CL6' '
         MVC   MAXPERC,=CL6' '
         MVC   MAXAMT,=CL6' '
         MVC   TABSIZE,=XL4'00'
         MVC   TABLEN,=XL4'00'

* Testcase 10 - NOMINAL not numeric
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3
         ZAP   NOMINAL,=P'153999'      * Nominal amount     1.539,99

* Testcase 11 - GROSS not numeric
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3
         ZAP   GROSS,=P'2578900'       * Gross income      25.789,--

* Testcase 12 - MINPERC not numeric
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3
         ZAP   MINPERC,=P'10'          * Perc lower threshold 1,0%

* Testcase 13 - MINAMT not numeric
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3
         ZAP   MINAMT,=P'1500'         * Lower threshold    15,--

* Testcase 14 - MAXPERC not numeric
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3
         ZAP   MAXPERC,=P'750'         * Perc upper threshold 75,0%

* Testcase 15 - MAXAMT niet numeriek
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3
         ZAP   MAXAMT,=P'1800000'      * Upper threshold   18.000,--

* Testcase 16 - TABSIZE = 0
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 17 - TABSIZE &lt; 0
         MVC   TABSIZE,=H'-3'          * Insert negative value
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3
         MVC   TABSIZE,=H'3'           * 3 elements initially

* Testcase 18 - TABLEN = 0
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 19 - TABLEN &lt; 0
         MVC   TABLEN,=H'-16'          * Insert negative value
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3
         MVC   TABLEN,=H'16'           * elementlengte = 16

* Testcase 20 - NOMINAL (&gt;0) &lt; MINAMT
         ZAP   NOMINAL,=P'47999'       * Nominal amount       479,99
         ZAP   MINAMT,=P'48000'        * Lower threshold      480,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 21 - NOMINAL (0) &lt; MINAMT
         ZAP   NOMINAL,=P'0'           * Nominal amount         0,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 22 - NOMINAL (&lt;0) &lt; MINAMT
         ZAP   NOMINAL,=P'-155500'     * Nominal amount    -1.550,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 23 - NOMINAL = MINAMT
         ZAP   NOMINAL,=P'48000'       * Nominal amount       480,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3


* Testcase 24 - NOMINAL &gt; MINAMT
         ZAP   NOMINAL,=P'48001'       * Nominal amount       480,01
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 25 - NOMINAL (&gt;0) &lt; PERC(GROSS) (no rounding)
         ZAP   NOMINAL,=P'54099'       * Nominal amount       540,99
         ZAP   GROSS,=P'1082000'       * Gross income      10.820,--
         ZAP   MINPERC,=P'50'          * Min perc.              5,0%
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 26 - NOMINAL (&gt;0) &lt; PERC(GROSS) (rounded)
         ZAP   GROSS,=P'1083980'       * Gross income      10.839,80
         ZAP   MINPERC,=P'50'          * Min perc.              5,0%
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 27 - NOMINAL = PERC(BRUTO)
         ZAP   NOMINAL,=P'54100'       * Nominal amount       541,--
         ZAP   GROSS,=P'1082000'       * Gross income      10.820,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 28 - NOMINAL &gt; PERC(GROSS)
         ZAP   NOMINAL,=P'54101'       * Nominal amount       541,01
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 29 - GROSS = 0
         ZAP   GROSS,=P'0'             * Gross income           0,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 30 - GROSS &lt; 0
         ZAP   GROSS,=P'-1'            * Gross income          -0,01
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 30 - GROSS &gt; 0
         ZAP   GROSS,=P'1082000'       * Gross income      10.820,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 31 - Maximized at MAXAMT (&gt;0)
         ZAP   MAXAMT,=P'48000'        * Upper threshold      480,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 32 - Maximized at MAXBEDR (=0)
         ZAP   MAXAMT,=P'0'            * Upper threshold        0,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 33 - Maximized at MAXPERC(GROSS)
         ZAP   NOMINAL,=P'216401'      * Nominal amount     2.164,01
         ZAP   MAXAMT,=P'580000'       * Upper threshold    5.800,--
         ZAP   MAXPERC,=P'200'         * Max. percentage       20,0%
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 34 - Not maximized NOMINAL &lt; MAXPERC(GROSS)
         ZAP   NOMINAL,=P'216399'      * Nominal amount     2.163,99
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 35 - Not maximized NOMINAL = MAXPERC(GROSS)
         ZAP   NOMINAL,=P'216400'      * Nominal amount     2.164,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 36 - Not maximized after rounding
         ZAP   GROSS,=P'1081501'       * Gross income      10.815,01
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 37 - Maximized after rounding
         ZAP   GROSS,=P'1081499'       * Gross income      10.814,99
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3
         ZAP   GROSS,=P'1082000'       * Gross income      10.820,--

*
* Prepare for table tests
         LH    R10,TABLEN
         L     R11,TABPTR              * Point 1st entry
         USING TABENT,R11              * Set addressable

* Testcase 38 - No applicable table entry
         MVC   TABSIZE,=H'1'           * Only one element
         ZAP   TABMAX,=P'100'          * Up to 1,-- inclusive
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 39 - No applicable table entry
         MVC   TABSIZE,=H'3'           * Reset to 3 elements
         LA    R11,0(R10,R11)          * Point entry 2
         ZAP   TABMAX,=P'200'          * Up to 2,-- inclusive
         LA    R11,0(R10,R11)          * Point entry 3
         ZAP   TABMAX,=P'300'          * Up to 3,-- inclusive
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 40 - First table entry applicable
         L     R11,TABPTR              * Point 1st entry
         ZAP   TABMAX,=P'500000'       * Up to 5.000,-- inclusive
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 41 - Second table entry applicable
         ZAP   TABMAX,=P'150000'       * Up to 1.500,-- inclusive
         LA    R11,0(R10,R11)          * Point entry 2
         ZAP   TABMAX,=P'300000'       * Up to 3.000,-- inclusive
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

* Testcase 42 - Different table, two elements, different length
*               Last entry applicable, rounding required
         MVC   TABSIZE,=H'2'           * Two entries
         MVC   TABLEN,=H'20'           *  of 20 bytes each
         LA    R11,TABLE2              * Point second table
         ST    R11,TABPTR              * Set ptr in parmarea
         LH    R10,TABLEN              * Correct element length
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call ASSGN3

         PUT   SYSOUT,TRAILER          * Write trailer record
         CLOSE (SYSOUT)

         DROP  R11                     * Tabentry no longer in use
***********************************************************************
*
* Program exit, returncode already in R15
*
***********************************************************************
EXIT     DS    0H                      * Workarea handling
         L     R13,4(,R13)             * Get ptr to prev savearea
         LM    R14,R12,12(R13)         * Reset all other registers
         XR    R15,R15                 * Set returncode
         BR    R14                     * Return

***********************************************************************
*
* Subroutine for calling subprogram ASSGN3
*
***********************************************************************
CALL2B   DS    0H                      * Workarea handling
         LR    R7,R14                  * Save return address

         L     R15,SUBPGM              * Point ASSGN3
         BASR  R14,R15                 * Call ASSGN3
CHEAT    DS    0H                      * For testing errors in 2B
         MVI   OUTREC+1,C'0'           * Assume RC=0
         LTR   R15,R15                 * Retcode ok?
         BZ    CALL2BOK                * Yes: continue
         MVI   OUTREC+1,C'4'           * Assume RC=4
         CH    R15,=H'4'               * Retcode 4?
         BE    CALL2BOK                * Yes: continue
         MVC   RESULT,NORESULT         * Force invalid value
         MVI   OUTREC+1,C'8'           * Assume RC=8
         CH    R15,=H'8'               * Retcode 8?
         BE    CALL2BOK                * Yes: continue
         MVC   OUTREC+1(2),=C'12'      * Assume RC=12
         CH    R15,=H'12'              * For retcode 12
         BE    REASON12                *   build error message
         MVC   OUTREC+1(2),=C'  '      * Remove assumed RC
*
* invalid return code
         CVD   R15,WORKDEC             * Show returncode
         MVC   OUTREC+1(L'CODEMASK),CODEMASK  in decimal format
         ED    OUTREC+1(L'CODEMASK),WORKDEC      as print data
         MVC   OUTREC+L'OUTREC-L'ERRMSG(L'ERRMSG),ERRMSG0
         B     CALL2BOK                * Ja: ga verder

REASON12 DS    0H                      * Handle retcode 12
*
* RC=12, hence internal error, reasoncode in r0 determines which
* error message we need to create because ASSGN3 cannot produce an
* error message for internal errors
*
         LA    R15,MAXREASON           * Max valid reasoncode
         CLR   R0,R15                  * Valid reasoncode?
         BNH   REASONOK                * Yes: ok
         CVD   R0,WORKDEC              * Show reasoncode
         MVC   OUTREC+1(L'CODEMASK),CODEMASK  in decimal format
         ED    OUTREC+1(L'CODEMASK),WORKDEC      as print data
         MVC   OUTREC+1(2),=C'12'      * Re-insert retcode
         XR    R0,R0                   * issue general error message
REASONOK DS    0H                      *
         LA    R1,L'ERRMSG             * Length of text entry
         MR    R0,R0                   * R1 := 35*reasoncode
*                                      *    is offset into errmsg table
         LA    R15,ERRMSG(R1)          * Point to correct error msg
         MVC   OUTREC+L'OUTREC-L'ERRMSG(L'ERRMSG),0(R15)

CALL2BOK DC    0H
*
* Call complete: print results - and header if needed
         BCT   R8,PRTDATA              * R8 = residual line count
         PUT   SYSOUT,HEADER           * Write header line
         LA    R8,LPP                  * Start with fresh count
         MVI   OUTREC,C'0'             * Add blank line before data

PRTDATA  DS    0H                      * Print a data line
         PUT   SYSOUT,OUTREC           * Write report record
         MVC   OUTREC,OUTREC-1         * Clear entire print line

         BR    R7                      * Return

         DROP  ,                       * End all USINGs
***********************************************************************
*
* Data areas - constants
*
***********************************************************************
         LTORG ,
SUBPGM   DC    V(ASSGN3)

SYSOUT   DCB   DDNAME=SYSOUT,DSORG=PS,MACRF=PM,LRECL=80,RECFM=FBA

HEADER   DC    CL81'1      Nominal amount   Deductible amount'
TRAILER  DC    CL81'0*** End of Report ***                   '
ERRMSG0  DC    CL35'Unknown returncode by ASSGN3!     '
ERRMSG   DC    CL35'Unknown reasoncode by ASSGN3!     '
         DC    CL35'ASSGN3 RSN=1 parmlist ptr wrong!  ' Reason=1
         DC    CL35'ASSGN3 RSN=2 parmarea ptr wrong!  ' Reason=2
         DC    CL35'ASSGN3 RSN=3 prtbuf ptr missing!  ' Reason=3
         DC    CL35'ASSGN3 RSN=4 prtbuf ptr wrong!    ' Reason=4
         DC    CL35'ASSGN3 RSN=5 superfluous parms!   ' Reason=5
         DC    CL35'ASSGN3 RSN=6 table ptr wrong!     ' Reason=6

NORESULT DC    CL(L'RESULT)' '         * To invalidate RESULT field
MASK     DC    4X'2020204B'
         DC    X'20212060'
CODEMASK EQU   MASK,*-MASK
***********************************************************************
*
* Data areas - variables
*
***********************************************************************
SAVEAREA DC    18F'0'                  * Register savearea
WORKDEC  DC    D'0'                    * Workarea for CVD

         DC    CL1' '                  * Blank for wiping OUTREC
OUTREC   DC    CL81' '                 * Record area
*
PARMPTR  DC    A(0)                    * Ptr to Parmlist
LINEPTR  DC    A(0)                    * Ptr to print line
*
PARMAREA DS    0C                      *
NOMINAL  DC    PL6'154000'             * Nominal amount     1.540,--
RESULT   DC    PL6'0'                  * Result amount
GROSS    DC    PL6'2578900'            * Gross income      25.789,--
MINPERC  DC    PL2'50'                 * Perc lower threshold   5,0%
MINAMT   DC    PL6'50000'              * Min. Lower threshold 500,--
MAXPERC  DC    PL2'250'                * Perc upper threshold  25,0%
MAXAMT   DC    PL6'1800000'            * Max. upper thres. 18.000,--
TABSIZE  DC    H'3'                    * nr of table elements
TABLEN   DC    H'16'                   * table element length
TABPTR   DC    A(0)                    * point to table
*
TABLE1   DC    0D
ENT1_1   DC    PL6'500000'             * 5.000,--
         DC    PL2'400'                * 40,0%
         DC    XL8'00'
ENT1_2   DC    PL6'1500000'            * 15.000,--
         DC    PL2'500'                * 50,0%
         DC    XL8'00'
ENT1_3   DC    PL6'99999999999'        *
         DC    PL2'750'                * 75,0%
         DC    XL8'00'
*
TABLE2   DC    0D
ENT2_1   DC    PL6'200000'             * 2.000,--
         DC    PL2'183'                * 18,3%
         DC    XL12'00'
ENT2_2   DC    PL6'400000'             * 4.000,--
         DC    PL2'217'                * 21,7%
         DC    XL12'00'
*
         PRINT NOGEN
         DCBD  DSORG=PS                * Voor z390 variant of DCB
*
TABENT   DSECT ,
TABMAX   DS    PL6'0'                  * Maximum amount
TABPERC  DS    PL2                     * Percentage
         DS    0X                      * Filler - size unknown
*
         END
</pre>
/HTML

         HTMLDEF SLFTST3A.UKF
<!-- UK -->
<p class="footer" align="center">
 This text was written by A.F. Kornelis, translated by A.F. Kornelis.
 <br/>
 Text and translation: &copy; Copyright: A.F. Kornelis, 2007-2011.
 All rights reserved.<br />
 <a href="mailto:abe@bixoft.nl">e-mail</a> the author.</p>

/HTML

         HTMLDEF SLFTST3A.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/slftst3a.htm -->
<!-- -->
<title>HLASM - Test-driver voor opgave 3 van Assembler test</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<link rev="Zelftest voor Assembler vaardigheid" href="selftest.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe" />
<meta http-equiv="description"
      content="Test-driver voor opgave 3 van de zelftest voor Assembler
      vaardigheid" />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF SLFTST3A.NLT
<!-- NL -->
<h1 align="center">Test-driver voor opgave 3 van Assembler test</h1>

<pre>
SLFTST3A TITLE 'Driver voor toets-opgave 3 Aftrekpost'
***********************************************************************
* Start create : 12-04-2007
* 1st delivery : 12-04-2007
* Designer     : AF Kornelis
* Programmer   : AF Kornelis
***********************************************************************

*
* Dit programma is een test-driver voor het programma dat in de
* opgave gevraagd is te maken.
* De test-aanroepen 1 t/m 9 zijn afgesterd:
* dit betreft diverse testen die niet gevraagd zijn in de opgave.
*

***********************************************************************
*
* Constants and definitions
*
***********************************************************************
MAXREASON EQU   6                      * Max. reason code from TOETS3
LPP       EQU   12                     * Max. data lines per page

***********************************************************************
*
* Program entry and linkage
*
***********************************************************************
         YREGS ,                       * Define register equates

SLFTST3A CSECT ,                       *
SLFTST3A AMODE 31
SLFTST3A RMODE 24

         USING SLFTST3A,R15            * Establish addressability
         B     START                   * Skip header data
         DC    AL1(START-*),C'SLFTST3A &amp;SYSDATE &amp;SYSTIME'
START    DS    0H
         STM   R14,R12,12(R13)         * Save GPRs
         LR    R12,R15                 * Copy base address
         DROP  R15                     * No longer needed
         USING SLFTST3A,R12            * Re-establish addressability

         LA    R2,SAVEAREA             * Point new savearea
         ST    R2,8(,R13)              * Set ptr to new savearea
         ST    R13,4(,R2)              * Set ptr from ne to prev save
         LR    R13,R2                  * Activate new savearea

***********************************************************************
*
* Obtain test results
*
***********************************************************************
         OPEN  (SYSOUT,OUTPUT)
         MVC   OUTREC,OUTREC-1         * Wipe entire print line
         LA    R8,1                    * Init data line count
*                                      * to force header on first put

* Testcase 1 - invalid pointer
         XR    R1,R1                   * Destroy parm ptr
**       BAS   R14,CALL2B              * Call TOETS3
         LA    R1,PARMPTR              * Set up parm ptr

* Testcase 2 - invalid pointer to parmarea
**       BAS   R14,CALL2B              * Call TOETS3
         LA    R15,PARMAREA
         ST    R15,PARMPTR
         OI    PARMPTR,X'80'

* Testcase 3 - missing pointer to printer record
         LA    R1,PARMPTR              * Set up parm ptr
**       BAS   R14,CALL2B              * Call TOETS3
         NI    PARMPTR,X'7F'

* Testcase 4 - invalid pointer to printer record
         LA    R1,PARMPTR              * Set up parm ptr
**       BAS   R14,CALL2B              * Call TOETS3
         LA    R15,OUTREC+1            * Pass only data area, no ASA
         ST    R15,PARMPTR+4

* Testcase 5 - too many parameters in parmarea
         LA    R1,PARMPTR              * Set up parm ptr
**       BAS   R14,CALL2B              * Call TOETS3
         OI    PARMPTR+4,X'80'

* Testcase 6 - invalid pointer to percentage table
         LA    R1,PARMPTR              * Set up parm ptr
**       BAS   R14,CALL2B              * Call TOETS3
         LA    R15,TABLE1
         ST    R15,TABPTR

* Testcase 7 - invalid reasoncode (too high)
         LA    R7,TEST7OK              * Fake subrtn retaddr
         IC    R15,OUTREC              * Save ASA char
         MVC   OUTREC,OUTREC-1         * Clear entire print line
         STC   R15,OUTREC              * Restore ASA char
         LA    R15,12                  * Set retcode=12
         LA    R0,MAXREASON+1          * Set reason too high
**       B     CHEAT                   * Pretend 2B did that
TEST7OK  DS    0H

* Testcase 8 - invalid reasoncode (negative)
         LA    R7,TEST8OK              * Fake subrtn retaddr
         IC    R15,OUTREC              * Save ASA char
         MVC   OUTREC,OUTREC-1         * Clear entire print line
         STC   R15,OUTREC              * Restore ASA char
         LA    R15,12                  * Set retcode=12
         LA    R0,1                    * Set reason to
         LNR   R0,R0                   *        Minus 1
**       B     CHEAT                   * Pretend 2B did that
TEST8OK  DS    0H

* Testcase 9 - invalid returncode
         LA    R7,TEST9OK              * Fake subrtn retaddr
         IC    R15,OUTREC              * Save ASA char
         MVC   OUTREC,OUTREC-1         * Clear entire print line
         STC   R15,OUTREC              * Restore ASA char
         L     R15,=X'7FFFFFFF'        * Set retcode to max value
**       B     CHEAT                   * Pretend 2B did that
TEST9OK  DS    0H

* Prepare next series of testcases
         MVC   NOMINAAL,=CL6' '
         MVC   RESULT,=CL6' '
         MVC   BRUTO,=CL6' '
         MVC   MINPERC,=CL6' '
         MVC   MINBEDR,=CL6' '
         MVC   MAXPERC,=CL6' '
         MVC   MAXBEDR,=CL6' '
         MVC   TABSIZE,=XL4'00'
         MVC   TABLEN,=XL4'00'

* Testcase 10 - NOMINAAL niet numeriek
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3
         ZAP   NOMINAAL,=P'153999'     * Nominaal bedrag    1.539,99

* Testcase 11 - BRUTO niet numeriek
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3
         ZAP   BRUTO,=P'2578900'       * Bruto inkomen     25.789,--

* Testcase 12 - MINPERC niet numeriek
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3
         ZAP   MINPERC,=P'10'          * Perc ondergrens    1,0%

* Testcase 13 - MINBEDR niet numeriek
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3
         ZAP   MINBEDR,=P'1500'        * Abs. ondergrens       15,--

* Testcase 14 - MAXPERC niet numeriek
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3
         ZAP   MAXPERC,=P'750'         * Perc bovengrens   75,0%

* Testcase 15 - MAXBEDR niet numeriek
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3
         ZAP   MAXBEDR,=P'1800000'     * Abs. bovengrens   18.000,--

* Testcase 16 - TABSIZE = 0
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3
         MVC   TABSIZE,=H'-3'          * 3 elementen initieel

* Testcase 17 - TABSIZE &lt; 0
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3
         MVC   TABSIZE,=H'3'           * 3 elementen initieel

* Testcase 18 - TABLEN = 0
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3
         MVC   TABLEN,=H'-16'          * elementlengte = 16

* Testcase 19 - TABLEN &lt; 0
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3
         MVC   TABLEN,=H'16'           * elementlengte = 16

* Testcase 20 - NOMINAAL (&gt;0) &lt; MINBEDR
         ZAP   NOMINAAL,=P'47999'      * Nominaal bedrag      479,99
         ZAP   MINBEDR,=P'48000'       * Abs. ondergrens      480,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 21 - NOMINAAL (0) &lt; MINBEDR
         ZAP   NOMINAAL,=P'0'          * Nominaal bedrag        0,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 22 - NOMINAAL (&lt;0) &lt; MINBEDR
         ZAP   NOMINAAL,=P'-155500'    * Nominaal bedrag   -1.550,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 23 - NOMINAAL = MINBEDR
         ZAP   NOMINAAL,=P'48000'      * Nominaal bedrag      480,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3


* Testcase 24 - NOMINAAL &gt; MINBEDR
         ZAP   NOMINAAL,=P'48001'      * Nominaal bedrag      480,01
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 25 - NOMINAAL (&gt;0) &lt; PERC(BRUTO) (zonder afronden)
         ZAP   NOMINAAL,=P'54099'      * Nominaal bedrag      540,99
         ZAP   BRUTO,=P'1082000'       * Bruto inkomen     10.820,--
         ZAP   MINPERC,=P'50'          * Min perc.              5,0%
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 26 - NOMINAAL (&gt;0) &lt; PERC(BRUTO) (met afronden)
         ZAP   BRUTO,=P'1083980'       * Bruto inkomen     10.839,80
         ZAP   MINPERC,=P'50'          * Min perc.              5,0%
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 27 - NOMINAAL = PERC(BRUTO)
         ZAP   NOMINAAL,=P'54100'      * Nominaal bedrag      541,--
         ZAP   BRUTO,=P'1082000'       * Bruto inkomen     10.820,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 28 - NOMINAAL &gt; PERC(BRUTO)
         ZAP   NOMINAAL,=P'54101'      * Nominaal bedrag      541,01
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 29 - BRUTO = 0
         ZAP   BRUTO,=P'0'             * Bruto inkomen          0,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 30 - BRUTO &lt; 0
         ZAP   BRUTO,=P'-1'            * Bruto inkomen         -0,01
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 30 - BRUTO &gt; 0
         ZAP   BRUTO,=P'1082000'       * Bruto inkomen     10.820,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 31 - Gemaximeerd op MAXBEDR (&gt;0)
         ZAP   MAXBEDR,=P'48000'       * Max. bedrag          480,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 32 - Gemaximeerd op MAXBEDR (=0)
         ZAP   MAXBEDR,=P'0'           * Max. bedrag            0,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 33 - Gemaximeerd op MAXPERC(BRUTO)
         ZAP   NOMINAAL,=P'216401'     * Nominaal bedrag    2.164,01
         ZAP   MAXBEDR,=P'580000'      * Max. bedrag        5.800,--
         ZAP   MAXPERC,=P'200'         * Max. percentage       20,0%
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 34 - Niet gemaximeerd NOMINAAL &lt; MAXPERC(BRUTO)
         ZAP   NOMINAAL,=P'216399'     * Nominaal bedrag    2.163,99
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 35 - Niet gemaximeerd NOMINAAL = MAXPERC(BRUTO)
         ZAP   NOMINAAL,=P'216400'     * Nominaal bedrag    2.164,--
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 36 - Niet gemaximeerd na afronding
         ZAP   BRUTO,=P'1081501'       * Bruto inkomen     10.815,01
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 37 - Gemaximeerd na afronding
         ZAP   BRUTO,=P'1081499'       * Bruto inkomen     10.814,99
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3
         ZAP   BRUTO,=P'1082000'       * Bruto inkomen     10.820,--

*
* Prepare for table tests
         LH    R10,TABLEN
         L     R11,TABPTR              * Point 1st entry
         USING TABENT,R11              * Set addressable

* Testcase 38 - Geen tabel entry van toepassing
         MVC   TABSIZE,=H'1'           * Slechts een element
         ZAP   TABMAX,=P'100'          * T/m 1,00 Euro
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 39 - Geen tabel entry van toepassing
         MVC   TABSIZE,=H'3'           * Slechts een element
         LA    R11,0(R10,R11)          * Point entry 2
         ZAP   TABMAX,=P'200'          * T/m 2,00 Euro
         LA    R11,0(R10,R11)          * Point entry 3
         ZAP   TABMAX,=P'300'          * T/m 3,00 Euro
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 40 - Eerste tabel entry van toepassing
         L     R11,TABPTR              * Point 1st entry
         ZAP   TABMAX,=P'500000'       * T/m 5.000,-- Euro
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 41 - Tweede tabel entry van toepassing
         ZAP   TABMAX,=P'150000'       * T/m 1.500,-- Euro
         LA    R11,0(R10,R11)          * Point entry 2
         ZAP   TABMAX,=P'300000'       * T/m 3.000,-- Euro
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

* Testcase 42 - Andere tabel van twee elementen, andere lengte
*               Laatste tabel entry van toepassing en afronden
         MVC   TABSIZE,=H'2'           * Twee entries
         MVC   TABLEN,=H'20'           *    van 20 bytes
         LA    R11,TABLE2              * Point tweede tabel
         ST    R11,TABPTR              * Set ptr in parmarea
         LH    R10,TABLEN              * Corrigeer element-lengte
         LA    R1,PARMPTR              * Set up parm ptr
         BAS   R14,CALL2B              * Call TOETS3

         PUT   SYSOUT,TRAILER          * Write trailer record
         CLOSE (SYSOUT)

         DROP  R11                     * Tabentry no longer in use
***********************************************************************
*
* Program exit, returncode already in R15
*
***********************************************************************
EXIT     DS    0H                      * Workarea handling
         L     R13,4(,R13)             * Get ptr to prev savearea
         LM    R14,R12,12(R13)         * Reset all other registers
         XR    R15,R15                 * Set returncode
         BR    R14                     * Return

***********************************************************************
*
* Subroutine voor aanroepen subprogramma
*
***********************************************************************
CALL2B   DS    0H                      * Workarea handling
         LR    R7,R14                  * Save return address

         L     R15,SUBPGM              * Point naar TOETS3
         BASR  R14,R15                 * Call TOETS3
CHEAT    DS    0H                      * For testing errors in 2B
         MVI   OUTREC+1,C'0'           * Assume RC=0
         LTR   R15,R15                 * Retcode ok?
         BZ    CALL2BOK                * Ja: ga verder
         MVI   OUTREC+1,C'4'           * Assume RC=4
         CH    R15,=H'4'               * Retcode 4?
         BE    CALL2BOK                * Ja: ga verder
         MVC   RESULT,NORESULT         * Forceer ongeldige waarde
         MVI   OUTREC+1,C'8'           * Assume RC=8
         CH    R15,=H'8'               * Retcode 8?
         BE    CALL2BOK                * Ja: ga verder
         MVC   OUTREC+1(2),=C'12'      * Assume RC=12
         CH    R15,=H'12'              * Bij retcode 12
         BE    REASON12                *   error message bouwen
         MVC   OUTREC+1(2),=C'  '      * Remove assumed RC
*
* ongeldige return code
         CVD   R15,WORKDEC             * Show returncode
         MVC   OUTREC+1(L'CODEMASK),CODEMASK  in decimal format
         ED    OUTREC+1(L'CODEMASK),WORKDEC      as print data
         MVC   OUTREC+L'OUTREC-L'ERRMSG(L'ERRMSG),ERRMSG0
         B     CALL2BOK                * Ja: ga verder

REASON12 DS    0H                      * Handle retcode 12
*
* RC=12, dus interne fout, reasoncode in r0 bepaalt welke
* Error message moeten we hier opbouwen omdat TOETS3 bij
* interne fouten geen print-data kan produceren
*
         LA    R15,MAXREASON           * Max geldige reasoncode
         CLR   R0,R15                  * Geldige reasoncode?
         BNH   REASONOK                * Ja: Akkoord
         CVD   R0,WORKDEC              * Show reasoncode
         MVC   OUTREC+1(L'CODEMASK),CODEMASK  in decimal format
         ED    OUTREC+1(L'CODEMASK),WORKDEC      as print data
         MVC   OUTREC+1(2),=C'12'      * Re-insert retcode
         XR    R0,R0                   * geef algmene foutmelding
REASONOK DS    0H                      *
         LA    R1,L'ERRMSG             * Lengte tekst-entry
         MR    R0,R0                   * R1 := 35*reasoncode
*                                      *    is offset in errmsg tabel
         LA    R15,ERRMSG(R1)          * Point to correct error msg
         MVC   OUTREC+L'OUTREC-L'ERRMSG(L'ERRMSG),0(R15)

CALL2BOK DC    0H
*
* Call complete: print results - and header if needed
         BCT   R8,PRTDATA              * R8 = residual line count
         PUT   SYSOUT,HEADER           * Write header line
         LA    R8,LPP                  * Start with fresh count
         MVI   OUTREC,C'0'             * Add blank line before data

PRTDATA  DS    0H                      * Print a data line
         PUT   SYSOUT,OUTREC           * Write report record
         MVC   OUTREC,OUTREC-1         * Clear entire print line

         BR    R7                      * Return

         DROP  ,                       * End all USINGs
***********************************************************************
*
* Data areas - constants
*
***********************************************************************
         LTORG ,
SUBPGM   DC    V(TOETS3)

SYSOUT   DCB   DDNAME=SYSOUT,DSORG=PS,MACRF=PM,LRECL=80,RECFM=FBA

HEADER   DC    CL81'1     Nominaal bedrag   Aftrekbaar bedrag'
TRAILER  DC    CL81'0*** Einde Overzicht ***                 '
ERRMSG0  DC    CL35'Onbekende returncode van TOETS3!  '
ERRMSG   DC    CL35'Onbekende reasoncode van TOETS3!  '
         DC    CL35'TOETS3 RSN=1 parmlist ptr fout!   ' Reason=1
         DC    CL35'TOETS3 RSN=2 parmarea ptr fout!   ' Reason=2
         DC    CL35'TOETS3 RSN=3 prtbuf ptr ontbreekt!' Reason=3
         DC    CL35'TOETS3 RSN=4 prtbuf ptr fout!     ' Reason=4
         DC    CL35'TOETS3 RSN=5 overtollige parms!   ' Reason=5
         DC    CL35'TOETS3 RSN=6 tabel ptr fout!      ' Reason=6

NORESULT DC    CL(L'RESULT)' '         * To invalidate RESULT field
MASK     DC    4X'2020204B'
         DC    X'20212060'
CODEMASK EQU   MASK,*-MASK
***********************************************************************
*
* Data areas - variables
*
***********************************************************************
SAVEAREA DC    18F'0'                  * Register savearea
WORKDEC  DC    D'0'                    * Workarea for CVD

         DC    CL1' '                  * Blank for wiping OUTREC
OUTREC   DC    CL81' '                 * Record area
*
PARMPTR  DC    A(0)                    * Ptr to Parmlist
LINEPTR  DC    A(0)                    * Ptr to print line
*
PARMAREA DS    0C                      *
NOMINAAL DC    PL6'154000'             * Nominaal bedrag   1.540,--
RESULT   DC    PL6'0'                  * Resultaat-bedrag
BRUTO    DC    PL6'2578900'            * Bruto inkomen     25.789,--
MINPERC  DC    PL2'50'                 * Perc ondergrens   5,0%
MINBEDR  DC    PL6'50000'              * Abs. ondergrens   500,--
MAXPERC  DC    PL2'250'                * Perc bovengrens   25,0%
MAXBEDR  DC    PL6'1800000'            * Abs. bovengrens   18.000,--
TABSIZE  DC    H'3'                    * nr of table elements
TABLEN   DC    H'16'                   * table element length
TABPTR   DC    A(0)                    * point to table
*
TABLE1   DC    0D
ENT1_1   DC    PL6'500000'             * 5.000,--
         DC    PL2'400'                * 40,0%
         DC    XL8'00'
ENT1_2   DC    PL6'1500000'            * 15.000,--
         DC    PL2'500'                * 50,0%
         DC    XL8'00'
ENT1_3   DC    PL6'99999999999'        *
         DC    PL2'750'                * 75,0%
         DC    XL8'00'
*
TABLE2   DC    0D
ENT2_1   DC    PL6'200000'             * 2.000,--
         DC    PL2'183'                * 18,3%
         DC    XL12'00'
ENT2_2   DC    PL6'400000'             * 4.000,--
         DC    PL2'217'                * 21,7%
         DC    XL12'00'
*
         PRINT NOGEN
         DCBD  DSORG=PS                * Voor z390 variant van DCB
*
TABENT   DSECT ,
TABMAX   DS    PL6'0'                  * Maximum bedrag
TABPERC  DS    PL2                     * Percentage
         DS    0X                      * Filler - size unknown
*
         END
</pre>
/HTML

         HTMLDEF SLFTST3A.NLF
<!-- NL -->
<p class="footer" align="center">
 Deze tekst is geschreven door A.F. Kornelis.<br/>
 Tekst: &copy; Copyright A.F. Kornelis, 2007-2011.
 Alle rechten voorbehouden.<br />
 <a href="mailto:abe@bixoft.nl">e-mail</a> de auteur.</p>

/HTML
