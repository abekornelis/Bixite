.*Metadata=noHTML
***********************************************************************
*
* Program entry and linkage
*
***********************************************************************
$HTMLCPY RSECT ,                       *
$HTMLCPY AMODE 31
$HTMLCPY RMODE ANY
         YREGS ,                       * Define register equates

***********************************************************************
*
* Program entry and linkage
*
***********************************************************************
         USING $HTMLCPY,R15            * Establish addressability
         B     START                   * Skip header data
         DC    AL1(START-*),C'$HTMLCPY &SYSDATE &SYSTIME'
START    DS    0H
         STM   R14,R12,12(R13)         * Save GPRs
         LR    R12,R15                 * Copy base address
         DROP  R15                     * No longer needed
         USING $HTMLCPY,R12            * Re-establish addressability

         GETMAIN RU,LV=WORKAREA_LEN    * Obtain working storage
         LR    R15,R1                  * Point new savearea
         LR    R4,R1                   * Point dynamic area
         LA    R5,WORKAREA_LEN         *
         LA    R6,0                    * There is no source
         LR    R7,R6                   *    and set pad byte to zeroes
         MVCL  R6,R4                   * Initialize dynamic area
         ST    R15,8(,R13)             * Set ptr to new savearea
         ST    R13,4(,R15)             * Set ptr from new to prev save
         LR    R13,R15                 * Activate new savearea
         USING WORKAREA,R13            * Set workarea addressable

*
* Copy model DCBs into dynamic area
         MVC   HTMLIN,MHTMLIN
         MVC   HTMLOUT,MHTMLOUT

***********************************************************************
*
* Open files
*
***********************************************************************
         OPEN  (HTMLIN,,HTMLOUT,(OUTPUT))
         LTR   R15,R15                 * Check return code
         BNZ   ERROR01                 * On error exit
*
* Read all records
         XC    HTML_LEN,HTML_LEN       * Mark buffer empty
         XC    HTMLSTAT,HTMLSTAT       * Mark buffer available
GET_REC  EQU   *
         GET   HTMLIN,HTML_IN          * Retrieve record
         LTR   R15,R15                 * Check return code
         BNZ   ERROR02                 * On error exit
*
* Write buffered record?
         CLI   HTML_IN,C'+'            * Continuation received?
         BE    NOWRITE                 * Yes: add to current buffer
         TM    HTMLSTAT,HTML_OK        * Record available?
         BNO   NOWRITE                 * No: Skip write
*
* Set correct length in RDW and write output record
PUTREC   DS    0H
         LH    R15,HTML_LEN            * Get length of data
         LTR   15,R15                  * If data (non-empty line)
         BNZ   PUTLENOK                *   then go write the line
         MVC   HTML_OUT(1),=C'  '      * Insert dummy space
         LA    R15,1                   * and set length to 1
PUTLENOK DS    0H
         LA    R14,L'HTML_RDW          * and length of prefix
         LA    R15,0(R14,R15)          * Get total length of record
         STH   R15,HTML_LEN            * Set length for write
         PUT   HTMLOUT,HTML_LEN        * Write line
         LTR   R15,R15                 * OK?
         BNZ   ERROR03                 * No: Quit
         TM    HTMLSTAT,HTML_EOD       * EODAD reached?
         BO    EXIT                    * Yes: quit
         XC    HTMLSTAT,HTMLSTAT       * Mark buffer empty again
         XC    HTML_LEN,HTML_LEN       * Reset output record length
NOWRITE  EQU   *
*
* Copy input data to output buffer
         LA    R4,HTML_OUT             * Point output buffer
         LH    R5,HTML_LEN             * Get current length
         LA    R4,0(R5,R4)             * Point 1st free byte
         LA    R14,HTML_IN             * Point input data
         LA    R15,L'HTML_TXT          * Count of valid bytes
         LA    R1,HTML_TXT+L'HTML_TXT-1 * Last valid input byte
*
* Skip all trailing spaces
TRAILSPC EQU   *
         CLI   0(R1),C' '              * Trailing space?
         BNE   TRAILOK                 * Ok: go copy real data
         BCTR  R1,R0                   * Decrement pointer
         BCT   R15,TRAILSPC            * Check next char
TRAILOK  EQU   *
*
* If current data continues previous line, handle continuation
         CLI   HTML_IN,C'+'            * Continuation requested?
         BE    CONTINUE                * Ok: Go handle continuation
COPYDATA EQU   *
         LA    R5,0(R15,R5)            * Calculate new length
         CH    R5,=AL2(L'HTML_OUT)     * Fits?
         BH    ERROR05                 * No: stop copy process
         STH   R5,HTML_LEN             * Save new length
         LR    R5,R15                  * Set Copy length
         MVCL  R4,R14                  * Copy input data to out-buffer
COPYDONE EQU   *
         OI    HTMLSTAT,HTML_OK        * Mark record available
         B     GET_REC                 * Go get next record
*
* Special code to handle continuation using + sign (strip spaces)
CONTINUE EQU   *
         LA    R14,1(,R14)             * Point next character
         BCT   R15,CONTCMD             * Decrement char count
         B     COPYDONE                * No data left to copy
CONTCMD  EQU   *                       * Check for continuation command
         CLI   0(R14),C'('             * Command starter?
         BNE   LEADSPC                 * No: go remove leading spaces
         CLI   1(R14),C'@'             * This is the only valid command
         BNE   ERROR07                 * Ouch!
         XR    R2,R2                   * Clear for TRT-function code
*              12 is an arbitrary number well within the buffer
         TRT   2(12,R14),TRTAB         * Check for valid command
         BZ    ERROR07                 * Command is too long!
         CH    R2,=X'0008'             * Erroneous character found?
         BE    ERROR07                 * Yes: issue error!
* Result must be X'04' found closing parenthesis @R1
         CLI   0(R1),C')'              * Double check
         BNE   ERROR06                 * Serious!
         LR    R6,R1                   * Addr of )
         SR    R6,R14                  * Minus addr of (
         LA    R6,1(,R6)               * Yields total bytes to skip
         LR    R7,R6                   * Total command length
         SH    R7,=H'4'                * Nr-1 of digits in command
         BM    ERROR06                 * Logic error detected
         CH    R7,=H'4'                * More than 5 digits total?
         BH    ERROR07                 * Command is incorrect
         EX    R7,PACKNR               * Pack the number
         OI    PACKEDNR+L'PACKEDNR-1,X'0F' * Insert sign
         AR    R14,R6                  * Advance start-of-text
         SR    R15,R6                  * Reduce length-of-text
         CVB   R6,PACKEDNR             * Get exact position number
         BCTR  R6,R0                   * ... Offset in buffer
         CH    R6,=AL2(L'HTML_OUT)     * Position within buffer?
         BH    ERROR05                 * Error in command!
         LA    R7,HTML_OUT-1(R6)       * Point last filler byte
         CR    R7,R4                   * Point to free section?
         BNH   FILLEROK                * No - need not add spaces
         LA    R5,HTML_OUT(R6)         * Point destination for text
         SR    R5,R4                   * Get length of filler
         XR    R0,R0                   * Source address
         LA    R1,C' '                 * Source length + pad char
         SLL   R1,24                   * Pad in bits 0-7 of low word
         MVCL  R4,R0                   * Add filler spaces to buffer
FILLEROK EQU   *                       * Intervening spaces inserted
         LA    R4,HTML_OUT(R6)         * Point text destination address
         LA    R6,HTML_OUT             * Start of buffer
         LR    R5,R4                   * Next available position
         SR    R5,R6                   * Nr. of bytes in buffer
*
LEADSPC  EQU   *
         CLI   0(R14),C' '             * Leading space?
         BNE   COPYDATA                * No: go copy remaining data
         LA    R14,1(,R14)             * Point next character
         BCT   R15,LEADSPC             * Decrement char count
         B     COPYDATA                * Go copy remaining data
PACKNR   PACK  PACKEDNR,2(0,R14)       * Pack number in +(@...)command
*
EODAD    DS    0H
         OI    HTMLSTAT,HTML_EOD       * Set EODAD reached
         B     PUTREC                  * Write final record

***********************************************************************
*
* Error routines
*
***********************************************************************
ERROR01  DS    0H
         WTO   'Could not Open files',ROUTCDE=11,DESC=(6)
         LA    R15,8
         B     EXIT

ERROR02  DS    0H
         WTO   'Could not Read htmlin',ROUTCDE=11,DESC=(6)
         LA    R15,8
         B     EODAD

ERROR03  DS    0H
         WTO   'Could not Write to htmlout',ROUTCDE=11,DESC=(6)
         LA    R15,8
         TM    HTMLSTAT,HTML_EOD       * EODAD reached?
         BO    EXIT                    * Yes: quit
         B     EODAD

ERROR04  DS    0H
         WTO   'Could not Close files',ROUTCDE=11,DESC=(6)
         LA    R15,8
         TM    HTMLSTAT,HTML_CLS       * Close executed?
         BO    EXITERR                 * Yes: quit to error exit
         B     EXIT

ERROR05  DS    0H
         WTO   'Output buffer too small',ROUTCDE=11,DESC=(6)
         LA    R15,8
         B     EODAD

ERROR06  DS    0H
         WTO   'Error in continuation handler',ROUTCDE=11,DESC=(6)
         LA    R15,12
         B     EODAD

ERROR07  DS    0H
         WTO   'Error in continuation command',ROUTCDE=11,DESC=(6)
         LA    R15,4
         B     EODAD

***********************************************************************
*
* Program exit, retcode in R15
*
***********************************************************************
EXIT     DS    0H                      * Workarea handling
         OI    HTMLSTAT,HTML_CLS       * Prevent retry to close
         CLOSE (HTMLIN,,HTMLOUT)
         LTR   R15,R15                 * OK?
         BNZ   ERROR04                 * No: Quit

EXITERR  DS    0H
         DROP  R13                     * R13 --> WORKAREA
         DROP  R12                     * R12 --> $HTMLCPY

         LR    R6,R13                  * Save ptr to workarea
         LA    R7,WORKAREA_LEN         *
         LR    R8,R15                  * Save retcode
         L     R13,4(,R13)             * Get ptr to prev savearea
         FREEMAIN RU,A=(R6),LV=(R7)    * Undo getmain for workarea

         LR    R15,R8                  * Re-establish retcode
         L     R14,12(,R13)            * Retrieve return address
*******  L     R15,16(,R13)            * Return code already in R15
         LM    R0,R12,12(R13)          * Reset all other registers
         BR    R14                     * Return

         DROP  ,

***********************************************************************
*
* Static Data areas
*
***********************************************************************
         LTORG ,
*
         DC    0D
TRTAB    DC    XL256'08'               * Flag all chars as error
         ORG   TRTAB+C')'              * End of field marker
         DC    X'04'
         ORG   TRTAB+C'0'              * Digits are valid!
         DC    10X'00'
*
* Model DCB's for input and output files
         AIF   ('&SYSASM' EQ 'z390').DCBZ390
         AIF   ('&SYSASM' EQ 'HIGH LEVEL ASSEMBLER').DFLTDCB
         AIF   ('&SYSASM' EQ 'DASM Dignus Systems/ASM').DFLTDCB
         MNOTE 12,'&&SYSASM=&SYSASM not supported!'
         AGO   .DFLTDCB
.DCBZ390 ANOP  ,
MHTMLIN  DCB   DSORG=PS,MACRF=GM,DDNAME=HTMLIN,LRECL=82,RECFM=FT,      *
               EODAD=EODAD
LHTMLIN  EQU   *-MHTMLIN
MHTMLOUT DCB   DSORG=PS,MACRF=PM,DDNAME=HTMLOUT,LRECL=255,RECFM=VT
LHTMLOUT EQU   *-MHTMLOUT
         AGO   .DCBOK
.DFLTDCB ANOP  ,
MHTMLIN  DCB   DSORG=PS,MACRF=GM,DDNAME=HTMLIN,LRECL=80,RECFM=FB,      *
               EODAD=EODAD
LHTMLIN  EQU   *-MHTMLIN
MHTMLOUT DCB   DSORG=PS,MACRF=PM,DDNAME=HTMLOUT,LRECL=255,RECFM=VB
LHTMLOUT EQU   *-MHTMLOUT
.DCBOK   ANOP  ,

***********************************************************************
*
* Dynamic Data areas
*
***********************************************************************
WORKAREA DSECT
SAVEAREA DS    18F                     * Register savearea

*
* DCB's and record areas for input and output files
HTMLIN   DS    XL(LHTMLIN)
HTMLOUT  DS    XL(LHTMLOUT)
*
* Work fields
         DC    0D
PACKEDNR DC    PL8'0'                  * number from command
*
* Status indicators
HTMLSTAT DC    X'00'
HTML_OK  EQU   X'80'                   * Record available
HTML_EOD EQU   X'40'                   * EODAD reached
HTML_CLS EQU   X'20'                   * Close executed
HTML_PLS EQU   X'02'                   * Continuation with + sign
HTML_MIN EQU   X'01'                   * Continuation with - sign
HTML_CON EQU   HTML_PLS+HTML_MIN       * Continuation, whichever
*
* Input record: cannot use column 72 because z390 treats that as
*               continuation while pre-processing the source data.
         DS    0D
HTML_IN  DS    0CL80                   * Record area
HTML_TXT DS    CL71' '                 * Html data
HTML_CNT DS    CL1' '                  * Continuation column (unusable)
HTML_SEQ DS    CL8' '                  * Sequence column
HTML_EOL DS    CL2' '                  * End-Of-Line = CRLF
*
* Output record
         DS    0D
HTML_RDW DS    0F
HTML_LEN DS    H'0'
         DS    H'0'
HTML_OUT DS    CL255' '
         DS    0D

WORKAREA_LEN EQU *-WORKAREA

         END
