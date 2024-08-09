         HTMLDEF COURSE.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/course.htm -->
<!-- -->
<title>Bixoft - Assembler courses</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft introduction / sitemap" href="intro.htm" />
<link rev="Bixoft assembler counselling" href="counsel.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe, Course" />
<meta http-equiv="description"
      content="About courses on assembler for mainframes by Bixoft." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF COURSE.UKT
<!-- UK -->
<h1 align="center">Assembler courses.</h1>

<p>We sometimes give classroom training. Ususally, however, we would
 train your
 people on the job, in your own office. This enables us to attune the
 contents
 of the course on the one hand to your knowledgeability on assembler,
 and on
 the other hand to your specific environment. Moreover, anything
 learned can
 immediately be checked and/or applied in your own real-life
 situation.</p>

<p>Topics to be treated have been classified into six categories,
 listed below.
 For each course you can make a selection from these standard lists of
 topics.
 Other topics that may be of special interest to you may be added.</p>

<ol>
 <li><a href="#part1">Introduction and general principles</a></li>
 <li><a href="#part2">Assembler starter</a></li>
 <li><a href="#part3">Assembler for application programmers</a></li>
 <li><a href="#part4">Assembler for experienced programmers</a></li>
 <li><a href="#part5">Assembler - Macro Facility</a></li>
 <li><a href="#part6">Bixoft eXtended Assembler language</a></li>
</ol>

<p>Whichever selection you make, we think at least the following
 topics need
 to be treated:</p>
<ul>
 <li>Architecture of the computer and the operating system.<br />
  Organization of virtual storage, address- and data-spaces,
  addressing modes
  and residency modes, calling mechanisms and the linkage stack.</li>
 <li>Instructions.<br />
  All unprivileged instructions from IBM's 'Principles of Operation'.
  That is to say:
  <ul>
   <li>General Instructions.</li>
   <li>Decimal Instructions.</li>
   <li>Floating-Point Instructions.</li>
   <li>Relevant Control Instructions.</li>
  </ul>
 </li>
 <li>The most relevant standard-macros from:
  <ul>
   <li>Assembler Services Reference.</li>
   <li>Macro Instructions for Data Sets.</li>
  </ul>
 </li>
 <li>Coding techniques and structured programming.<br />
  Modularization, segmentation, CSECTS and DSECTS, subroutines,
  memory management, in-line and out-of-line error handling,
  exceptions,
  abends.<br />
  &nbsp;</li>
 <li>Reusability, reenterability, refreshability.<br />
  The differences between these kinds of programs, and their
  application. The
  consequences for the way one codes such programs.</li>
 <li>Assembler directives.<br />
  Usage of CNOP for alignment, DROP and USING for addressability.
  LTORG, DC and
  DS for organizing storage areas, variables and constants. EQU for
  naming
  constants and addresses.</li>
 <li>Use of macros and conditional assembly.<br />
  Conditional assembly in open code, optimising, debugging with
  SNAP-dumps.
  The application of macros in conjunction with access methods.</li>
 <li>Design of macros.<br />
  Use of macros versus copy members. What lends itself for
  macrofication.
  Interface considerations. Documentation of macros. Directing
  expansion with
  parameters. Lists of parameters. Location of macro: in the source or
  in a
  macro library?</li>
</ul>

/HTML

         HTMLDEF COURSE.UK1
<!-- UK -->
<h3><a name="part1" id="part1">Introduction and general principles.
</a></h3>

<p>The topics for this course have been subdivided into four chapters:
</p>
<ol>
  <li>Basic computing knowledge</li>
  <li>Architectur of machine and operating system</li>
  <li>Most important control blocks</li>
  <li>Literature</li>
</ol>

<ol>
<!-- Chapter 1 -->
  <li>Basic computing knowledge
   <ul>
     <li>Components: processor, storage, peripherals</li>
     <li>Instruction processing</li>
     <li>Sequentially</li>
     <li>Conditionally</li>
     <li>Interrupts
      <ul>
        <li>Receipt</li>
        <li>Return</li>
        <li>Status information</li>
      </ul>
     </li>
     <li>Boolean logic
      <ul>
        <li>Truth tables</li>
        <li>AND, OR, XOR, NOT</li>
        <li>Implication, equivalence</li>
      </ul>
     </li>
     <li>Multi-tasking
      <ul>
        <li>Synchronisation</li>
        <li>Serialisation</li>
        <li>Semaphores</li>
        <li>Lock-out</li>
        <li>Deadlock</li>
        <li>Dispatching</li>
      </ul>
     </li>
     <li>Multi-processing
      <ul>
        <li>Tightly coupled (LPAR/MONOPLEX)</li>
        <li>Loosely coupled (SYSPLEX)</li>
      </ul>
     </li>
   </ul>
  </li>
<!-- Chapter 2 -->
  <li>Architecture of machine and operating system
   <ul>
     <li>Mainframe
      <ul>
        <li>Processors</li>
        <li>Main storage, expanded storage</li>
        <li>Devices</li>
        <li>Channels</li>
        <li>Coupling Facility</li>
        <li>Sysplex</li>
      </ul>
     </li>
     <li>Historical overview
      <ul>
        <li>360 and 370 - 24-bits</li>
        <li>370/XA - 31-bits</li>
        <li>390/ESA - ALETs</li>
      </ul>
     </li>
     <li>Virtual storage concepts
      <ul>
        <li>Dynamic Address Translation</li>
        <li>Pages, frames, slots</li>
        <li>Segment tables, page tables</li>
        <li>Address-spaces, data-spaces, hiper-spaces
         <ul>
           <li>Batch jobs, TSO-sessions, Started tasks</li>
           <li>Paging
            <ul>
              <li>Page steal</li>
              <li>Least Recently Used</li>
              <li>Reference bit, change bit</li>
            </ul>
           </li>
           <li>Organisation
            <ul>
              <li>PSA, SYS, PVT, LSQA</li>
              <li>SYS: CSA, LPA, SQA, Nucleus</li>
              <li>ESYS: Extended Nucleus, ESQA, ELPA, ECSA</li>
              <li>EPVT, ELSQA</li>
            </ul>
           </li>
         </ul>
        </li>
        <li>V=R versus V=V</li>
        <li>DAT-on versus DAT-off, TLB</li>
        <li>Primary mode versus other modes, ALB</li>
      </ul>
     </li>
     <li>Storage and addressing:
      <ul>
        <li>Absolute</li>
        <li>Real and expanded</li>
        <li>Virtual
         <ul>
           <li>Primary</li>
           <li>Secondary</li>
           <li>AR-specified</li>
           <li>Home</li>
         </ul>
        </li>
        <li>Logical</li>
        <li>Effective</li>
        <li>Wrap-around</li>
      </ul>
     </li>
     <li>Storge protection
      <ul>
        <li>Key-controlled protection</li>
        <li>Fetch protection</li>
        <li>Page protection</li>
        <li>Low-address protection</li>
      </ul>
     </li>
     <li>Registers:
      <ul>
        <li>Program Status Word
         <ul>
           <li>DAT mode</li>
           <li>PSW key</li>
           <li>Problem state versus Supervisor state</li>
           <li>Address space control</li>
           <li>Condition code</li>
           <li>Program mask</li>
           <li>Addressing mode</li>
           <li>PER mode</li>
         </ul>
        </li>
        <li>Prefix register
         <ul>
           <li>Interrupts and interrupt classes</li>
         </ul>
        </li>
        <li>Control registers</li>
        <li>Access registers</li>
        <li>General purpose registers
         <ul>
           <li>Pairs of GPRs</li>
         </ul>
        </li>
        <li>Floating point registers
         <ul>
           <li>Pairs of FPRs</li>
         </ul>
        </li>
        <li>Floating point status register</li>
        <li>Vector registers</li>
        <li>Vector status register</li>
      </ul>
     </li>
     <li>Addressing mode, residency mode, cross memory mode
      <ul>
        <li>Amode 24 versus 31, Amode any</li>
        <li>Rmode 24, any</li>
        <li>Cross memory mode</li>
        <li>Addressing modes:
         <ul>
           <li>Primary mode</li>
           <li>Secondary mode</li>
           <li>Access Register mode</li>
           <li>Home space mode</li>
         </ul>
        </li>
        <li>Using registers in instructions
         <ul>
           <li>With a base register only</li>
           <li>With both a base and an index register</li>
           <li>Using R0</li>
           <li>Simple USING and DROP statements</li>
         </ul>
        </li>
      </ul>
     </li>
     <li>Units of work
      <ul>
        <li>Address spaces, tasks, and subtasks</li>
        <li>Task mode versus SRB mode</li>
        <li>Asynchronous exits</li>
        <li>Swap-in, swap-out</li>
        <li>Dispatching</li>
      </ul>
     </li>
     <li>Overview of modes:
      <ul>
        <li>JOB/TSU/STC</li>
        <li>Task/SRB</li>
        <li>Non-reusable/reusable/reenterable/refreshable</li>
        <li>Rmode 24/ANY</li>
        <li>Amode 24/31/ANY</li>
        <li>ASC mode primary/secondary/home/AR</li>
        <li>SVC/Problem</li>
        <li>Process-must-complete mode</li>
      </ul>
     </li>
   </ul>
  </li>
<!-- Chapter 3 -->
  <li>Most important control blocks
   <ul>
     <li>PSA</li>
     <li>CVT, SCVT, ASVT</li>
     <li>ASCB, ASSB, ASXB</li>
     <li>SRB</li>
     <li>TCB, STCB, JSCB, TIOT, JFCB</li>
     <li>RB (PRB, SVRB, IRB), CDE</li>
     <li>UCB</li>
     <li>Save area chain, Linkage stack</li>
   </ul>
  </li>
<!-- Chapter 4 -->
  <li>Literature
   <ul>
     <li>z/Architecture Principles of Operation</li>
     <li>z/OS V1R1.0 MVS Extended Addressability Guide</li>
   </ul>
  </li>
</ol>

/HTML

         HTMLDEF COURSE.UK2
<!-- UK -->
<h3><a name="part2" id="part2">Assembler starter.</a></h3>

<p>The topics for this course have been subdivided into seven
 chapters:</p>
<ol>
 <li>Assembler</li>
 <li>Architecture of machine and operating system</li>
 <li>Instruction set</li>
 <li>Most relevant standard macros</li>
 <li>Coding techniques and structured programming</li>
 <li>Assembler directives</li>
 <li>Literature</li>
</ol>

<ol>
<!-- Chapter 1 -->
 <li>Assembler
  <ul>
   <li>Module formats
    <ul>
     <li>Source member
      <ul>
       <li>Label field</li>
       <li>Opcode field</li>
       <li>Operands field
        <ul>
         <li>Symbolics</li>
         <li>Literals</li>
        </ul>
       </li>
       <li>Comment field</li>
       <li>Continuation</li>
      </ul>
     </li>
     <li>Listing
      <ul>
       <li>Option summary</li>
       <li>External symbol dictonary</li>
       <li>Assembly
        <ul>
         <li>Title and using overview</li>
         <li>Location and object code</li>
         <li>Source code</li>
         <li>Macro level and name</li>
        </ul>
       </li>
       <li>Relocation dictionary</li>
       <li>Cross reference</li>
       <li>Unreferenced symbols</li>
       <li>Macro source summary</li>
       <li>Macro cross reference</li>
       <li>DSECT cross reference</li>
       <li>Using map</li>
       <li>Register cross reference</li>
       <li>Summary</li>
      </ul>
     </li>
     <li>Object member</li>
     <li>Load member</li>
    </ul>
   </li>
   <li>Types of opcode
    <ul>
     <li>Executable instructions</li>
     <li>Data instructions
      <ul>
       <li>DS versus DC</li>
       <li>LTORG</li>
       <li>CSECTs versus DSECTs</li>
      </ul>
     </li>
     <li>Assembler directives</li>
     <li>Conditional assembly</li>
    </ul>
   </li>
   <li>Linkage editor</li>
   <li>Loader</li>
  </ul>
 </li>
<!-- Chapter 2 -->
 <li>Architecture of machine and operating system
  <ul>
   <li>Registers
    <ul>
     <li>GPRs and pairs of GPRs</li>
     <li>Addressing and R0</li>
    </ul>
   </li>
   <li>Calling conventions
    <ul>
     <li>Save areas and save area chaining</li>
     <li>Usage of R13 as save-area pointer</li>
     <li>Usage of R14 for return adress</li>
     <li>Usage of R15 for entry-point / returncode (n*4)</li>
     <li>Usage of R1 as parm-pointer / parmlist pointer / Reason code
      / result value
      <ul>
       <li>Lay-out of JCL-parm</li>
       <li>Lay-out of parmlist, end-of-plist marker</li>
      </ul>
     </li>
     <li>Usage of R0 as extra parm / result value</li>
    </ul>
   </li>
   <li>Calling mechanisms
    <ul>
     <li>SVC + LPSW --> FLIH+SLIH</li>
     <li>BAL/BALR + BR --> obsolete</li>
     <li>BAS/BASR + BSM/BR --> Fast</li>
     <li>BASSM + BSM --> Glueing</li>
     <li>PC/BAKR + PR --> Stack</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 3 -->
 <li>Instruction set
  <ul>
   <li>Data formats
    <ul>
     <li>Zoned data format, Sign, ASCII/EBCDIC</li>
     <li>Binary data format
      <ul>
       <li>Signed / unsigned</li>
       <li>Halfword / fullword / doubleword</li>
      </ul>
     </li>
     <li>Address format: 24-bit, 31-bit, Amode bit, ALETs</li>
     <li>String formats</li>
     <li>Alignment</li>
    </ul>
   </li>
   <li>Unprivileged instructions
    <ul>
     <li>Arithmetic operations
      <ul>
       <li>Add: A, AR, AH, AHI, AL, ALR</li>
       <li>Subtract: S, SR, SH, SL, SLR</li>
       <li>Multiply: M, MR, MH, MHI, MS, MSR</li>
       <li>Divide: D, DR</li>
      </ul>
     </li>
     <li>Logical operations
      <ul>
       <li>Compare: C, CR, CH, CHI, CL, CLR, CLI, CLC, CLM, CLCL,
        CLCLE,
        TM, TMH, TML, CLST, CUSE</li>
       <li>And: N, NR, NI, NC</li>
       <li>Or: O, OR, OI, OC</li>
       <li>Exclusive or: X, XR, XI, XC</li>
      </ul>
     </li>
     <li>Moving data
      <ul>
       <li>Register to register: LR, LTR, LCR, LNR, LPR</li>
       <li>Storage to register: L, LH, LHI, LM, IC, ICM</li>
       <li>Register to storage: ST, STH, STM, STC, STCM</li>
       <li>Storage to storage: MVC, MVI, MVCIN, MVCL, MVCLE</li>
       <li>Other: LA</li>
      </ul>
     </li>
     <li>Program flow control
      <ul>
       <li>Branching: BC, BCR, BAL, BALR, BAS, BASR, BASSM, BSM, SVC +
        BRAS, BRC</li>
       <li>Extended mnemonics: B, BE, BNE, BL, BNL, BH, BNH, BM, BNM,
        BZ,
        BNZ, BO, BNO, BP, BNP, BR, BER, BNER, BLR, BNLR, BHR, BNHR,
        BMR, BNMR, BZR, BNZR, BOR, BNOR, BPR, BNPR</li>
      </ul>
     </li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 4 -->
 <li>Most relevant standard macros
  <ul>
   <li>Program control
    <ul>
     <li>Standard linkage: SAVE and RETURN</li>
     <li>Abort program: ABEND</li>
     <li>Invoke sub-program statically: CALL</li>
     <li>Invoke sub-program dynamically: IDENTIFY and LINK/LINKX or
      LOAD
      and DELETE with BR/BASR/BASSM</li>
     <li>Program transfer: XCTL/XCTLX</li>
    </ul>
   </li>
   <li>Time
    <ul>
     <li>Determine current time: TIME or CONVTOD, STCKCONV</li>
     <li>Used CPU-time in task-mode: TIMEUSED</li>
    </ul>
   </li>
   <li>Other services
    <ul>
     <li>Directing code generation: SPLEVEL, SYSSTATE</li>
    </ul>
   </li>
   <li>Macro Instructions for QSAM move mode
    <ul>
     <li>OPEN, CLOSE</li>
     <li>GET, PUT</li>
     <li>DCB, EODAD</li>
     <li>Record formats
      <ul>
       <li>Fixed / Fixed Blocked</li>
       <li>Variable / Variable Blocked</li>
      </ul>
     </li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 5 -->
 <li>Coding techniques and structured programming
  <ul>
   <li>Modularisation, segmention, CSECTs, subroutines, and location
    counters</li>
   <li>Comments regarding design</li>
   <li>Comments
    <ul>
     <li>Blocks</li>
     <li>On source lines</li>
    </ul>
   </li>
   <li>Lay-out</li>
   <li>Awful coding techniques
    <ul>
     <li>Missing or erroneous comments</li>
     <li>Useless comments</li>
     <li>Self-modifying code:
      <ul>
       <li>Changing condition of a branch instruction</li>
       <li>Changing target of a branch instruction, S-con</li>
       <li>Changing opcode</li>
      </ul>
     </li>
     <li>Misuse of location counter:
      <ul>
       <li>*-offset</li>
       <li>Same for label + or - offset</li>
      </ul>
     </li>
     <li>'Magical' numbers</li>
     <li>Too many base registers</li>
     <li>Unlogical EQUates</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 6 -->
 <li>Assembler directives
  <ul>
   <li>Assembly control
    <ul>
     <li>*PROCESS</li>
     <li>START</li>
     <li>END</li>
     <li>ICTL</li>
     <li>ISEQ</li>
     <li>COPY</li>
     <li>OPSYN</li>
     <li>EXITCTL</li>
    </ul>
   </li>
   <li>Object control
    <ul>
     <li>AMODE</li>
     <li>RMODE</li>
     <li>CATTR</li>
     <li>ALIAS</li>
     <li>ENTRY</li>
     <li>EXTRN</li>
     <li>PUNCH</li>
     <li>REPRO</li>
     <li>WXTRN</li>
    </ul>
   </li>
   <li>Listing control
    <ul>
     <li>TITLE</li>
     <li>SPACE</li>
     <li>EJECT</li>
     <li>CEJECT</li>
     <li>ASPACE</li>
     <li>AEJECT</li>
     <li>PRINT</li>
     <li>PUSH PRINT</li>
     <li>POP PRINT</li>
    </ul>
   </li>
   <li>Generating data
    <ul>
     <li>DC
      <ul>
       <li>Duplication, alignment</li>
       <li>Type, Attribute</li>
       <li>Modifier</li>
       <li>Value</li>
      </ul>
     </li>
     <li>DS</li>
     <li>EQU, EQU *, EQU *+..., EQU *-...</li>
     <li>LTORG</li>
     <li>CNOP</li>
    </ul>
   </li>
   <li>Controlling addressability
    <ul>
     <li>CSECT</li>
     <li>RSECT</li>
     <li>DSECT</li>
     <li>USING
      <ul>
       <li>Ordinary</li>
       <li>Labeled</li>
       <li>Dependent</li>
       <li>Labeled dependent</li>
      </ul>
     </li>
     <li>DROP
      <ul>
       <li>Register</li>
       <li>Label</li>
      </ul>
     </li>
     <li>PUSH USING</li>
     <li>POP USING</li>
     <li>ORG</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 7 -->
 <li>Literature
  <ul>
   <li>High Level Assembler Programmer's Guide</li>
   <li>High Level Assembler Language Reference</li>
   <li>z/OS V1R1.0 MVS Assembler Services Guide</li>
   <li>z/OS V1R1.0 MVS Assembler Services Reference (2 delen)</li>
   <li>z/OS V1R1.0 DFSMS Using Data Sets</li>
   <li>z/OS V1R1.0 DFSMS Macro Instructions for Data Sets</li>
   <li>z/OS V1R1.0 DFSMS Program Management</li>
   <li>z/OS V1R1.0 MVS System Codes</li>
   <li>z/OS V1R1.0 MVS System Messages (10 delen)</li>
  </ul>
 </li>
</ol>

/HTML

         HTMLDEF COURSE.UK3
<!-- UK -->
<h3><a name="part3" id="part3">Assembler for application programmers.
</a></h3>

<p>The topics for this course have been subdivided into eight
 chapters:</p>
<ol>
 <li>Assembler</li>
 <li>Architecture of machine and operating system</li>
 <li>Instruction set</li>
 <li>Most relevant standard macros</li>
 <li>Coding techniques and structured programming</li>
 <li>Reusability</li>
 <li>Assembler directives</li>
 <li>Literature</li>
</ol>

<ol>
<!-- Chapter 1 -->
 <li>Assembler
  <ul>
   <li>Module formats
    <ul>
     <li>Load module attributes: RF, RN, RU, NX, SC</li>
    </ul>
   </li>
   <li>Assembler function
    <ul>
     <li>Assembly parameters
      <ul>
       <li>SYSPARM</li>
      </ul>
     </li>
     <li>Run-time logic
      <ul>
       <li>SYSABEND, SYSUDUMP, SYSMDUMP</li>
       <li>Tracing</li>
       <li>SNAP-dumps</li>
       <li>IPCS</li>
       <li>Other debugging tools: IDF, XDC, ???</li>
      </ul>
     </li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 2 -->
 <li>Architecture of machine and operating system
  <ul>
   <li>Calling conventions
    <ul>
     <li>Linkage stack, F1SA-pointer</li>
     <li>Usage of R15 for returncode (n*4)<ul>
       <li>Jump tables</li>
      </ul>
     </li>
     <li>Usage of R1 as parmlist pointer
      <ul>
       <li>Lay-out of parmlist, end-of-plist marker in access
        register
        mode</li>
      </ul>
     </li>
    </ul>
   </li>
   <li>Calling mechanisms and the linkage stack:
    <ul>
     <li>SVC/MC + LPSW --> FLIH+SLIH</li>
     <li>PC + PT/LPSW</li>
     <li>BAKR + PR --> Overhead</li>
     <li>Glue modules
      <ul>
       <li>Static call using a Vcon</li>
       <li>Dynamic call using LOAD and DELETE macros</li>
      </ul>
     </li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 3 -->
 <li>Instruction set
  <ul>
   <li>Data formats
    <ul>
     <li>Packed decimal format, Sign</li>
     <li>Floating point format
      <ul>
       <li>Short format (32-bit E/D)</li>
       <li>Long long format (64-bit D/W)</li>
       <li>Extended format (128-bit X)</li>
      </ul>
     </li>
    </ul>
   </li>
   <li>Unprivileged instructies
    <ul>
     <li>Arithmetic operations
      <ul>
       <li>Conversion: CVB, CVD, PACK, UNPK</li>
      </ul>
     </li>
     <li>Logical operations
      <ul>
       <li>Shifting: SLA, SLL, SLDA, SLDL, SRA, SRL, SRDA, SRDL</li>
      </ul>
     </li>
     <li>Moving data
      <ul>
       <li>Register to register: CPYA, EAR, SAR</li>
       <li>Storage to register: LAM</li>
       <li>Register to storage: STAM</li>
       <li>Storage to storage: MVPG (1), MVN, MVZ, MVO, TR, TRT,
           MVST</li>
       <li>Other: LAE, SRST</li>
      </ul>
     </li>
     <li>Program flow control
      <ul>
       <li>Branching: MC</li>
       <li>Loop control: BCT, BCTR, BRCT, BXH, BRXH, BXLE, BRXLE</li>
       <li>Other: EX
        <ul>
         <li>all instructions except EX</li>
         <li>length field in: MVC, CLC, TR, TRT</li>
         <li>mask field in: TM, BC, BCR</li>
        </ul>
       </li>
      </ul>
     </li>
     <li>Other general instructions
      <ul>
       <li>Checksum: CKSM</li>
       <li>Sorting: CFC, UPT</li>
       <li>Serialisation: TS, CS, CDS, PLO</li>
       <li>Timing: STCK</li>
       <li>Program mask: IPM, SPM</li>
      </ul>
     </li>
    </ul>
   </li>
   <li>Decimal Instructions
    <ul>
     <li>Arithmetic operations
      <ul>
       <li>Add: AP, ZAP</li>
       <li>Subtract: SP</li>
       <li>Multiply: MP, SRP</li>
       <li>Divide: DP, SRP, rounding</li>
      </ul>
     </li>
     <li>Logical operations
      <ul>
       <li>Compare: CP</li>
      </ul>
     </li>
     <li>Moving data
      <ul>
       <li>Storage to storage: ED, EDMK</li>
      </ul>
     </li>
    </ul>
   </li>
   <li>Floating-Point Instructions
    <ul>
     <li>Arithmetic operations
      <ul>
       <li>Add: AE, AER, AD, ADR, AXR, AU, AUR, AW, AWR</li>
       <li>Subtract: SE, SER, SD, SDR, SXR, SU, SUR, SW, SWR</li>
       <li>Multiply: ME, MER, MD, MDR, MXD, MXDR, MXR</li>
       <li>Divide: DE, DER, DD, DDR, DXR, HER, HDR</li>
       <li>Square root: SQDR, SQER</li>
      </ul>
     </li>
     <li>Logical operations
      <ul>
       <li>Compare: CE, CER, CD, CDR</li>
      </ul>
     </li>
     <li>Moving data
      <ul>
       <li>Register to register: LER, LDR, LTER, LTDR, LCER, LCDR,
        LNER,
        LNDR, LPER, LPDR, LRER, LRDR</li>
       <li>Storage to register: LE, LD</li>
       <li>Register to storage: STE, STD</li>
      </ul>
     </li>
    </ul>
   </li>
   <li>Control instructions
    <ul>
     <li>Program flow control
      <ul>
       <li>Branching: BAKR, PC, PR, PT</li>
      </ul>
     </li>
     <li>Moving data
      <ul>
       <li>Storage to register: EREG, ESTA</li>
       <li>Register to storage: MSTA</li>
      </ul>
     </li>
     <li>Controlling the PSW
      <ul>
       <li>Addressing mode: IAC, SAC, SACF</li>
      </ul>
     </li>
     <li>Other control instructions
      <ul>
       <li>Storage: IVSK</li>
       <li>Testing addresses: TAR</li>
      </ul>
     </li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 4 -->
 <li>Most relevant standard macros
  <ul>
   <li>Program control - advanced:
    <ul>
     <li>Program interruption exits: SPIE and ESPIE</li>
    </ul>
   </li>
   <li>Controlling storage
    <ul>
     <li>Storage: FREEMAIN en GETMAIN</li>
     <li>Storage: STORAGE</li>
     <li>Structures: CPOOL and subpools</li>
    </ul>
   </li>
   <li>Communication:
    <ul>
     <li>Inserting messages in the system log: WTL</li>
    </ul>
   </li>
   <li>Other services
    <ul>
     <li>Debugging: SNAP/SNAPX, IEATDUMP</li>
     <li>Data-in-Virtual: DIV</li>
    </ul>
   </li>
   <li>Macro Instructions for Data Sets
    <ul>
     <li>OPEN, CLOSE</li>
     <li>READ, WRITE, GET, PUT, ERASE</li>
     <li>CHECK</li>
     <li>DCB, DCBD, DCBE
      <ul>
       <li>Exits, EODAD, SYNAD</li>
      </ul>
     </li>
     <li>ACB, RPL</li>
     <li>Record formats
      <ul>
       <li>Fixed / Fixed Blocked</li>
       <li>Variable / Variable Blocked</li>
       <li>Spanned</li>
       <li>Undefined</li>
      </ul>
     </li>
     <li>Access methods: BSAM, QSAM-locate, QSAM-move, QSAM-data,
      BPAM,
      BISAM, QISAM, BDAM, EXCP/EXCPVR, VSAM-ESDS, VSAM-KSDS,
      VSAM-RRDS,
      VSAM-LDS, IMS, DB2</li>
     <li>CHKPOINT</li>
     <li>NOTE, POINT</li>
     <li>XLATE</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 5 -->
 <li>Coding techniques and structured programming
  <ul>
   <li>Controlling storage, paging</li>
   <li>In-line and out-of-line error handling</li>
   <li>Loops with BCT/BCTR</li>
   <li>Loops with BXLE/BXH</li>
   <li>Locality of reference and caching</li>
   <li>Exceptions and SPIE/ESPIE</li>
   <li>Abends and STAE/ESTAE</li>
  </ul>
 </li>
<!-- Chapter 6 -->
 <li>Reusability
  <ul>
   <li>Non-reusable programs</li>
   <li>Serially reusable programs</li>
   <li>Reenterable programs</li>
   <li>Refreshable programs
    <ul>
     <li>Performance considerations</li>
    </ul>
   </li>
   <li>Consequences for programming techniques
    <ul>
     <li>Macro-variants: MF=S, MF=L, MF=(E,addr), MF=(G,addr)</li>
     <li>Generating executable code "on the flight"</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 7 -->
 <li>Assembler directives
  <ul>
   <li>Output control
    <ul>
     <li>ADATA</li>
    </ul>
   </li>
   <li>Generating data
    <ul>
     <li>CCW, CCW0, CCW1</li>
    </ul>
   </li>
   <li>Controlling addressability
    <ul>
     <li>LOCTR</li>
     <li>COM</li>
     <li>CXD</li>
     <li>DXD</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 8 -->
 <li>Literature
  <ul>
   <li>z/OS V1R1.0 DFSMSdfp Advanced Services</li>
   <li>z/OS V1R1.0 DFSMSdfp Checkpoint/Restart</li>
   <li>z/OS V1R1.0 DFSMSdfp Storage Administration Reference</li>
   <li>MVS Programming: Batch Local Shared Resources</li>
   <li>Debug Tool User's Guide and Reference</li>
   <li>HLASM V1R4 Toolkit Feature Interactive Debug Facility User's
    Guide</li>
   <li>HLASM V1R3 Toolkit Feature Interactive Debug Facility Reference
    Summary</li>
   <li>Don Nielsen (DonN@cmscms.com): 'Redesigning Assembler Language
    Development'</li>
  </ul>
 </li>
</ol>

/HTML

         HTMLDEF COURSE.UK4
<!-- UK -->
<h3><a name="part4" id="part4">Assembler for experienced programmers.
</a></h3>

<p>The topics for this course have been subdivided into seven
   chapters:</p>
<ol>
 <li>Authorisation</li>
 <li>Instruction set</li>
 <li>Most relevant standard macros</li>
 <li>Coding techniques and structured programming</li>
 <li>Parallellisation</li>
 <li>Introduction dump reading</li>
 <li>Literature</li>
</ol>

<ol>
<!-- Chapter 1 -->
 <li>Authorisation
  <ul>
   <li>APF-authorisation
    <ul>
     <li>Link</li>
     <li>Library</li>
     <li>Only at job-step level</li>
    </ul>
   </li>
   <li>Supervisor state
    <ul>
     <li>Through SVC</li>
     <li>Through PC</li>
    </ul>
   </li>
   <li>PSW key</li>
  </ul>
 </li>
<!-- Chapter 2 -->
 <li>Instruction set
  <ul>
   <li>Unprivileged instructions
    <ul>
     <li>Moving data
      <ul>
       <li>Storage to storage: MVPG (1)</li>
      </ul>
     </li>
    </ul>
   </li>
   <li>Control instructions
    <ul>
     <li>Program flow control
      <ul>
       <li>Branching: BSA, BSG</li>
      </ul>
     </li>
     <li>Moving data
      <ul>
       <li>Register to register: EPAR, ESAR, SSAR</li>
       <li>Storage to register: LASP, LCTL, LURA</li>
       <li>Register to storage: STCTL, STURA</li>
       <li>Storage to storage: MVCP, MVCS, MVCK, MVCDK, MVCSK, MVPG
        (2)</li>
       <li>Other: LRA</li>
      </ul>
     </li>
     <li>Controlling the PSW
      <ul>
       <li>PSW-key: IPK, SPKA</li>
       <li>System mask: STNSM, STOSM</li>
       <li>Other: LPSW, SSM</li>
      </ul>
     </li>
     <li>Other control instructions
      <ul>
       <li>Storage: ISKE, IPTE, RRBE, SSKE</li>
       <li>DAT: PALB, PTLB</li>
       <li>Clock: SCK, SCKC, SPT, STCKC, STPT</li>
       <li>Prefix: SPX, STPX</li>
       <li>Testing addresses: TB, TPROT</li>
       <li>Tracing: TRACE</li>
       <li>Other: Diagnose, SIGP, STAP, STIDP</li>
      </ul>
     </li>
    </ul>
   </li>
   <li>I/O instructions</li>
   <li>Vector instructions</li>
   <li>Custom instructions</li>
  </ul>
 </li>
<!-- Chapter 3 -->
 <li>Most relevant standard macros
  <ul>
   <li>Program control
    <ul>
     <li>Invoking a sub-program dynamically: SYNCH/SYNCHX</li>
    </ul>
   </li>
   <li>Program control - advanced:
    <ul>
     <li>Subtask management: ATTACH/ATTACHX, DETACH, STATUS, CHAP</li>
     <li>Catching abends: STAE, ESTAE/ESTAEX, SETRP</li>
     <li>Linkage stack management: IEALSQRY, LSEXPAND</li>
    </ul>
   </li>
   <li>Storage control
    <ul>
     <li>Subpool types</li>
     <li>Cross memory: DSPSERV dataspace with ALESERV and TESTART</li>
     <li>Cross memory: DSPSERV hiperspace with HSPSERV</li>
     <li>Paging: PGSER or PGLOAD, PGOUT, and PGRLSE</li>
    </ul>
   </li>
   <li>Serialisation
    <ul>
     <li>Resources: ENQ, DEQ, GQSCAN</li>
     <li>Synchronisation: WAIT/POST and EVENTS</li>
     <li>Named tokens: IEANTCR, IEANTRT, IEANTDL</li>
    </ul>
   </li>
   <li>Communication:
    <ul>
     <li>Console info: CONVCON</li>
     <li>Message to console: WTO, WTOR, DOM</li>
    </ul>
   </li>
   <li>Time
    <ul>
     <li>Timer interrupts: STIMER, STIMERM, CPUTIMER, TTIMER</li>
    </ul>
   </li>
   <li>Other services
    <ul>
     <li>Resource Management: RESMGR</li>
     <li>Load module info: CSVAPF, CSVINFO, CSVQUERY, CSVRTLS</li>
     <li>Unique identification of a task: TCBTOKEN</li>
     <li>Parmlib members: IEFPRMLB</li>
    </ul>
   </li>
   <li>Macro Instructions for Data Sets
    <ul>
     <li>DYNALLOC
      <ul>
       <li>Datasets</li>
       <li>Output descriptors</li>
      </ul>
     </li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 4 -->
 <li>Coding techniques and structured programming
  <ul>
   <li>Abends, STAI, STAE, ESTAE/ESTAEX, FESTAE, FRR, Percolation</li>
   <li>Resource management</li>
  </ul>
 </li>
<!-- Chapter 5 -->
 <li>Parallellisation
  <ul>
   <li>Lock-out, dead-lock</li>
   <li>Proving correctness</li>
   <li>Serialisation
    <ul>
     <li>ENQ/DEQ</li>
     <li>Latches</li>
     <li>CS/CDS/PLO</li>
     <li>Local lock, CML lock, CPU lock</li>
     <li>Hierarchy</li>
    </ul>
   </li>
   <li>Synchronisation
    <ul>
     <li>ECB</li>
     <li>Post/Wait/Events</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 6 -->
 <li>Introduction dump reading
  <ul>
   <li>Symptom dump
    <ul>
     <li>PSW and ILC</li>
     <li>Load module identification</li>
     <li>PSW data</li>
     <li>GPRs and ARs</li>
     <li>Locating error instruction
      <ul>
       <li>Determine loadmod offset</li>
       <li>Find correct CSECT and offset</li>
       <li>Locate error instruction</li>
      </ul>
     </li>
    </ul>
   </li>
   <li>SYSUDUMP / SYSABEND
    <ul>
     <li>TCB c.a.</li>
     <li>Virtual storage map</li>
     <li>ENQ/DEQ CBs</li>
     <li>Data Management CBs</li>
     <li>IOS CBs</li>
     <li>RTM CBs</li>
     <li>Stacks and Save Areas</li>
     <li>Subsystem Area</li>
     <li>LSQA</li>
     <li>Subpools 229 and 230</li>
     <li>Registers</li>
     <li>Summary storage</li>
     <li>Modules</li>
     <li>User Subpools</li>
     <li>Trace Table
      <ul>
       <li>Trace entry formats</li>
      </ul>
     </li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 7 -->
 <li>Literature
  <ul>
   <li>OS/390 V2R6.0 MVS Programming: Resource Recovery</li>
   <li>z/OS V1R1.0 MVS Authorized Assembler Services Guide</li>
   <li>z/OS V1R1.0 MVS Authorized Assembler Services Reference
    (4 volumes)</li>
   <li>z/OS V1R1.0 DFSMS Access Method Services for Catalogs</li>
   <li>z/OS V1R1.0 JES2 Macros</li>
   <li>z/OS V1R1.0 RACF Macros and Interfaces</li>
   <li>z/OS V1R1.0 RACROUTE Macro Reference</li>
   <li>z/OS V1R1.0 MVS Using the Functional Subsystem Interface</li>
   <li>z/OS V1R1.0 MVS Using the Subsystem Interface</li>
   <li>z/OS V1R1.0 MVS IPCS User's Guide</li>
   <li>z/OS V1R1.0 MVS IPCS Commands</li>
   <li>z/OS V1R1.0 MVS Dump Output Messages</li>
   <li>z/OS V1R1.0 JES2 Messages</li>
   <li>z/OS V1R1.0 RACF Messages and Codes</li>
   <li>z/OS V1R1.0 MVS Data Areas (5 volumes)</li>
   <li>z/OS V1R1.0 JES2 Data Areas (3 volumes)</li>
   <li>z/OS V1R1.0 RACF Data Areas</li>
  </ul>
 </li>
</ol>

/HTML

         HTMLDEF COURSE.UK5
<!-- UK -->
<h3><a name="part5" id="part5">Assembler - Macro facility.</a></h3>

<p>The topics for this course have been subdivided into six chapters:
</p>
<ol>
 <li>Assembler</li>
 <li>Assembler directives</li>
 <li>Using macros and conditional assembly</li>
 <li>Designing macros</li>
 <li>OO-techniques in assembler</li>
 <li>Literature</li>
</ol>
<ol>
<!-- Chapter 1 -->
 <li>Assembler
  <ul>
   <li>Assembler function
    <ul>
     <li>Pre-assembly logic
      <ul>
       <li>MNOTE, MHELP</li>
       <li>MCALL/NOMCALL</li>
      </ul>
     </li>
     <li>Assembly logic
      <ul>
       <li>Two passes</li>
      </ul>
     </li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 2 -->
 <li>Assembler directives
  <ul>
   <li>Macro definitions
    <ul>
     <li>MACRO
      <ul>
       <li>Prototype statement</li>
       <li>Positional parameters</li>
       <li>Keyword parameters</li>
      </ul>
     </li>
     <li>MEND</li>
     <li>Comments</li>
     <li>MNOTE, severity levels</li>
     <li>AREAD</li>
     <li>AINSERT</li>
    </ul>
   </li>
   <li>Pre-assembly variables
    <ul>
     <li>LCLA, GBLA</li>
     <li>LCLB, GBLB</li>
     <li>LCLC, GBLC</li>
     <li>SETA
      <ul>
       <li>Built-in functions: AND, OR, XOR, NOT, SLA, SLL, SRA, SRL
   </li>
       <li>SETAF</li>
      </ul>
     </li>
     <li>SETB
      <ul>
       <li>Built-in functions: NOT, AND, AND NOT, OR, OR, NOT</li>
       <li>Logical terms: EQ, NE, GT, GE, LT, LE</li>
      </ul>
     </li>
     <li>SETC
      <ul>
       <li>Built-in functions: DOUBLE, FIND, INDEX, LOWER, UPPER</li>
       <li>SETCF</li>
       <li>Substring notation</li>
      </ul>
     </li>
     <li>Extended SET</li>
     <li>Arrays</li>
     <li>Created set symbols</li>
    </ul>
   </li>
   <li>Pre-assembly control
    <ul>
     <li>Labels, ANOP</li>
     <li>AIF</li>
     <li>AGO</li>
     <li>ACTR</li>
     <li>MHELP</li>
    </ul>
   </li>
   <li>System variables
    <ul>
     <li>&amp;SYSDATE, &amp;SYSDATC, &amp;SYSTIME</li>
     <li>&amp;SYSECT, &amp;SYSSTYP</li>
     <li>&amp;SYSLIST</li>
     <li>&amp;SYSNDX, &amp;SYSNEST</li>
     <li>&amp;SYSPARM</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 3 -->
 <li>Using macros and conditional assembly
  <ul>
   <li>Using macros versus COPY</li>
   <li>DSECT-macros</li>
   <li>CSECT-macros</li>
   <li>Conditional assembly in open code</li>
   <li>Optimisation</li>
   <li>Replacing standard macros</li>
   <li>replacing opcodes by macros</li>
  </ul>
 </li>
<!-- Chapter 4 -->
 <li>Designing macros
  <ul>
   <li>What lends itself for macrofication</li>
   <li>Documentation of macros
    <ul>
     <li>Pre-assembly logic</li>
     <li>Assembly logic</li>
     <li>Run-time logic</li>
    </ul>
   </li>
   <li>Interface considerations
    <ul>
     <li>Assembly interface</li>
     <li>Run-time interface</li>
    </ul>
   </li>
   <li>Directing expansion using parameters
    <ul>
     <li>Lists of parameters</li>
    </ul>
   </li>
   <li>Location of macro: in the source or in a library?</li>
   <li>Replacing opcodes</li>
   <li>replacing standard macros</li>
  </ul>
 </li>
<!-- Chapter 5 -->
 <li>OO-techniques in assembler
  <ul>
   <li>Encapsulation</li>
   <li>Designing a class</li>
   <li>Designing methods</li>
   <li>Implementation in macros</li>
  </ul>
 </li>
<!-- Chapter 6 -->
 <li>Literature
  <ul>
   <li>High Level Assembler Programmer's Guide</li>
   <li>High Level Assembler Language Reference</li>
   <li>John Ehrman (ehrman@vnet.ibm.com): 'Macros and Conditional
    Assembly
    Techniques, SHARE 94, Winter Conference 2000'</li>
  </ul>
 </li>
</ol>

/HTML

         HTMLDEF COURSE.UK6
<!-- UK -->
<h3><a name="part6" id="part6">Bixoft eXtended Assembler language.
</a></h3>

<p>The topics for this course have been subdivided into four chapters:
</p>
<ol>
 <li>Extended mnemonics</li>
 <li>Assembler Directives</li>
 <li>Macros for structured programming</li>
 <li>Mapping macros</li>
</ol>

<ol>
<!-- Chapter 1 -->
 <li>Extended mnemonics
  <ul>
   <li>Conditional subroutine invocation
    <ul>
     <li>BALC, BALE, BALH, BALL, BALM, BALO, BALP, BALZ<br />
      BALNE, BALNH, BALNL, BALNM, BALNO, BALNP, BALNZ</li>
     <li>BASC, BASE, BASH, BASL, BASM, BASO, BASP, BASZ<br />
      BASNE, BASNH, BASNL, BASNM, BASNO, BASNP, BASNZ</li>
    </ul>
   </li>
   <li>Manipulating data
    <ul>
     <li>CLEAR</li>
     <li>CPY</li>
     <li>DEC, INC</li>
     <li>LC, LT, LTA24, LTC, LTH, LTHU, STA24</li>
     <li>MVPL</li>
     <li>SET, SETOF, SETON</li>
    </ul>
   </li>
   <li>Execute instructions
    <ul>
     <li>EXQ, EXCLC, EXMVC, EXTR, EXTRT, EXXC</li>
    </ul>
   </li>
   <li>Extended type checking
    <ul>
     <li>GEN</li>
     <li>IPK, LA, LR, TRT</li>
    </ul>
   </li>
   <li>Other
    <ul>
     <li>EPSW</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 2 -->
 <li>Assembler Directives
  <ul>
   <li>Checking variables
    <ul>
     <li>CHKLIT, CHKMAP, CHKNUM, CHKREG</li>
     <li>DISSECT, SPLIT</li>
    </ul>
   </li>
   <li>Defining data
    <ul>
     <li>CMDTXT, TRTAB</li>
     <li>DCL, DC, DCOVR, DS, DSOVR, NESTCB</li>
     <li>EQU, EQUOVR, EQUREG</li>
     <li>EXTRN, EXTRNOVR</li>
     <li>LABEL</li>
     <li>LTORG, RDATA, RLTORG</li>
    </ul>
   </li>
   <li>Addressing
    <ul>
     <li>DROP</li>
     <li>POP, PUSH</li>
     <li>USE, USEDREGS, USING</li>
    </ul>
   </li>
   <li>Other
    <ul>
     <li>EJECT, EJECTOVR, SPACE</li>
     <li>END</li>
     <li>GENMAPS</li>
     <li>OPSYSNS</li>
     <li>SYSPARM</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 3 -->
 <li>Macros for structured programming
  <ul>
   <li>Programs and subroutines
    <ul>
     <li>PGM, RETRN</li>
     <li>ABND, ABNDPGM</li>
     <li>BEGSR, ENDSR, EXSR</li>
    </ul>
   </li>
   <li>Conditional expressions
    <ul>
     <li>IF, ELSE, ENDIF</li>
     <li>CASE, ELSE, ENDCASE</li>
     <li>DO, LOOP, LEAVE, ENDDO</li>
     <li>GOTO</li>
     <li>IF$, IF$ALC, IF$Ls, IF$LU</li>
    </ul>
   </li>
   <li>Various
    <ul>
     <li>DBG, SNAPHDR, SNAPNTRY</li>
     <li>GLUE</li>
     <li>NTCR, NTRT, NTDL</li>
     <li>RWTO</li>
     <li>SETMODE</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Chapter 4 -->
 <li>Mapping macros
  <ul>
   <li>Assigned field types - a, b, c, f, g, j, p, v, 0</li>
   <li>Using MAP-macros in combination with GENMAPS</li>
   <li>Using MAP-macros in combination with DCL</li>
   <li>Using declared bits</li>
   <li>Using declared values</li>
   <li>Using defined registers</li>
   <li>Using conditional expressions</li>
   <li>Relation with DC, DS, EXTRN macros</li>
   <li>Function of DCOVR, DSOVR, EXTRNOVR macros</li>
   <li>MAPEQU, MAPBITS, MAPREGS</li>
   <li>MAPSAVE</li>
   <li>MAP control blocks</li>
  </ul>
 </li>
</ol>

/HTML

         HTMLDEF COURSE.UKL
<!-- UK -->
<p>
 To course <a href="#part1">Introduction and general principles</a>
<br />
 To course <a href="#part2">Assembler starter</a><br />
 To course <a href="#part3">Assembler for application programmers</a>
<br />
 To course <a href="#part4">Assembler for experienced programmers</a>
<br />
 To course <a href="#part5">Assembler - Macro Facility</a><br />
 To course <a href="#part6">Bixoft eXtended Assembler language</a>
</p>

/HTML

         HTMLDEF COURSE.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/course.htm -->
<!-- -->
<title>Bixoft - Cursus assembler</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft introductie / sitemap" href="intro.htm" />
<link rev="Bixoft assembler begeleiding" href="counsel.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe, Cursus" />
<meta http-equiv="description"
      content="Uitleg over cursussen door Bixoft inzake assembler voor
      mainframes." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF COURSE.NLT
<!-- NL -->
<h1 align="center">Cursus assembler.</h1>

<p>Cursussen geven wij soms klassikaal, maar meestal in uw eigen
 bedrijf, middels
 training on the job. Hierdoor kan de inhoud van de cursus optimaal
 worden
 afgestemd op enerzijds het reeds aanwezige kennis-niveau en
 anderzijds op uw
 specifieke omgeving. Bovendien kan het geleerde direct getoetst
 en/of
 toegepast worden in uw eigen praktijksituatie.</p>

<p>De te behandelen onderwerpen zijn ondergebracht in een zestal
 categorie&euml;n, die hieronder nader worden uitgewerkt. Voor elke
 cursus
 kan worden geput uit deze standaard-lijst van onderwerpen.
 Onderwerpen die
 voor uw situatie van specifiek belang zijn kunnen worden toegevoegd.
</p>

<ol>
 <li><a href="#deel1">Introductie en algemene principes</a></li>
 <li><a href="#deel2">Assembler basis</a></li>
 <li><a href="#deel3">Assembler voor applicatie-programmeurs</a></li>
 <li><a href="#deel4">Assembler voor gevorderden</a></li>
 <li><a href="#deel5">Assembler - Macro Faciliteit</a></li>
 <li><a href="#deel6">Bixoft eXtended Assembler language</a></li>
</ol>

<p>Welke selectie u ook maakt, naar ons idee behoren ten minste de
 volgende
 onderwerpen aan bod te komen:</p>
<ul>
 <li>Architectuur van machine en operating system.<br />
  Organisatie van virtueel geheugen, address- en data-spaces,
  addressing modes
  en residency modes, calling mechanismen en de linkage stack.</li>
 <li>Instructieset.<br />
  Alle unprivileged instructies uit IBM's 'Principles of Operation'.
  Dat wil zeggen:
  <ul>
   <li>General Instructions.</li>
   <li>Decimal Instructions.</li>
   <li>Floating-Point Instructions.</li>
   <li>Relevante Control Instructions.</li>
  </ul>
 </li>
 <li>De belangrijkste standaard-macro's uit:
  <ul>
<!-- UK -->
   <li>Assembler Services Reference.</li>
   <li>Macro Instructions for Data Sets.</li>
<!-- NL -->
  </ul>
 </li>
 <li>Coding technieken en gestructureerd programmeren.<br />
  Modularisatie, segmentering, CSECTS en DSECTS, subroutines,
  geheugenbeheer,
  in-line en out-of-line error handling, exceptions, abends.</li>
 <li>Reusability, reenterability, refreshability.<br />
  De verschillen tussen deze soorten programmatuur, en de toepassing
  ervan. De
  consequenties voor de wijze van programmeren.<br />
  &nbsp;</li>
 <li>Assembler directieven.<br />
  Gebruik van CNOP voor alignment, DROP en USING voor addressability.
  LTORG, DC
  en DS voor het organiseren van werkgeheugen, variabelen, en
  constanten. EQU
  voor het benoemen van constanten en adressen.</li>
 <li>Gebruik van macro's en conditional assembly.<br />
  Conditional assembly in open code, optimalisaties, debugging met
  SNAP-dumps.
  Het toepassen van diverse macro's in samenhang met access methods.
 </li>
 <li>Ontwerp van macro's.<br />
  Het gebruik van macro's versus copy members. Wat leent zich voor
  opname
  in een macro. Interface overwegingen. Documentatie van macro's.
Sturing van
  expansie middels parameters. Lijsten van parameters. Plaats van de
  macro:
  in de source of in een macro bibliotheek?</li>
</ul>

/HTML

         HTMLDEF COURSE.NL1
<!-- NL -->
<h3><a name="deel1" id="deel1">Introductie en algemene principes.</a>
</h3>

<p>De stof voor dit cursusdeel in onderverdeeld in vier
   hoofdstukken:</p>
<ol>
 <li>Basiskennis computerkunde </li>
 <li>Architectuur van machine en operating system</li>
 <li>Belangrijkste control blocks</li>
 <li>Literatuur</li>
</ol>

<ol>
<!-- Hoofdstuk 1 -->
 <li>Basiskennis computerkunde
  <ul>
   <li>Componenten: processor, geheugen, randapparatuur</li>
   <li>Instructie-verwerking</li>
   <li>Sequentieel</li>
   <li>Conditioneel</li>
   <li>Interrupts
    <ul>
     <li>Ontvangst</li>
     <li>Return</li>
     <li>Status informatie</li>
    </ul>
   </li>
   <li>Boolean logic
    <ul>
     <li>Truth tables</li>
     <li>AND, OR, XOR, NOT</li>
     <li>Implicatie, equivalentie</li>
    </ul>
   </li>
   <li>Multi-tasking
    <ul>
     <li>Synchronisatie</li>
     <li>Serialisatie</li>
     <li>Semaphores</li>
     <li>Lock-out</li>
     <li>Deadlock</li>
     <li>Dispatching</li>
    </ul>
   </li>
   <li>Multi-processing
    <ul>
     <li>Tightly coupled (LPAR/MONOPLEX)</li>
     <li>Loosely coupled (SYSPLEX)</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Hoofdstuk 2 -->
 <li>Architectuur van machine en operating system
  <ul>
   <li>Mainframe
    <ul>
     <li>Processoren</li>
     <li>Main storage, expanded storage</li>
     <li>Devices</li>
     <li>Channels</li>
     <li>Coupling Facility</li>
     <li>Sysplex</li>
    </ul>
   </li>
   <li>Historisch overzicht
    <ul>
     <li>360 en 370 - 24-bits</li>
     <li>370/XA - 31-bits</li>
     <li>390/ESA - ALETs</li>
    </ul>
   </li>
   <li>Virtueel geheugen concepten
    <ul>
     <li>Dynamic Address Translation</li>
     <li>Pages, frames, slots</li>
     <li>Segment tables, page tables</li>
     <li>Address-spaces, data-spaces, hiper-spaces
      <ul>
       <li>Batch jobs, TSO-sessies, Started tasks</li>
       <li>Paging
        <ul>
         <li>Page steal</li>
         <li>Least Recently Used</li>
         <li>Reference bit, change bit</li>
        </ul>
       </li>
       <li>Organisatie
        <ul>
         <li>PSA, SYS, PVT, LSQA</li>
         <li>SYS: CSA, LPA, SQA, Nucleus</li>
         <li>ESYS: Extended Nucleus, ESQA, ELPA, ECSA</li>
         <li>EPVT, ELSQA</li>
        </ul>
       </li>
      </ul>
     </li>
     <li>V=R versus V=V</li>
     <li>DAT-on versus DAT-off, TLB</li>
     <li>Primary mode versus andere modes, ALB</li>
    </ul>
   </li>
   <li>Geheugen en addressering:
    <ul>
     <li>Absolute</li>
     <li>Real en expanded</li>
     <li>Virtual
      <ul>
       <li>Primary</li>
       <li>Secondary</li>
       <li>AR-specified</li>
       <li>Home</li>
      </ul>
     </li>
     <li>Logical</li>
     <li>Effective</li>
     <li>Wrap-around</li>
    </ul>
   </li>
   <li>Geheugen-bescherming
    <ul>
     <li>Key-controlled protection</li>
     <li>Fetch protection</li>
     <li>Page protection</li>
     <li>Low-address protection</li>
    </ul>
   </li>
   <li>Registers:
    <ul>
     <li>Program Status Word
      <ul>
       <li>DAT mode</li>
       <li>PSW key</li>
       <li>Problem state versus Supervisor state</li>
       <li>Address space control</li>
       <li>Condition code</li>
       <li>Program mask</li>
       <li>Addressing mode</li>
       <li>PER mode</li>
      </ul>
     </li>
     <li>Prefix register
      <ul>
       <li>interrupts en interrupt klassen</li>
      </ul>
     </li>
     <li>Control registers</li>
     <li>Access registers</li>
     <li>General purpose registers
      <ul>
       <li>Pairs of GPRs</li>
      </ul>
     </li>
     <li>Floating point registers
      <ul>
       <li>Pairs of FPRs</li>
      </ul>
     </li>
     <li>Floating point status register</li>
     <li>Vector registers</li>
     <li>Vector status register</li>
    </ul>
   </li>
   <li>Addressing mode, residency mode, cross memory mode
    <ul>
     <li>Amode 24 versus 31, Amode any</li>
     <li>Rmode 24, any</li>
     <li>Cross memory mode
     </li>
     <li>Wijze van addresseren:
      <ul>
       <li>Primary mode</li>
       <li>Secondary mode</li>
       <li>Access Register mode</li>
       <li>Home space mode</li>
      </ul>
     </li>
     <li>Gebruik van registers
      <ul>
       <li>Met alleen een base register</li>
       <li>Met base en index register</li>
       <li>Gebruik van R0</li>
       <li>Simple USING en DROP statements</li>
      </ul>
     </li>
    </ul>
   </li>
   <li>Units of work
    <ul>
     <li>Address spaces, tasks, en subtasks</li>
     <li>Task mode versus SRB mode</li>
     <li>Asynchrone exits</li>
     <li>Swap-in, swap-out</li>
     <li>Dispatching</li>
    </ul>
   </li>
   <li>Samenvatting modes:
    <ul>
     <li>JOB/TSU/STC</li>
     <li>Task/SRB</li>
     <li>Non-reusable/reusable/reenterable/refreshable</li>
     <li>Rmode 24/ANY</li>
     <li>Amode 24/31/ANY</li>
     <li>ASC mode primary/secondary/home/AR</li>
     <li>SVC/Problem</li>
     <li>Process-must-complete mode</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Hoofdstuk 3 -->
 <li>Belangrijkste control blocks
  <ul>
   <li>PSA</li>
   <li>CVT, SCVT, ASVT</li>
   <li>ASCB, ASSB, ASXB</li>
   <li>SRB</li>
   <li>TCB, STCB, JSCB, TIOT, JFCB</li>
   <li>RB (PRB, SVRB, IRB), CDE</li>
   <li>UCB</li>
   <li>Save area chain, Linkage stack</li>
  </ul>
 </li>
<!-- Hoofdstuk 4 -->
 <li>Literatuur
  <ul>
   <li>z/Architecture Principles of Operation</li>
   <li>z/OS V1R1.0 MVS Extended Addressability Guide</li>
  </ul>
 </li>
</ol>

/HTML

         HTMLDEF COURSE.NL2
<!-- NL -->
<h3><a name="deel2" id="deel2">Assembler basis.</a></h3>

<p>De stof voor dit cursusdeel in onderverdeeld in zeven
   hoofdstukken:</p>

<ol>
 <li>Assembler</li>
 <li>Architectuur van machine en operating system</li>
 <li>Instructieset</li>
 <li>De belangrijkste standaard-macro's</li>
 <li>Coding technieken en gestructureerd programmeren</li>
 <li>Assembler directieven</li>
 <li>Literatuur</li>
</ol>

<ol>
 <!-- Hoofdstuk 1 -->
 <li>Assembler
  <ul>
   <li>Module formats
    <ul>
     <li>Source member
      <ul>
       <li>Label field</li>
       <li>Opcode field</li>
       <li>Operands field
        <ul>
         <li>Symbolics</li>
         <li>Literals</li>
        </ul>
       </li>
       <li>Comment field</li>
       <li>Continuation</li>
      </ul>
     </li>
     <li>Listing
      <ul>
       <li>Option summary</li>
       <li>External symbol dictonary</li>
       <li>Assembly
        <ul>
         <li>Title and using overview</li>
         <li>Location and object code</li>
         <li>Source code</li>
         <li>Macro level and name</li>
        </ul>
       </li>
       <li>Relocation dictionary</li>
       <li>Cross reference</li>
       <li>Unreferenced symbols</li>
       <li>Macro source summary</li>
       <li>Macro cross reference</li>
       <li>DSECT cross reference</li>
       <li>Using map</li>
       <li>Register cross reference</li>
       <li>Summary</li>
      </ul>
     </li>
     <li>Object member</li>
     <li>Load member</li>
    </ul>
   </li>
   <li>Types of opcode
    <ul>
     <li>Executable instructions</li>
     <li>Data instructions
      <ul>
       <li>DS versus DC</li>
       <li>LTORG</li>
       <li>CSECTs versus DSECTs</li>
      </ul>
     </li>
     <li>Assembler directives</li>
     <li>Conditional assembly</li>
    </ul>
   </li>
   <li>Linkage editor</li>
   <li>Loader</li>
  </ul>
 </li>
 <!-- Hoofdstuk 2 -->
 <li>Architectuur van machine en operating system
  <ul>
   <li>Registers
    <ul>
     <li>GPRs en pairs of GPRs</li>
     <li>Addressering en R0</li>
    </ul>
   </li>
   <li>Calling conventions
    <ul>
     <li>Save areas en save area chaining</li>
     <li>Gebruik van R13 als save-area pointer</li>
     <li>Gebruik van R14 voor return adres</li>
     <li>Gebruik van R15 voor entry-point / returncode (n*4)</li>
     <li>Gebruik van R1 als parm-pointer / parmlist pointer / Reason
        code
      / result value
      <ul>
       <li>Lay-out van JCL-parm</li>
       <li>Lay-out van parmlist, end-of-plist marker</li>
      </ul>
     </li>
     <li>Gebruik van R0 als extra parm / result value</li>
    </ul>
   </li>
   <li>Calling mechanismen
    <ul>
     <li>SVC + LPSW --> FLIH+SLIH</li>
     <li>BAL/BALR + BR --> verouderd</li>
     <li>BAS/BASR + BSM/BR --> Fast</li>
     <li>BASSM + BSM --> Glueing</li>
     <li>PC/BAKR + PR --> Stack</li>
    </ul>
   </li>
  </ul>
 </li>
 <!-- Hoofdstuk 3 -->
 <li>Instructieset
  <ul>
   <li>Data formats
    <ul>
     <li>Zoned data format, Sign, ASCII/EBCDIC</li>
     <li>Binary data format
      <ul>
       <li>Signed / unsigned</li>
       <li>Halfword / fullword / doubleword</li>
      </ul>
     </li>
     <li>Address format: 24-bit, 31-bit, Amode bit, ALETs</li>
     <li>String formats</li>
     <li>Alignment</li>
    </ul>
   </li>
   <li>Unprivileged instructies
    <ul>
     <li>Arithmetic operations
      <ul>
       <li>Add: A, AR, AH, AHI, AL, ALR</li>
       <li>Subtract: S, SR, SH, SL, SLR</li>
       <li>Multiply: M, MR, MH, MHI, MS, MSR</li>
       <li>Divide: D, DR</li>
      </ul>
     </li>
     <li>Logical operations
      <ul>
       <li>Compare: C, CR, CH, CHI, CL, CLR, CLI, CLC, CLM, CLCL,
           CLCLE,
        TM, TMH, TML, CLST, CUSE</li>
       <li>And: N, NR, NI, NC</li>
       <li>Or: O, OR, OI, OC</li>
       <li>Exclusive or: X, XR, XI, XC</li>
      </ul>
     </li>
     <li>Moving data
      <ul>
       <li>Register to register: LR, LTR, LCR, LNR, LPR</li>
       <li>Storage to register: L, LH, LHI, LM, IC, ICM</li>
       <li>Register to storage: ST, STH, STM, STC, STCM</li>
       <li>Storage to storage: MVC, MVI, MVCIN, MVCL, MVCLE</li>
       <li>Overig: LA</li>
      </ul>
     </li>
     <li>Program flow control
      <ul>
       <li>Branching: BC, BCR, BAL, BALR, BAS, BASR, BASSM, BSM, SVC +
        BRAS, BRC</li>
       <li>Extended mnemonics: B, BE, BNE, BL, BNL, BH, BNH, BM, BNM,
        BZ,
        BNZ, BO, BNO, BP, BNP, BR, BER, BNER, BLR, BNLR, BHR, BNHR,
        BMR, BNMR, BZR, BNZR, BOR, BNOR, BPR, BNPR</li>
      </ul>
     </li>
    </ul>
   </li>
  </ul>
 </li>
 <!-- Hoofdstuk 4 -->
 <li>De belangrijkste standaard-macro's
  <ul>
   <li>Programma-beheer
    <ul>
     <li>Standaard linkage: SAVE en RETURN</li>
     <li>Programma afbreken: ABEND</li>
     <li>Sub-programma statisch aanroepen: CALL</li>
     <li>Sub-programma dynamisch aanroepen: IDENTIFY en LINK/LINKX of
      LOAD
      en DELETE met BR/BASR/BASSM</li>
     <li>Programma overdracht: XCTL/XCTLX</li>
    </ul>
   </li>
   <li>Tijd
    <ul>
     <li>Bepalen tijdstip: TIME of CONVTOD, STCKCONV</li>
     <li>Verbruikte CPU-tijd in task-mode: TIMEUSED</li>
    </ul>
   </li>
   <li>Overige services
    <ul>
     <li>Aansturing code generatie: SPLEVEL, SYSSTATE</li>
    </ul>
   </li>
   <li>Macro Instructions for QSAM move mode
    <ul>
     <li>OPEN, CLOSE</li>
     <li>GET, PUT</li>
     <li>DCB, EODAD</li>
     <li>Record formats
      <ul>
       <li>Fixed / Fixed Blocked</li>
       <li>Variable / Variable Blocked</li>
      </ul>
     </li>
    </ul>
   </li>
  </ul>
 </li>
 <!-- Hoofdstuk 5 -->
 <li>Coding technieken en gestructureerd programmeren
  <ul>
   <li>Modularisatie, segmentering, CSECTs, subroutines, en location
       counters</li>
   <li>Commentaar betreffende ontwerp</li>
   <li>Commentaar
    <ul>
     <li>Blokken</li>
     <li>In de source-regel</li>
    </ul>
   </li>
   <li>Lay-out</li>
   <li>Verwerpelijke coding technieken
    <ul>
     <li>Ontbrekend of foutief commentaar</li>
     <li>Zinloos commentaar</li>
     <li>Self-modifying code:
      <ul>
       <li>Wijzigen conditie van een branch-instructie</li>
       <li>Wijzigen target van een branch-instructie, S-con</li>
       <li>Wijzigen van een opcode</li>
      </ul>
     </li>
     <li>Oneigenlijk gebruik van location counter:
      <ul>
       <li>*-offset</li>
       <li>Idem voor label + of - offset</li>
      </ul>
     </li>
     <li>'Magical' numbers</li>
     <li>Te veel base registers</li>
     <li>Onlogische EQUates</li>
    </ul>
   </li>
  </ul>
 </li>
 <!-- Hoofdstuk 6 -->
 <li>Assembler directieven
  <ul>
   <li>Assembly control
    <ul>
     <li>*PROCESS</li>
     <li>START</li>
     <li>END</li>
     <li>ICTL</li>
     <li>ISEQ</li>
     <li>COPY</li>
     <li>OPSYN</li>
     <li>EXITCTL</li>
    </ul>
   </li>
   <li>Object control
    <ul>
     <li>AMODE</li>
     <li>RMODE</li>
     <li>CATTR</li>
     <li>ALIAS</li>
     <li>ENTRY</li>
     <li>EXTRN</li>
     <li>PUNCH</li>
     <li>REPRO</li>
     <li>WXTRN</li>
    </ul>
   </li>
   <li>Listing control
    <ul>
     <li>TITLE</li>
     <li>SPACE</li>
     <li>EJECT</li>
     <li>CEJECT</li>
     <li>ASPACE</li>
     <li>AEJECT</li>
     <li>PRINT</li>
     <li>PUSH PRINT</li>
     <li>POP PRINT</li>
    </ul>
   </li>
   <li>Generating data
    <ul>
     <li>DC
      <ul>
       <li>Duplication, alignment</li>
       <li>Type, Attribute</li>
       <li>Modifier</li>
       <li>Value</li>
      </ul>
     </li>
     <li>DS</li>
     <li>EQU, EQU *, EQU *+..., EQU *-...</li>
     <li>LTORG</li>
     <li>CNOP</li>
    </ul>
   </li>
   <li>Controlling addressability
    <ul>
     <li>CSECT</li>
     <li>RSECT</li>
     <li>DSECT</li>
     <li>USING
      <ul>
       <li>Ordinary</li>
       <li>Labeled</li>
       <li>Dependent</li>
       <li>Labeled dependent</li>
      </ul>
     </li>
     <li>DROP
      <ul>
       <li>Register</li>
       <li>Label</li>
      </ul>
     </li>
     <li>PUSH USING</li>
     <li>POP USING</li>
     <li>ORG</li>
    </ul>
   </li>
  </ul>
 </li>
 <!-- Hoofdstuk 7 -->
 <li>Literatuur
  <ul>
   <li>High Level Assembler Programmer's Guide</li>
   <li>High Level Assembler Language Reference</li>
   <li>z/OS V1R1.0 MVS Assembler Services Guide</li>
   <li>z/OS V1R1.0 MVS Assembler Services Reference (2 delen)</li>
   <li>z/OS V1R1.0 DFSMS Using Data Sets</li>
   <li>z/OS V1R1.0 DFSMS Macro Instructions for Data Sets</li>
   <li>z/OS V1R1.0 DFSMS Program Management</li>
   <li>z/OS V1R1.0 MVS System Codes</li>
   <li>z/OS V1R1.0 MVS System Messages (10 delen)</li>
  </ul>
 </li>
</ol>

/HTML

         HTMLDEF COURSE.NL3
<!-- NL -->
<h3><a name="deel3" id="deel3">Assembler voor applicatie-programmeurs.
</a></h3>

<p>De stof voor dit cursusdeel in onderverdeeld in acht hoofdstukken:
</p>
<ol>
 <li>Assembler</li>
 <li>Architectuur van machine en operating system</li>
 <li>Instructieset</li>
 <li>De belangrijkste standaard-macro's</li>
 <li>Coding technieken en gestructureerd programmeren</li>
 <li>Reusability</li>
 <li>Assembler directieven</li>
 <li>Literatuur</li>
</ol>

<ol>
<!-- Hoofdstuk 1 -->
 <li>Assembler
  <ul>
   <li>Module formats
    <ul>
     <li>Load module attributes: RF, RN, RU, NX, SC</li>
    </ul>
   </li>
   <li>Assembler function
    <ul>
     <li>Assembly parameters
      <ul>
       <li>SYSPARM</li>
      </ul>
     </li>
     <li>Run-time logic
      <ul>
       <li>SYSABEND, SYSUDUMP, SYSMDUMP</li>
       <li>Tracing</li>
       <li>SNAP-dumps</li>
       <li>IPCS</li>
       <li>Other debugging tools: IDF, XDC, ???</li>
      </ul>
     </li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Hoofdstuk 2 -->
 <li>Architectuur van machine en operating system
  <ul>
   <li>Calling conventions
    <ul>
     <li>Linkage stack, F1SA-pointer</li>
     <li>Gebruik van R15 voor returncode (n*4)
      <ul>
       <li>Jump tables</li>
      </ul>
     </li>
     <li>Gebruik van R1 als parmlist pointer
      <ul>
       <li>Lay-out van parmlist, end-of-plist marker in access
        register mode</li>
      </ul>
     </li>
    </ul>
   </li>
   <li>Calling mechanismen en de linkage stack:
    <ul>
     <li>SVC/MC + LPSW --> FLIH+SLIH</li>
     <li>PC + PT/LPSW</li>
     <li>BAKR + PR --> Overhead</li>
     <li>Glue modules
      <ul>
       <li>Static call middels Vcon</li>
       <li>Dynamic call middels LOAD en DELETE macro's</li>
      </ul>
     </li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Hoofdstuk 3 -->
 <li>Instructieset
  <ul>
   <li>Data formats
    <ul>
     <li>Packed decimal format, Sign</li>
     <li>Floating point format
      <ul>
       <li>Short format (32-bit E/D)</li>
       <li>Long long format (64-bit D/W)</li>
       <li>Extended format (128-bit X)</li>
      </ul>
     </li>
    </ul>
   </li>
   <li>Unprivileged instructies
    <ul>
     <li>Arithmetic operations
      <ul>
       <li>Conversie: CVB, CVD, PACK, UNPK</li>
      </ul>
     </li>
     <li>Logical operations
      <ul>
       <li>Shifting: SLA, SLL, SLDA, SLDL, SRA, SRL, SRDA, SRDL</li>
      </ul>
     </li>
     <li>Moving data
      <ul>
       <li>Register to register: CPYA, EAR, SAR</li>
       <li>Storage to register: LAM</li>
       <li>Register to storage: STAM</li>
       <li>Storage to storage: MVPG (1), MVN, MVZ, MVO, TR, TRT, MVST
      </li>
       <li>Overig: LAE, SRST</li>
      </ul>
     </li>
     <li>Program flow control
      <ul>
       <li>Branching: MC</li>
       <li>Loop control: BCT, BCTR, BRCT, BXH, BRXH, BXLE, BRXLE</li>
       <li>Overig: EX
        <ul>
         <li>alle instructies m.u.v. EX</li>
         <li>length field in: MVC, CLC, TR, TRT</li>
         <li>mask field in: TM, BC, BCR</li>
        </ul>
       </li>
      </ul>
     </li>
     <li>Overige general instructions
      <ul>
       <li>Checksum: CKSM</li>
       <li>Sorteren: CFC, UPT</li>
       <li>Serialisatie: TS, CS, CDS, PLO</li>
       <li>Timing: STCK</li>
       <li>Program mask: IPM, SPM</li>
      </ul>
     </li>
    </ul>
   </li>
   <li>Decimal Instructions
    <ul>
     <li>Arithmetic operations
      <ul>
       <li>Add: AP, ZAP</li>
       <li>Subtract: SP</li>
       <li>Multiply: MP, SRP</li>
       <li>Divide: DP, SRP, afronding</li>
      </ul>
     </li>
     <li>Logical operations
      <ul>
       <li>Compare: CP</li>
      </ul>
     </li>
     <li>Moving data
      <ul>
       <li>Storage to storage: ED, EDMK</li>
      </ul>
     </li>
    </ul>
   </li>
   <li>Floating-Point Instructions
    <ul>
     <li>Arithmetic operations
      <ul>
       <li>Add: AE, AER, AD, ADR, AXR, AU, AUR, AW, AWR</li>
       <li>Subtract: SE, SER, SD, SDR, SXR, SU, SUR, SW, SWR</li>
       <li>Multiply: ME, MER, MD, MDR, MXD, MXDR, MXR</li>
       <li>Divide: DE, DER, DD, DDR, DXR, HER, HDR</li>
       <li>Square root: SQDR, SQER</li>
      </ul>
     </li>
     <li>Logical operations
      <ul>
       <li>Compare: CE, CER, CD, CDR</li>
      </ul>
     </li>
     <li>Moving data
      <ul>
       <li>Register to register: LER, LDR, LTER, LTDR, LCER, LCDR,
        LNER, LNDR, LPER, LPDR, LRER, LRDR</li>
       <li>Storage to register: LE, LD</li>
       <li>Register to storage: STE, STD</li>
      </ul>
     </li>
    </ul>
   </li>
   <li>Control instructions
    <ul>
     <li>Program flow control
      <ul>
       <li>Branching: BAKR, PC, PR, PT</li>
      </ul>
     </li>
     <li>Moving data
      <ul>
       <li>Storage to register: EREG, ESTA</li>
       <li>Register to storage: MSTA</li>
      </ul>
     </li>
     <li>Controlling the PSW
      <ul>
       <li>Addressing mode: IAC, SAC, SACF</li>
      </ul>
     </li>
     <li>Overige control instructions
      <ul>
       <li>Storage: IVSK</li>
       <li>Testing addresses: TAR</li>
      </ul>
     </li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Hoofdstuk 4 -->
 <li>De belangrijkste standaard-macro's
  <ul>
   <li>Programma-beheer advanced:
    <ul>
     <li>Program interruption exits: SPIE en ESPIE</li>
    </ul>
   </li>
   <li>Geheugen beheer
    <ul>
     <li>Werkruimte: FREEMAIN en GETMAIN</li>
     <li>Werkruimte: STORAGE</li>
     <li>Structuren: CPOOL en subpools</li>
    </ul>
   </li>
   <li>Communicatie:
    <ul>
     <li>Bericht in de system log: WTL</li>
    </ul>
   </li>
   <li>Overige services
    <ul>
     <li>Debugging: SNAP/SNAPX, IEATDUMP</li>
     <li>Data-in-Virtual: DIV</li>
    </ul>
   </li>
   <li>Macro Instructions for Data Sets
    <ul>
     <li>OPEN, CLOSE</li>
     <li>READ, WRITE, GET, PUT, ERASE</li>
     <li>CHECK</li>
     <li>DCB, DCBD, DCBE
      <ul>
       <li>Exits, EODAD, SYNAD</li>
      </ul>
     </li>
     <li>ACB, RPL</li>
     <li>Record formats
      <ul>
       <li>Fixed / Fixed Blocked</li>
       <li>Variable / Variable Blocked</li>
       <li>Spanned</li>
       <li>Undefined</li>
      </ul>
     </li>
     <li>Access methods: BSAM, QSAM-locate, QSAM-move, QSAM-data,
      BPAM,
      BISAM, QISAM, BDAM, EXCP/EXCPVR, VSAM-ESDS, VSAM-KSDS, VSAM-RRDS,
      VSAM-LDS, IMS, DB2</li>
     <li>CHKPOINT</li>
     <li>NOTE, POINT</li>
     <li>XLATE</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Hoofdstuk 5 -->
 <li>Coding technieken en gestructureerd programmeren
  <ul>
   <li>Geheugenbeheer, paging</li>
   <li>In-line en out-of-line error handling</li>
   <li>Loops met BCT/BCTR</li>
   <li>Loops met BXLE/BXH</li>
   <li>Locality of reference en caching</li>
   <li>Exceptions en SPIE/ESPIE</li>
   <li>Abends en STAE/ESTAE</li>
  </ul>
 </li>
<!-- Hoofdstuk 6 -->
 <li>Reusability
  <ul>
   <li>Non-reusable programs</li>
   <li>Serially reusable programs</li>
   <li>Reenterable programs</li>
   <li>Refreshable programs
    <ul>
     <li>Performance aspecten</li>
    </ul>
   </li>
   <li>De consequenties voor de wijze van programmeren
    <ul>
     <li>Macro-varianten: MF=S, MF=L, MF=(E,addr), MF=(G,addr)</li>
     <li>Genereren van executable code "on the flight"</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Hoofdstuk 7 -->
 <li>Assembler directieven
  <ul>
   <li>Output control
    <ul>
     <li>ADATA</li>
    </ul>
   </li>
   <li>Generating data
    <ul>
     <li>CCW, CCW0, CCW1</li>
    </ul>
   </li>
   <li>Controlling addressability
    <ul>
     <li>LOCTR</li>
     <li>COM</li>
     <li>CXD</li>
     <li>DXD</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Hoofdstuk 8 -->
 <li>Literatuur
  <ul>
   <li>z/OS V1R1.0 DFSMSdfp Advanced Services</li>
   <li>z/OS V1R1.0 DFSMSdfp Checkpoint/Restart</li>
   <li>z/OS V1R1.0 DFSMSdfp Storage Administration Reference</li>
   <li>MVS Programming: Batch Local Shared Resources</li>
   <li>Debug Tool User's Guide and Reference</li>
   <li>HLASM V1R4 Toolkit Feature Interactive Debug Facility User's
       Guide</li>
   <li>HLASM V1R3 Toolkit Feature Interactive Debug Facility Reference
       Summary</li>
   <li>Don Nielsen (DonN@cmscms.com): 'Redesigning Assembler Language
       Development'</li>
  </ul>
 </li>
</ol>

/HTML

         HTMLDEF COURSE.NL4
<!-- NL -->
<h3><a name="deel4" id="deel4">Assembler voor gevorderden.</a></h3>

<p>De stof voor dit cursusdeel in onderverdeeld in zeven hoofdstukken:
</p>

<ol>
 <li>Authorisatie</li>
 <li>Instructieset</li>
 <li>De belangrijkste standaard-macro's</li>
 <li>Coding technieken en gestructureerd programmeren</li>
 <li>Parallellisatie</li>
 <li>Introductie dump lezen</li>
 <li>Literatuur</li>
</ol>

<ol>
<!-- Hoofdstuk 1 -->
 <li>Authorisatie
  <ul>
   <li>APF-authorisatie
    <ul>
     <li>Link</li>
     <li>Bibliotheek</li>
     <li>Alleen op job-step niveau</li>
    </ul>
   </li>
   <li>Supervisor state
    <ul>
     <li>Via SVC</li>
     <li>Via PC</li>
    </ul>
   </li>
   <li>PSW key</li>
  </ul>
 </li>
<!-- Hoofdstuk 2 -->
 <li>Instructieset
  <ul>
   <li>Unprivileged instructies
    <ul>
     <li>Moving data
      <ul>
       <li>Storage to storage: MVPG (1)</li>
      </ul>
     </li>
    </ul>
   </li>
   <li>Control instructions
    <ul>
     <li>Program flow control
      <ul>
       <li>Branching: BSA, BSG</li>
      </ul>
     </li>
     <li>Moving data
      <ul>
       <li>Register to register: EPAR, ESAR, SSAR</li>
       <li>Storage to register: LASP, LCTL, LURA</li>
       <li>Register to storage: STCTL, STURA</li>
       <li>Storage to storage: MVCP, MVCS, MVCK, MVCDK, MVCSK, MVPG
        (2)</li>
       <li>Overig: LRA</li>
      </ul>
     </li>
     <li>Controlling the PSW
      <ul>
       <li>PSW-key: IPK, SPKA</li>
       <li>System mask: STNSM, STOSM</li>
       <li>Overig: LPSW, SSM</li>
      </ul>
     </li>
     <li>Overige control instructions
      <ul>
       <li>Storage: ISKE, IPTE, RRBE, SSKE</li>
       <li>DAT: PALB, PTLB</li>
       <li>Clock: SCK, SCKC, SPT, STCKC, STPT</li>
       <li>Prefix: SPX, STPX</li>
       <li>Testing addresses: TB, TPROT</li>
       <li>Tracing: TRACE</li>
       <li>Overig: Diagnose, SIGP, STAP, STIDP</li>
      </ul>
     </li>
    </ul>
   </li>
   <li>I/O instructions</li>
   <li>Vector instructions</li>
   <li>Custom instructions</li>
  </ul>
 </li>
<!-- Hoofdstuk 3 -->
 <li>De belangrijkste standaard-macro's
  <ul>
   <li>Programma-beheer
    <ul>
     <li>Sub-programma dynamisch aanroepen: SYNCH/SYNCHX</li>
    </ul>
   </li>
   <li>Programma-beheer advanced:
    <ul>
     <li>Subtaak beheer: ATTACH/ATTACHX, DETACH, STATUS, CHAP</li>
     <li>Afvangen abends: STAE, ESTAE/ESTAEX, SETRP</li>
     <li>Linkage stack beheer: IEALSQRY, LSEXPAND</li>
    </ul>
   </li>
   <li>Geheugen beheer
    <ul>
     <li>Subpool types</li>
     <li>Cross memory: DSPSERV dataspace met ALESERV en TESTART</li>
     <li>Cross memory: DSPSERV hiperspace met HSPSERV</li>
     <li>Paging: PGSER of PGLOAD, PGOUT, en PGRLSE</li>
    </ul>
   </li>
   <li>Serialisatie
    <ul>
     <li>Resources: ENQ, DEQ, GQSCAN</li>
     <li>Synchronisatie: WAIT/POST en EVENTS</li>
     <li>Named tokens: IEANTCR, IEANTRT, IEANTDL</li>
    </ul>
   </li>
   <li>Communicatie:
    <ul>
     <li>Console info: CONVCON</li>
     <li>Bericht naar console: WTO, WTOR, DOM</li>
    </ul>
   </li>
   <li>Tijd
    <ul>
     <li>Timer interrupts: STIMER, STIMERM, CPUTIMER, TTIMER</li>
    </ul>
   </li>
   <li>Overige services
    <ul>
     <li>Resource Management: RESMGR</li>
     <li>Load module info: CSVAPF, CSVINFO, CSVQUERY, CSVRTLS</li>
     <li>Unieke identificatie van een taak: TCBTOKEN</li>
     <li>Parmlib members: IEFPRMLB</li>
    </ul>
   </li>
   <li>Macro Instructions for Data Sets
    <ul>
     <li>DYNALLOC
      <ul>
       <li>Datasets</li>
       <li>Output descriptors</li>
      </ul>
     </li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Hoofdstuk 4 -->
 <li>Coding technieken en gestructureerd programmeren
  <ul>
   <li>Abends, STAI, STAE, ESTAE/ESTAEX, FESTAE, FRR, Percolation</li>
   <li>Resource management</li>
  </ul>
 </li>
<!-- Hoofdstuk 5 -->
 <li>Parallellisatie
  <ul>
   <li>Lock-out, dead-lock</li>
   <li>Correctheidsbewijzen</li>
   <li>Serialisatie
    <ul>
     <li>ENQ/DEQ</li>
     <li>Latches</li>
     <li>CS/CDS/PLO</li>
     <li>Local lock, CML lock, CPU lock</li>
     <li>Hi&euml;rarchie</li>
    </ul>
   </li>
   <li>Synchronisatie
    <ul>
     <li>ECB</li>
     <li>Post/Wait/Events</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Hoofdstuk 6 -->
 <li>Introductie dump lezen
  <ul>
   <li>Symptom dump
    <ul>
     <li>PSW en ILC</li>
     <li>Load module identification</li>
     <li>PSW data</li>
     <li>GPRs en ARs</li>
     <li>Lokaliseren van error instructie
      <ul>
       <li>Bepaal loadmod offset</li>
       <li>Vind juiste CSECT en offset</li>
       <li>Lokaliseer error instructie</li>
      </ul>
     </li>
    </ul>
   </li>
   <li>SYSUDUMP / SYSABEND
    <ul>
     <li>TCB c.a.</li>
     <li>Virtual storage map</li>
     <li>ENQ/DEQ CBs</li>
     <li>Data Management CBs</li>
     <li>IOS CBs</li>
     <li>RTM CBs</li>
     <li>Stacks en Save Areas</li>
     <li>Subsystem Area</li>
     <li>LSQA</li>
     <li>Subpools 229 en 230</li>
     <li>Registers</li>
     <li>Summary storage</li>
     <li>Modules</li>
     <li>User Subpools</li>
     <li>Trace Table
      <ul>
       <li>Trace entry formats</li>
      </ul>
     </li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Hoofdstuk 7 -->
 <li>Literatuur
  <ul>
   <li>OS/390 V2R6.0 MVS Programming: Resource Recovery</li>
   <li>z/OS V1R1.0 MVS Authorized Assembler Services Guide</li>
   <li>z/OS V1R1.0 MVS Authorized Assembler Services Reference
    (4 delen)</li>
   <li>z/OS V1R1.0 DFSMS Access Method Services for Catalogs</li>
   <li>z/OS V1R1.0 JES2 Macros</li>
   <li>z/OS V1R1.0 RACF Macros and Interfaces</li>
   <li>z/OS V1R1.0 RACROUTE Macro Reference</li>
   <li>z/OS V1R1.0 MVS Using the Functional Subsystem Interface</li>
   <li>z/OS V1R1.0 MVS Using the Subsystem Interface</li>
   <li>z/OS V1R1.0 MVS IPCS User's Guide</li>
   <li>z/OS V1R1.0 MVS IPCS Commands</li>
   <li>z/OS V1R1.0 MVS Dump Output Messages</li>
   <li>z/OS V1R1.0 JES2 Messages</li>
   <li>z/OS V1R1.0 RACF Messages and Codes</li>
   <li>z/OS V1R1.0 MVS Data Areas (5 delen)</li>
   <li>z/OS V1R1.0 JES2 Data Areas (3 delen)</li>
   <li>z/OS V1R1.0 RACF Data Areas</li>
  </ul>
 </li>
</ol>

/HTML

         HTMLDEF COURSE.NL5
<!-- NL -->
<h3><a name="deel5" id="deel5">Assembler - Macro faciliteit.</a></h3>

<p>De stof voor dit cursusdeel in onderverdeeld in zes hoofdstukken:
</p>
<ol>
 <li>Assembler</li>
 <li>Assembler directieven</li>
 <li>Gebruik van macro's en conditional assembly</li>
 <li>Ontwerp van macro's</li>
 <li>OO-technieken in assembler</li>
 <li>Literatuur</li>
</ol>
<ol>
<!-- Hoofdstuk 1 -->
 <li>Assembler
  <ul>
   <li>Assembler function
    <ul>
     <li>Pre-assembly logic
      <ul>
       <li>MNOTE, MHELP</li>
       <li>MCALL/NOMCALL</li>
      </ul>
     </li>
     <li>Assembly logic
      <ul>
       <li>Two passes</li>
      </ul>
     </li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Hoofdstuk 2 -->
 <li>Assembler directieven
  <ul>
   <li>Macro definitions
    <ul>
     <li>MACRO
      <ul>
       <li>Prototype statement</li>
       <li>Positional parameters</li>
       <li>Keyword parameters</li>
      </ul>
     </li>
     <li>MEND</li>
     <li>Comments</li>
     <li>MNOTE, severity levels</li>
     <li>AREAD</li>
     <li>AINSERT</li>
    </ul>
   </li>
   <li>Pre-assembly variables
    <ul>
     <li>LCLA, GBLA</li>
     <li>LCLB, GBLB</li>
     <li>LCLC, GBLC</li>
     <li>SETA
      <ul>
       <li>Built-in functions: AND, OR, XOR, NOT, SLA, SLL, SRA, SRL
       </li>
       <li>SETAF</li>
      </ul>
     </li>
     <li>SETB
      <ul>
       <li>Built-in functions: NOT, AND, AND NOT, OR, OR, NOT</li>
       <li>Logical terms: EQ, NE, GT, GE, LT, LE</li>
      </ul>
     </li>
     <li>SETC
      <ul>
       <li>Built-in functions: DOUBLE, FIND, INDEX, LOWER, UPPER</li>
       <li>SETCF</li>
       <li>Substring notation</li>
      </ul>
     </li>
     <li>Extended SET</li>
     <li>Arrays</li>
     <li>Created set symbols</li>
    </ul>
   </li>
   <li>Pre-assembly control
    <ul>
     <li>Labels, ANOP</li>
     <li>AIF</li>
     <li>AGO</li>
     <li>ACTR</li>
     <li>MHELP</li>
    </ul>
   </li>
   <li>Systeem variabelen
    <ul>
     <li>&amp;SYSDATE, &amp;SYSDATC, &amp;SYSTIME</li>
     <li>&amp;SYSECT, &amp;SYSSTYP</li>
     <li>&amp;SYSLIST</li>
     <li>&amp;SYSNDX, &amp;SYSNEST</li>
     <li>&amp;SYSPARM</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Hoofdstuk 3 -->
 <li>Gebruik van macro's en conditional assembly
  <ul>
   <li>Gebruik van macro's versus COPY</li>
   <li>DSECT-macro's</li>
   <li>CSECT-macro's</li>
   <li>Conditional assembly in open code</li>
   <li>Optimalisatie</li>
   <li>Vervangen van standaard macro's</li>
   <li>Vervangen van opcodes door macro's</li>
  </ul>
 </li>
<!-- Hoofdstuk 4 -->
 <li>Ontwerp van macro's
  <ul>
   <li>Wat leent zich voor opname in een macro</li>
   <li>Documentatie van macro's
    <ul>
     <li>Pre-assembly logic</li>
     <li>Assembly logic</li>
     <li>Run-time logic</li>
    </ul>
   </li>
   <li>Interface overwegingen
    <ul>
     <li>Assembly interface</li>
     <li>Run-time interface</li>
    </ul>
   </li>
   <li>Sturing van expansie middels parameters
    <ul>
     <li>Lijsten van parameters</li>
    </ul>
   </li>
   <li>Plaats van de macro: in de source of in een bibliotheek?</li>
   <li>Vervanging van opcodes</li>
   <li>Vervanging van standaard macros</li>
  </ul>
 </li>
<!-- Hoofdstuk 5 -->
 <li>OO-technieken in assembler
  <ul>
   <li>Encapsulatie</li>
   <li>Ontwerp van een klasse</li>
   <li>Ontwerp van methoden</li>
   <li>Implementatie in macros</li>
  </ul>
 </li>
<!-- Hoofdstuk 6 -->
 <li>Literatuur
  <ul>
   <li>High Level Assembler Programmer's Guide</li>
   <li>High Level Assembler Language Reference</li>
   <li>John Ehrman (ehrman@vnet.ibm.com): 'Macros and Conditional
    Assembly
    Techniques, SHARE 94, Winter Conference 2000'</li>
  </ul>
 </li>
</ol>

/HTML

         HTMLDEF COURSE.NL6
<!-- NL -->
<h3><a name="deel6" id="deel6">Bixoft eXtended Assembler language.</a>
</h3>

<p>De stof voor dit cursusdeel in onderverdeeld in vier hoofdstukken:
</p>
<ol>
 <li>Extended mnemonics</li>
 <li>Assembler Directieven</li>
 <li>Macro's voor gestructureerd programmeren</li>
 <li>Mapping macro's</li>
</ol>

<ol>
<!-- Hoofdstuk 1 -->
 <li>Extended mnemonics
  <ul>
   <li>Conditionele subroutine-aanroep
    <ul>
     <li>BALC, BALE, BALH, BALL, BALM, BALO, BALP, BALZ<br />
      BALNE, BALNH, BALNL, BALNM, BALNO, BALNP, BALNZ</li>
     <li>BASC, BASE, BASH, BASL, BASM, BASO, BASP, BASZ<br />
      BASNE, BASNH, BASNL, BASNM, BASNO, BASNP, BASNZ</li>
    </ul>
   </li>
   <li>Manipuleren van gegevens
    <ul>
     <li>CLEAR</li>
     <li>CPY</li>
     <li>DEC, INC</li>
     <li>LC, LT, LTA24, LTC, LTH, LTHU, STA24</li>
     <li>MVPL</li>
     <li>SET, SETOF, SETON</li>
    </ul>
   </li>
   <li>Execute instructies
    <ul>
     <li>EXQ, EXCLC, EXMVC, EXTR, EXTRT, EXXC</li>
    </ul>
   </li>
   <li>Extended type checking
    <ul>
     <li>GEN</li>
     <li>IPK, LA, LR, TRT</li>
    </ul>
   </li>
   <li>Overig
    <ul>
     <li>EPSW</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Hoofdstuk 2 -->
 <li>Assembler Directieven
  <ul>
   <li>Controles op variabelen
    <ul>
     <li>CHKLIT, CHKMAP, CHKNUM, CHKREG</li>
     <li>DISSECT, SPLIT</li>
    </ul>
   </li>
   <li>Defini&euml;ren van gegevens
    <ul>
     <li>CMDTXT, TRTAB</li>
     <li>DCL, DC, DCOVR, DS, DSOVR, NESTCB</li>
     <li>EQU, EQUOVR, EQUREG</li>
     <li>EXTRN, EXTRNOVR</li>
     <li>LABEL</li>
     <li>LTORG, RDATA, RLTORG</li>
    </ul>
   </li>
   <li>Addressering
    <ul>
     <li>DROP</li>
     <li>POP, PUSH</li>
     <li>USE, USEDREGS, USING</li>
    </ul>
   </li>
   <li>Overig
    <ul>
     <li>EJECT, EJECTOVR, SPACE</li>
     <li>END</li>
     <li>GENMAPS</li>
     <li>OPSYSNS</li>
     <li>SYSPARM</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Hoofdstuk 3 -->
 <li>Macro's voor gestructureerd programmeren
  <ul>
   <li>Programs and subroutines
    <ul>
     <li>PGM, RETRN</li>
     <li>ABND, ABNDPGM</li>
     <li>BEGSR, ENDSR, EXSR</li>
    </ul>
   </li>
   <li>Conditional expressions
    <ul>
     <li>IF, ELSE, ENDIF</li>
     <li>CASE, ELSE, ENDCASE</li>
     <li>DO, LOOP, LEAVE, ENDDO</li>
     <li>GOTO</li>
     <li>IF$, IF$ALC, IF$Ls, IF$LU</li>
    </ul>
   </li>
   <li>Diverse
    <ul>
     <li>DBG, SNAPHDR, SNAPNTRY</li>
     <li>GLUE</li>
     <li>NTCR, NTRT, NTDL</li>
     <li>RWTO</li>
     <li>SETMODE</li>
    </ul>
   </li>
  </ul>
 </li>
<!-- Hoofdstuk 4 -->
 <li>Mapping macro's
  <ul>
   <li>Toegekende veld typen - a, b, c, f, g, j, p, v, 0</li>
   <li>Gebruik van MAP-macro's in combinatie met GENMAPS</li>
   <li>Gebruik van MAP-macro's in combinatie met DCL</li>
   <li>Werken met gedeclareerde bits</li>
   <li>Werken met gedeclareerde waarden</li>
   <li>Werken met gedefinieerde registers</li>
   <li>Relatie met conditionele expressies</li>
   <li>Relatie met DC, DS, EXTRN macro's</li>
   <li>Functie van DCOVR, DSOVR, EXTRNOVR macro's</li>
   <li>MAPEQU, MAPBITS, MAPREGS</li>
   <li>MAPSAVE</li>
   <li>MAP control blocks</li>
  </ul>
 </li>
</ol>

/HTML

         HTMLDEF COURSE.NLL
<!-- NL -->
<p>
 Naar cursusdeel <a href="#deel1">Introductie en algemene principes</a>
<br />
 Naar cursusdeel <a href="#deel2">Assembler basis</a><br />
 Naar cursusdeel <a href="#deel3">Assembler voor
 applicatie-programmeurs</a><br />
 Naar cursusdeel <a href="#deel4">Assembler voor gevorderden</a>
<br />
 Naar cursusdeel <a href="#deel5">Assembler - Macro Faciliteit</a>
<br />
 Naar cursusdeel <a href="#deel6">Bixoft eXtended Assembler language
</a></p>

/HTML
