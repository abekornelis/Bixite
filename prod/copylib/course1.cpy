         HTMLDEF COURSE1.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/course1.htm -->
<!-- -->
<title>Bixoft Course 1 - High Level Assembler: Classic</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft courses" href="courses.htm" />
<link rev="High Level Assembler: Interfaces" href="course2.htm" />
<link rel="High Level Assembler: Interfaces" href="course2.htm" />
<link rel="High Level Assembler: Update" href="course3.htm" />
<link rel="High Level Assembler: Update for z/Architecture"
 href="course4.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe, Course, Hlasm" />
<meta http-equiv="description"
      content="About Bixoft's course for OS/390 Assembler Language:
 Classic" />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF COURSE1.UKT
<!-- UK -->
<h1 align="center">High Level Assembler: Classic.</h1>

<p>This course covers the Assembler and the application-programmer
 oriented
 hardware instructions that have been available from the introduction
 of the
 S/360 and that were added over the first 20 years or so of the
 architecture.
 It is estimated that 90% of existing Assembler applications use only
 the
 instructions covered in this course.</p>

<p>The course is intended for:</p>
<ul>
 <li>Experienced programmers needing to learn Assembler</li>
 <li>Assembler programmers needing to brush up on their Assembler
  skills</li>
</ul>

<p>This overview comes in three parts, which are presented in sequence
 below:</p>
<ol>
 <li><a href="#part1">Course Description</a></li>
 <li><a href="#part2">Course Objectives</a></li>
 <li><a href="#part3">Topical Outline</a></li>
</ol>

/HTML

         HTMLDEF COURSE1.UK1
<!-- UK -->
<h2><a name="part1" id="part1">Course Description</a></h2>

<p>Recommended Duration: 5 Days</p>

<p>Benefits: Students who complete this course will be able to write
 or maintain basic
 Assembler programs. The emphasis is on learning all the hardware
 instructions used by applications programmers as well as learning
 the
 basic interfaces to MVS, OS/390 or z/OS from Assembler language
 programs.</p>

<p>Audience: Experienced programmers needing to learn Assembler as an
 additional
 language or who need a refresher in Assembler. This course may also
 be
 used to teach Assembler as a first language, but it should probably
 be
 extended to seven days.</p>

<p>Prerequisites: At the very least the student entering this course
 should have background
 in using ISPF/PDF or a similar product used for creating programs and
 submitting jobs. Some experience in writing programs in a third
 generation
 language such as COBOL, PL/I, FORTRAN, or C.</p>

<p>Related IBM Materials.<br />
 This course is drawn from these IBM manuals; access to them in the
 classroom is required (via hardcopy, BookManager, etc.):</p>
<ul>
 <li>SA22-7201 - Principles of Operation</li>
 <li>GX20-0406 - Reference Summary</li>
 <li>SC26-4940 - High Level Assembler reference</li>
</ul>

<p>Major Topics Include:</p>
<ul>
 <li>Hardware fundamentals (registers, memory, addressing)</li>
 <li>Machine instructions</li>
 <li>The Assembler</li>
 <li>Data formats (character, packed decimal, binary)</li>
 <li>Working with files and program linkages</li>
 <li>Calculations: rounding, editing, planning results
  (significant digits, implied decimal positions)</li>
 <li>Loops and tables</li>
 <li>Multiple base registers</li>
 <li>DSECTs, ORG, and EQU</li>
</ul>

<p>Exercises: There are 14 hands-on exercises</p>

<p class="remark">Note 1:<br />
 This course covers the Assembler and the application-programmer
 oriented hardware instructions that have been available from the
 introduction of the S/360 and that were added over the first 20
 years or
 so of the architecture. It is estimated that 90% of existing
 Assembler
 applications use only the instructions covered in this course.</p>

<p class="remark">Note 2:<br />
 We do not cover any instructions in the following categories:
 floating point, vector, privileged, semi-privileged.</p>

<p class="remark">Note 3:<br />
 The course integrates the latest features of the High Level Assembler
 (HLASM).</p>

<p class="remark">Note 4:<br />
 The follow on courses are:</p>
<ol>
 <li><a href="course2.htm">High Level Assembler: Interfaces</a></li>
 <li><a href="course3.htm">High Level Assembler: Update</a></li>
 <li><a href="course4.htm">High Level Assembler: Update for
  z/Architecture</a></li>
</ol>

<p class="remark">Note 5:<br />
 All course material is in American English. Oral explanation will be
 in
 English by default, but is also available in Dutch, German, and/or
 French.</p>

<p>This course description Copyright &copy; 2001 by Steven H. Comstock.
 All rights reserved.</p>

/HTML

         HTMLDEF COURSE1.UK2
<!-- UK -->
<h2><a name="part2" id="part2">Course Objectives</a></h2>

<p>On successful completion of this course, the student, with the aid
 of the
 appropriate reference materials, should be able to:</p>

<ol>
 <li>Code a program in Assembler language that uses the following
  techniques:<br /><br />
  <ol>
   <li>Use standard save area linkage techniques<br /><br /></li>
   <li>Define and process sequential files with fixed length records,
    including:<br /><br />
    <ul>
     <li>Reading and writing records from / to DASD files</li>
     <li>Reading and writing records from / to tape files</li>
     <li>Writing records to print files, including formatting detail
      lines,
      but not using carriage control characters or other report
      management techniques<br /></li>
    </ul><br />
   </li>
   <li>Perform calculations using packed decimal arithmetic, including
    formatting results with edit patterns and half-adjusting
    results<br /><br /></li>
   <li>Perform calculations using binary integer arithmetic<br />
 <br /></li>
   <li>Work with data in tables, including defining and accessing the
    elements in a table<br /><br /></li>
   <li>Use DSECTs to describe structures<br /><br /></li>
   <li>Use multiple base registers</li>
  </ol><br />
 </li>
 <li>Document the program listing with comments to assist in
  maintenance and
  understanding of the code<br /><br /></li>
 <li>Debug the resulting code of program-check type errors</li>
</ol>

<p class="remark">Note:<br />
 This course supports the MVS, OS/390, and z/OS environments.</p>

<p>These course objectives Copyright &copy; 2001 by Steven H. Comstock.
 All rights reserved.</p>

/HTML

         HTMLDEF COURSE1.UK3
<!-- UK -->
<h2><a name="part3" id="part3">Topical Outline</a></h2>

<h3>Day One</h3>

<h4>Fundamentals</h4>

<ul>
 <li>Programming concepts</li>
 <li>Source, Object, and Load Modules</li>
 <li>Memory and Data Representation</li>
 <li>Addressing</li>
 <li>The CPU</li>
 <li><span class="underline">Computer Exercise</span>:
  Setting Up For Programming</li>
</ul>

<ul>
 <li>Machine Instruction Formats</li>
 <li>Base / Displacement Addresses</li>
 <li>Assembler Language and the High Level Assembler (HLASM)</li>
 <li>Basic Program Structure Requirements</li>
 <li><span class="underline">Computer Exercise</span>:
  Coding, Assembling, Linking, Running</li>
</ul>

<h4>Data Description, Moving Data, Record Processing</h4>

<ul>
 <li>Defining Constants and Work Areas (DS and DC Statements for
  Character
  Type Data)</li>
 <li>MVC instruction</li>
 <li>Instruction Styles and Formats</li>
 <li>Introduction to Branching</li>
 <li>Introduction to Record Processing</li>
 <li>Data Organization</li>
 <li>DCB Macros</li>
 <li>OPEN, GET, PUT, CLOSE Macros</li>
 <li>Record Processing - An Example</li>
 <li><span class="underline">Computer Exercise</span>:
  File To File Program</li>
</ul>

<h4>Compares, Branches, and Linkages</h4>

<ul>
 <li>Record Layouts</li>
 <li>Programming Techniques: MVC</li>
 <li>CLC Instruction and the Condition Code</li>
 <li>BC, BCR Instructions</li>
 <li>Extended mnemonics</li>
 <li>BAS, BASR, BAL, BALR, IPM Instructions</li>
</ul>

<h3>Day Two</h3>

<h4>More Fundamentals</h4>

<ul>
 <li>More on Addressability</li>
 <li>What Can Go Wrong?</li>
 <li>Storage Protect Keys</li>
 <li><span class="underline">Computer Exercise</span>:
  List Fields From A Record</li>
</ul>

<h4>Packed Decimal Arithmetic</h4>

<ul>
 <li>Zoned Decimal Format</li>
 <li>Packed Decimal Format</li>
 <li>DC and DS for Zoned and Packed Type Data</li>
 <li>Packed Decimal Instruction Set: PACK, UNPK, AP, SP, MP, DP, CP,
 ZAP</li>
 <li>Arithmetic Concerns
  <ul>
   <li>Significant digits</li>
   <li>Keeping Track of Decimal Points</li>
  </ul>
 </li>
 <li><span class="underline">Computer Exercise</span>:
  Packed Decimal Calculations</li>
</ul>

<h4>More Assembler and Arithmetic Concepts</h4>

<ul>
 <li>Redefining Storage</li>
 <li>Creating Data Structures</li>
 <li>The Assembly Listing Components</li>
 <li>Introduction to Debugging</li>
 <li>Rounding</li>
 <li>MVO - Move With Offset</li>
 <li>SRP - Shift and Round Packed</li>
 <li><span class="underline">Computer Exercise</span>:
  Half-Adjusting Data</li>
</ul>

<h3>Day Three</h3>

<h4>Editing Packed Decimal Fields</h4>

<ul>
 <li>DS / DC for Hexadecimal Data</li>
 <li>ED Instruction</li>
 <li>Edit Patterns</li>
 <li><span class="underline">Computer Exercise</span>:
  Edit Packed Decimal Data</li>
</ul>

<h4>A Deeper Look at Instruction Formats</h4>

<ul>
 <li>DC / DS for Binary Data Type</li>
 <li>Addresses in Instructions</li>
 <li>Explicit Coding - Review</li>
 <li>Tables</li>
 <li>LA Instruction</li>
 <li>Instruction Formats (SS, RR, RX)</li>
 <li>MVI, CLI Instructions</li>
 <li>Instruction Formats (SI)</li>
 <li>MVN, MVZ Instructions</li>
 <li><span class="underline">Computer Exercise</span>:
  Using Immediate Instructions</li>
</ul>

<h4>Binary Integer Data</h4>

<ul>
 <li>Binary Integer Data Formats</li>
 <li>Twos Complement</li>
 <li>DC/DS for Fullword, Halfword, and Doubleword Binary Data</li>
 <li>Boundary Alignment</li>
 <li>CVB, CVD Instructions</li>
 <li>L, LR, ST Instructions</li>
 <li>A, AR, S, SR, C, CR, MR, M, DR, D Instructions</li>
 <li>Concerns Of Working With Binary Integers</li>
 <li>Working With Binary Numbers - An Example</li>
 <li><span class="underline">Computer Exercise</span>:
  Binary Arithmetic Computations</li>
</ul>

<h3>Day Four</h3>

<h4>More Binary Instructions</h4>

<ul>
 <li>Compare Instructions</li>
 <li>LPR, LNR, LCR Instructions</li>
 <li>Logical Arithmetic: AL, ALR, CL, CLR, SL, SLR</li>
 <li>Halfword Instructions: AH, CH, LH, MH, SH, STH</li>
</ul>

<h4>EDit and MarK</h4>

<ul>
 <li>EDMK and floating currency signs</li>
 <li><span class="underline">Computer Exercise</span>:
  Floating Dollar Sign</li>
</ul>

<h4>Loops and Tables</h4>

<ul>
 <li>Literals</li>
 <li>LTORG</li>
 <li>Address Constants</li>
 <li>EQU - Equate Symbol</li>
 <li>Loop Control</li>
 <li>Tables</li>
 <li>BCT, BCTR, BXLE, BXH, IC, STC</li>
 <li><span class="underline">Computer Exercise</span>:
  Table Processing</li>
</ul>

<h3>Day Five</h3>

<h4>Multiple base registers, DSECTS, ORG</h4>

<ul>
 <li>STM, LM</li>
 <li>Multiple Base Registers</li>
 <li>CNOP</li>
 <li>Dummy sections - DSECTs</li>
 <li>ORG</li>
 <li><span class="underline">Computer Exercise</span>:
  Using DSECTs</li>
</ul>

<h4>Working With Bits</h4>

<ul>
 <li>O, OC, OR, OI, N, NC, NR, NI, X, XC, XR, XI</li>
 <li>Sorting Tables</li>
 <li>LTR, TM Instructions</li>
 <li>More on EQU</li>
 <li><span class="underline">Computer Exercise</span>:
  Sorting a Table</li>
</ul>

<h4>Shift Instructions</h4>

<ul>
 <li>SRL, SRA, SLL, SLA, SRDL, SRDA, SLDL, SLDA Instructions</li>
 <li>Code Fragment: Display Bit String</li>
</ul>

<h4>Translate</h4>

<ul>
 <li>Instruction Set: TR</li>
 <li>Code Fragment: Display Hex String</li>
 <li>Code Fragment: Direct Access to a Table</li>
 <li><span class="underline">Computer Exercise</span>:
  Build a Table Dynamically</li>
</ul>

<h4>TRanslate-and-Test and EXecute</h4>

<ul>
 <li>TRT - Translate and Test</li>
 <li>EX - Execute</li>
 <li>TRT and EX</li>
</ul>

<h4>Strings</h4>

<ul>
 <li>String Handling</li>
 <li>ICM, CLM, STCM Instructions</li>
 <li>MVCL, CLCL Instructions</li>
 <li>MVCIN Instruction</li>
</ul>

<h4>Setting Addressing Mode</h4>

<ul>
 <li>Addressing Mode</li>
 <li>AMODE and RMODE</li>
 <li>BASSM - Branch And Save And Set Mode</li>
 <li>BSM - Branch and Set Mode</li>
</ul>

<p>This topical outline Copyright &copy; 2001 by Steven H. Comstock.
 All rights reserved.</p>

/HTML

         HTMLDEF COURSE1.UKL
<!-- UK -->
<p>
 To the <a href="#part1">Course Description</a><br />
 To the <a href="#part2">Course Objectives</a><br />
 To the <a href="#part3">Topical Outline</a>
</p>
/HTML

         HTMLDEF COURSE1.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/course1.htm -->
<!-- -->
<title>Bixoft Cursus 1 - High Level Assembler: Classic</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft Cursus Assembler" href="courses.htm" />
<link rev="High Level Assembler: Interfaces" href="course2.htm" />
<link rel="High Level Assembler: Interfaces" href="course2.htm" />
<link rel="High Level Assembler: Update" href="course3.htm" />
<link rel="High Level Assembler: Update for z/Architecture"
      href="course4.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe, Cursus, Hlasm" />
<meta http-equiv="description"
      content="Uitleg over Bixoft's cursus voor High Level Assembler."
      />
<meta http-equiv="robots" content="index,follow" />
/HTML

         HTMLDEF COURSE1.NLT
<!-- NL -->
<h1 align="center">High Level Assembler: Classic.</h1>

<p>Deze cursus behandelt de Assembler en de
 applicatie-geori&euml;nteerde
 hardware instructies voor zover die beschikbaar zijn geweest vanaf de
 introductie van de S/360 architectuur, dan wel zijn toegevoegd in de
 eerste
 20 jaren daarna. Naar schatting gebruikt ongeveer 90% van de
 Assembler
 applicaties uitsluitend de instructies die in deze cursus worden
 behandeld.</p>

<p>De cursus is bedoeld voor:</p>
<ul>
 <li>Ervaren programmeurs die Assembler moeten leren</li>
 <li>Assembler programmeurs die hun Assembler ervaring willen
     oppoetsen</li>
</ul>

<p>De cursus presentatie hieronder bestaat uit de volgende drie
 onderdelen:</p>
<ol>
 <li><a href="#part1">Cursus beschrijving</a></li>
 <li><a href="#part2">Cursus doelstellingen</a></li>
 <li><a href="#part3">Lijst van onderwerpen</a></li>
</ol>

/HTML

         HTMLDEF COURSE1.NL1
<!-- NL -->
<h2><a name="part1" id="part1">Cursus beschrijving</a></h2>

<p>Verwachte duur: 5 dagen</p>

<p>Voordelen: Na afronding van deze cursus kunnen de deelnemers
 Assembler programmatuur
 schrijven en onderhouden. De nadruk ligt op het leren kennen van
 alle
 hardware instructies die applicatie programmeurs plegen te gebruiken,
 en op het leren hanteren van de belangrijkste interfaces met MVS,
 OS/390
 of z/OS vanuit Assembler programma's.</p>

<p>Doelgroep: Ervaren programmeurs die Assembler moeten leren als een
 extra taal, of
 die een opfriscursus Assembler nodig hebben. Deze cursus kan ook
 gevolgd
 worden om Assembler als een eerste programmeertaal te leren, maar dan
 zal
 de duur al gauw oplopen tot zeven dagen.</p>

<p>Voorwaarden: De deelnemer dient ten minste enige ervaring te hebben
 met ISPF/PDF of
 een vergelijkbaar produkt voor het aanmaken van programma's en het
 submitten van jobs. Enige ervaring met het schrijven van programma's
 in
 een derde generatie taal zoals COBOL, PL/I, FORTRAN, of C wordt
 aanbevolen.</p>

<p>IBM Materiaal. Deze cursus is afgeleid van de volgende IBM
 handboeken; deze boeken zijn
 tijdens de cursus nodig (op papier, via BookManager, etc.):</p>
<ul>
 <li>SA22-7201 - Principles of Operation</li>
 <li>GX20-0406 - Reference Summary</li>
 <li>SC26-4940 - High Level Assembler reference</li>
</ul>

<p>De belangrijkste onderwerpen:</p>
<ul>
 <li>Hardware fundamentals (registers, memory, addressing)</li>
 <li>Machine instructions</li>
 <li>The Assembler</li>
 <li>Data formats (character, packed decimal, binary)</li>
 <li>Working with files and program linkages</li>
 <li>Calculations: rounding, editing, planning results
  (significant digits, implied decimal positions)</li>
 <li>Loops and tables</li>
 <li>Multiple base registers</li>
 <li>DSECTs, ORG, and EQU</li>
</ul>

<p>Oefeningen: De cursus omvat 14 oefeningen</p>

<p class="remark">Opmerking 1:<br />
 Deze cursus behandelt de Assembler en de applicatie-geori&euml;
 nteerde
 hardware instructies voor zover die beschikbaar zijn geweest vanaf
 de
 introductie van de S/360 architectuur, dan wel zijn toegevoegd in de
 eerste 20 jaren daarna. Naar schatting gebruikt ongeveer 90% van de
 Assembler applicaties uitsluitend de instructies die in deze cursus
 worden
 behandeld.</p>

<p class="remark">Opmerking 2:<br />
 Instructies uit de volgende categorie&euml;n worden niet behandeld:
 floating point, vector, privileged, semi-privileged.</p>

<p class="remark">Opmerking 3:<br />
 De cursus gaat uit van de meest recente voorzieningen in de High
 Level
 Assembler (HLASM).</p>

<p class="remark">Opmerking 4:<br />
De vervolgcursussen zijn:</p>
<ol>
 <li><a href="course2.htm">High Level Assembler: Interfaces</a></li>
 <li><a href="course3.htm">High Level Assembler: Update</a></li>
 <li><a href="course4.htm">High Level Assembler: Update for
  z/Architecture</a></li>
</ol>

<p class="remark">Opmerking 5:<br />
 Al het cursus materiaal is in amerikaans engels. Mondelinge
 toelichting
 zal worden gegeven in het engels, maar is eventueel ook beschikbaar
 in
 het nederlands, duits, en/of frans.</p>

<p>Deze cursus beschrijving Copyright &copy; 2001 Steven H. Comstock.
 Alle rechten voorbehouden.<br />
 Vertaling Copyright &copy; 2001 B.V. Bixoft.
 Alle rechten voorbehouden.</p>

/HTML

         HTMLDEF COURSE1.NL2
<!-- NL -->
<h2><a name="part2" id="part2">Cursus doelstellingen</a></h2>

<p>Na succesvolle voltooiing van de cursus kan de deelnemer, aan de
hand
van de toepasselijke handboeken:</p>

<ol>
 <li>Een Assembler programma schrijven dat van de volgende technieken
  gebruik
  maakt:<br /><br />
  <ol>
   <li>Standaard save-area linkage<br /><br /></li>
   <li>Sequenti&euml;le datasets met records met een vaste lengte
    defini&euml;ren en verwerken, dus:<br /><br />
    <ul>
     <li>Lezen en schrijven van records van / naar DASD datasets</li>
     <li>Lezen en schrijven van records van / naar tape datasets</li>
     <li>Records schrijven naar print bestonden, inclusief het
      formatteren
      van detail regels, maar exclusief het gebruik van carriage
      control
      characters of andere report management technieken</li>
    </ul><br />
   </li>
   <li>Berekeningen uitvoeren met packed decimal getallen, waaronder
    het
    formatteren van resultaten met edit patronen en het afronden van
    resultaten<br /><br /></li>
   <li>Berekeningen uitvoeren met binaire gehele getallen<br /><br />
 </li>
   <li>Werken met gegevens in tabellen, waaronder het defini&euml;ren
    en
    benaderen van de elementen in een tabel<br /><br /></li>
   <li>DSECTs gebruiken om structuren te beschrijven<br /><br /></li>
   <li>Meerdere basis registers gebruiken</li>
  </ol><br />
 </li>
 <li>Het documenteren van het programma middels commentaar om
  leesbaarheid en
  onderhoud van het programma te verbeteren<br /><br /></li>
 <li>Fouten van het type program-check in de programmatuur opsporen
  en
  verwijderen.</li>
</ol>

<p class="remark">Opmerking:<br />
 Deze cursus is bedoeld voor MVS, OS/390, en z/OS omgevingen.</p>

<p>Deze cursus doelstellingen Copyright &copy; 2001 Steven H. Comstock.
 Alle rechten voorbehouden.<br />
 Vertaling Copyright &copy; 2001 B.V. Bixoft.
 Alle rechten voorbehouden.</p>

/HTML

         HTMLDEF COURSE1.NL3
<!-- NL -->
<h2><a name="part3" id="part3">Lijst van onderwerpen</a></h2>

<h3>Dag een</h3>
<!-- UK -->

<h4>Fundamentals</h4>

<ul>
 <li>Programming concepts</li>
 <li>Source, Object, and Load Modules</li>
 <li>Memory and Data Representation</li>
 <li>Addressing</li>
 <li>The CPU</li>
 <li><span class="underline">Computer Exercise</span>:
  Setting Up For Programming</li>
</ul>

<ul>
 <li>Machine Instruction Formats</li>
 <li>Base / Displacement Addresses</li>
 <li>Assembler Language and the High Level Assembler (HLASM)</li>
 <li>Basic Program Structure Requirements</li>
 <li><span class="underline">Computer Exercise</span>:
  Coding, Assembling, Linking, Running</li>
</ul>

<h4>Data Description, Moving Data, Record Processing</h4>

<ul>
 <li>Defining Constants and Work Areas (DS and DC Statements for
   Character Type
   Data)</li>
 <li>MVC instruction</li>
 <li>Instruction Styles and Formats</li>
 <li>Introduction to Branching</li>
 <li>Introduction to Record Processing</li>
 <li>Data Organization</li>
 <li>DCB Macros</li>
 <li>OPEN, GET, PUT, CLOSE Macros</li>
 <li>Record Processing - An Example</li>
 <li><span class="underline">Computer Exercise</span>:
  File To File Program</li>
</ul>

<h4>Compares, Branches, and Linkages</h4>

<ul>
 <li>Record Layouts</li>
 <li>Programming Techniques: MVC</li>
 <li>CLC Instruction and the Condition Code</li>
 <li>BC, BCR Instructions</li>
 <li>Extended mnemonics</li>
 <li>BAS, BASR, BAL, BALR, IPM Instructions</li>
</ul>

<h3>Dag twee</h3>

<h4>More Fundamentals</h4>

<ul>
 <li>More on Addressability</li>
 <li>What Can Go Wrong?</li>
 <li>Storage Protect Keys</li>
 <li><span class="underline">Computer Exercise</span>:
  List Fields From A Record</li>
</ul>

<h4>Packed Decimal Arithmetic</h4>

<ul>
 <li>Zoned Decimal Format</li>
 <li>Packed Decimal Format</li>
 <li>DC and DS for Zoned and Packed Type Data</li>
 <li>Packed Decimal Instruction Set: PACK, UNPK, AP, SP, MP, DP, CP,
  ZAP</li>
 <li>Arithmetic Concerns
  <ul>
   <li>Significant digits</li>
   <li>Keeping Track of Decimal Points</li>
  </ul>
 </li>
 <li><span class="underline">Computer Exercise</span>:
  Packed Decimal Calculations</li>
</ul>

<h4>More Assembler and Arithmetic Concepts</h4>

<ul>
 <li>Redefining Storage</li>
 <li>Creating Data Structures</li>
 <li>The Assembly Listing Components</li>
 <li>Introduction to Debugging</li>
 <li>Rounding</li>
 <li>MVO - Move With Offset</li>
 <li>SRP - Shift and Round Packed</li>
 <li><span class="underline">Computer Exercise</span>:
  Half-Adjusting Data</li>
</ul>

<h3>Dag drie</h3>

<h4>Editing Packed Decimal Fields</h4>

<ul>
 <li>DS / DC for Hexadecimal Data</li>
 <li>"ED" Instruction</li>
 <li>Edit Patterns</li>
 <li><span class="underline">Computer Exercise</span>:
  Edit Packed Decimal Data</li>
</ul>

<h4>A Deeper Look at Instruction Formats</h4>

<ul>
 <li>DC / DS for Binary Data Type</li>
 <li>Addresses in Instructions</li>
 <li>Explicit Coding - Review</li>
 <li>Tables</li>
 <li>LA Instruction</li>
 <li>Instruction Formats (SS, RR, RX)</li>
 <li>MVI, CLI Instructions</li>
 <li>Instruction Formats (SI)</li>
 <li>MVN, MVZ Instructions</li>
 <li><span class="underline">Computer Exercise</span>:
  Using Immediate Instructions</li>
</ul>

<h4>Binary Integer Data</h4>

<ul>
 <li>Binary Integer Data Formats</li>
 <li>Twos Complement</li>
 <li>DC/DS for Fullword, Halfword, and Doubleword Binary Data</li>
 <li>Boundary Alignment</li>
 <li>CVB, CVD Instructions</li>
 <li>L, LR, ST Instructions</li>
 <li>A, AR, S, SR, C, CR, MR, M, DR, D Instructions</li>
 <li>Concerns Of Working With Binary Integers</li>
 <li>Working With Binary Numbers - An Example</li>
 <li><span class="underline">Computer Exercise</span>:
  Binary Arithmetic Computations</li>
</ul>

<h3>Dag vier</h3>

<h4>More Binary Instructions</h4>

<ul>
 <li>Compare Instructions</li>
 <li>LPR, LNR, LCR Instructions</li>
 <li>"Logical Arithmetic": AL, ALR, CL, CLR, SL, SLR</li>
 <li>Halfword Instructions: AH, CH, LH, MH, SH, STH</li>
</ul>

<h4>EDit and MarK</h4>

<ul>
 <li>EDMK and floating currency signs</li>
 <li><span class="underline">Computer Exercise</span>:
  Floating Dollar Sign</li>
</ul>

<h4>Loops and Tables</h4>

<ul>
 <li>Literals</li>
 <li>LTORG</li>
 <li>Address Constants</li>
 <li>EQU - Equate Symbol</li>
 <li>Loop Control</li>
 <li>Tables</li>
 <li>BCT, BCTR, BXLE, BXH, IC, STC</li>
 <li><span class="underline">Computer Exercise</span>:
  Table Processing</li>
</ul>

<h3>Dag vijf</h3>

<h4>Multiple base registers, DSECTS, ORG</h4>

<ul>
 <li>STM, LM</li>
 <li>Multiple Base Registers</li>
 <li>CNOP</li>
 <li>Dummy sections - DSECTs</li>
 <li>ORG</li>
 <li><span class="underline">Computer Exercise</span>:
  Using DSECTs</li>
</ul>

<h4>Working With Bits</h4>

<ul>
 <li>O, OC, OR, OI, N, NC, NR, NI, X, XC, XR, XI</li>
 <li>Sorting Tables</li>
 <li>LTR, TM Instructions</li>
 <li>More on EQU</li>
 <li><span class="underline">Computer Exercise</span>:
  Sorting a Table</li>
</ul>

<h4>Shift Instructions</h4>

<ul>
 <li>SRL, SRA, SLL, SLA, SRDL, SRDA, SLDL, SLDA Instructions</li>
 <li>Code Fragment: Display Bit String</li>
</ul>

<h4>Translate</h4>

<ul>
 <li>Instruction Set: TR</li>
 <li>Code Fragment: Display Hex String</li>
 <li>Code Fragment: Direct Access to a Table</li>
 <li><span class="underline">Computer Exercise</span>:
  Build a Table Dynamically</li>
</ul>

<h4>TRanslate-and-Test and EXecute</h4>

<ul>
 <li>TRT - Translate and Test</li>
 <li>EX - Execute</li>
 <li>TRT and EX</li>
</ul>

<h4>Strings</h4>

<ul>
 <li>String Handling</li>
 <li>ICM, CLM, STCM Instructions</li>
 <li>MVCL, CLCL Instructions</li>
 <li>MVCIN Instruction</li>
</ul>

<h4>Setting Addressing Mode</h4>

<ul>
 <li>Addressing Mode</li>
 <li>AMODE and RMODE</li>
 <li>BASSM - Branch And Save And Set Mode</li>
 <li>BSM - Branch and Set Mode</li>
</ul>

<!-- NL -->
<p>Deze lijst van onderwerpen Copyright &copy; 2001 Steven H. Comstock.
 Alle rechten voorbehouden.</p>

/HTML

         HTMLDEF COURSE1.NLL
<!-- NL -->
<p>
 Naar de <a href="#part1">Cursus beschrijving</a><br />
 Naar de <a href="#part2">Cursus doelstellingen</a><br />
 Naar de <a href="#part3">Lijst van onderwerpen</a>
</p>
/HTML
