         HTMLDEF SELFTEST.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.hlasm.com/english/selftest.htm -->
<!-- -->
<title>HLASM - Assembler Proficiency Self-test</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<link rev="Bixoft introduction / sitemap" href="intro.htm" />
<link rev="Bixoft courses overview" href="courses.htm" />
<link rel="HLASM test-driver for self-test assignment 3"
      href="slftst3a.htm" />
<link rel="HLASM test-driver for self-test assignment 4"
      href="slftst4a.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe" />
<meta http-equiv="description"
      content="Self-test for assembler programmers to assess their
      technical proficiency" />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF SELFTEST.UKT
<!-- UK -->
<h1 align="center">Assembler Proficiency Self-test</h1>

<h2><a name="intro" id="intro">Introduction</a>.</h2>

<p>As part of our curriculum of assembler courses we have developed two
 assembler proficiency tests. We use these tests for our customers to
 assess the initial and/or ending level of assembler proficiency of our
 students.</p>

<p>One of these tests is now being made available on the web as an
 Assembler Proficiency Self-test. The other test is available upon
 request.</p>

<p>This self-test enables you to assess your level of assembler
 proficiency. You have the option to:</p>
<ul>
 <li>administer the test and judge results by gut feeling (free)</li>
 <li>administer the test and have us score your results (paid)</li>
 <li>have us administer and score the test (paid)</li>
</ul>

<p>For scoring results, we use a set of standard answers. This set has
 been tested and verified in the field and has proven to measure
 candidates' assembler proficiency quite accurately.</p>

<p>For questions on our <a href="courses.htm">curriculum</a> or on
 this self-test, its scoring, or about other testing material, please
 contact <a href="mailto:bixoft@bixoft.nl">Abe Kornelis</a>.<br />
 Alternatively, you might want to check The Trainer's Friend's
 <a href="http://www.trainersfriend.com/">Curriculum</a> or contact
 <a href="mailto:steve@trainersfriend.com">Steve Comstock</a>.</p>

<h2>Instructions and assignments for the self-test.</h2>

<p>This test assumes a z/OS environment. For z/VM, z/VSE, z/TPF and/or
 z/Linux adapted tests can be made upon request.</p>

<p>This test consists of 60 questions (theory) and 3 programming
 assignments. For each of these parts you have a specific amount of
 time available as follows:</p>
<ul>
 <li>2 hours: <a href="#test1">Assignment 1 - Theory</a></li>
 <li>1 hour: <a href="#test2">Assignment 2 - Check Parameter</a></li>
 <li>1 hour: Break</li>
 <li>2 hour: <a href="#test3">Assignment 3 - Tax-deductible Item</a>
 </li>
 <li>1 hour: <a href="#test4">Assignment 4 - Build Macro</a></li>
 <li>5 minutes: Completion</li>
</ul>

<p>After completing any assignment within time, the remaining time can
 be used for any of the other assignments.</p>

<p>Maximum scores:</p>
<ul>
 <li>231: <a href="#test1">Assignment 1 - Theory</a></li>
 <li>120: <a href="#test2">Assignment 2 - Check Parameter</a></li>
 <li>240: <a href="#test3">Assignment 3 - Tax-deductible Item</a></li>
 <li>100: <a href="#test4">Assignment 4 - Build Macro</a></li>
</ul>

/HTML

         HTMLDEF SELFTEST.UK1
<!-- UK -->
<h3><a name="test1" id="test1">Assignment 1: Theory</a>.</h3>

<p>You may use your books and notes. Please answer the questions using
 your own wording; literally transcripted texts will be treated as
 incorrect answers.</p>

<p>Please insert your answers following each question. For scoring,
 please submit your answers by
 <a href="mailto:bixoft@bixoft.nl">e-mail</a>.</p>

<ol>
 <li>What is the difference between a DSECT and a CSECT?</li>
 <li>For what purpose does one use the LTORG instruction?</li>
 <li>What is the range of a base register?</li>
 <li>What are modal instructions? What kind of instructions are these?
 </li>
 <li>What relationship exists between AMODE and RMODE?</li>
 <li>For what purpose does one use a LOCTR?</li>
 <li>How many digits can be contained in a packed decimal field? Why?
 </li>
 <li>What requirement(s) does a program need to satisfy in order to
  qualify as reusable?</li>
 <li>What requirement(s) does a program need to satisfy in order to
  qualify as reenterable?</li>
 <li>What is the difference between a Y-con and an S-con?</li>
 <li>What is the function of the PSW? Name the 4 most important
  subfields.</li>
 <li>What is a DCB, what is an ACB, and what is the difference?</li>
 <li>What is a CDE? What is it used for?</li>
 <li>How does one round a packed decimal number?</li>
 <li>How does a re-entrant program find a place to store its variables?
 </li>
 <li>How does one create a packed decimal number from a
  &quot;readable&quot; one?</li>
 <li>In what ways can one change a packed decimal number into readable
  text?</li>
 <li>When formatting numeric output, how does one specify on the
  appropriate instruction that leading zeros are to be suppressed? How
  do you specify which character is to replace leading zeroes?</li>
 <li>Special place holders can be used in an edit pattern. Give the
  meaning associated with each specific value.</li>
 <li>What is the difference between ED and EDMK and when does this
  effect vanish (read: not occur)?</li>
 <li>What is the difference between an index register and a base
  register?</li>
 <li>Describe exactly the effect of MR 4,7</li>
 <li>Describe exactly the effect of DR 6,9</li>
 <li>For what use are the first, second, and third operands
  (respectively) of the EQU instruction intended?</li>
 <li>What 32-bit instructions do we have for controlling loops?</li>
 <li>What do we use ORG for?</li>
 <li>How does one exchange the contents of two fields A and B in
  virtual strage without using a third field? Same question for two
  64-bit registers.</li>
 <li>How does one shift the contents of a register over a variable
  number of bit positions?</li>
 <li>What does the EX instruction do? What is a common application?
 </li>
 <li>How does a program find the contents of the parameter specified on
  the invoking EXEC JCL card? (Assume MVS / zOS)</li>
 <li>What is the meaning of MACRF=GL on a DCB macro invocation?</li>
 <li>What is the meaning of RECFM=VBS and RECFM=FBS respectively?</li>
 <li>What is the difference between EODAD and SYNAD?</li>
 <li>What is a V-con and what is the difference between a V-con on the
  one hand and an A-con with an EXTRN on the other hand?</li>
 <li>What is an address space? What is a Task?</li>
 <li>From your TCB you can follow your PRB chain. For what reason would
  one want to do that?</li>
 <li>What does the SNAP macro do? For what purpose does one use SNAP?
 </li>
 <li>What is an RDW? What is a BDW? What is the difference?</li>
 <li>What does one use a DCBE for?</li>
 <li>What is the difference between static and dynamic linkage? Please
  specify the major advantage of each method.</li>
 <li>What are LPA and JPA? What is the difference?</li>
 <li>Which macro do you use to undo the effects of the LOAD macro?</li>
 <li>What is the difference between LINK and CALL?</li>
 <li>What is a subpool? What is the purpose of Cell Pool Services?</li>
 <li>What does AGFR Do?</li>
 <li>What does CY do?</li>
 <li>What is the difference between LLGT and LLILL?</li>
 <li>What do SLAG and RLL do?</li>
 <li>What is the difference between HFP, BFP, and DFP?</li>
 <li>What is the difference between ALRK and ALSIH?</li>
 <li>What is the difference between LAAG and LOCG?</li>
 <li>What is the dead zone? Why is it called the dead zone?</li>
 <li>For what purpose do we use IEABRC? How does IEABRC work?</li>
 <li>Which types of variables do we use within macros?</li>
 <li>Describe how one concatenates SETC variables and how one specifies
  substrings. Give an example of each.</li>
 <li>Describe how one designates an element in an array of SETC
  variables. Give an example. What is the maximum number of dimensions
  that HLASM supports for SETx variables?</li>
 <li>Describe how one designates a created set symbol. Give an example.
 </li>
 <li>What is the difference between between a label and a sequence
  symbol?</li>
 <li>Which instruction does one use to implement a loop during
  conditional assembly?</li>
 <li>What is the difference between DC A(FIELD) and DC AL4(FIELD)?</li>
</ol>
/HTML

         HTMLDEF SELFTEST.UK2
<!-- UK -->
<h3><a name="test2" id="test2">Assignment 2: Check Parameter</a>.</h3>

<p>Please write a program that accepts a JCL-parameter. This parameter
 is to contain a valid number between 0 and 4095 inclusive. The program
 should process the parameter according to the following criteria:</p>
<ul>
 <li>If a valid value is found, the program should end using the
  specified value as its return code.</li>
 <li>If no parameter was passed the program should issue a user abend
  101.</li>
 <li>If the parameter does not contain a valid integer number, then the
  program should issue a user abend 102.</li>
 <li>If the parameter contains a number outside of the defined range,
  then the  program should issue a user abend 103.</li>
 <li>For any error detected a clear error message should be issued.
 </li>
</ul>

/HTML

         HTMLDEF SELFTEST.UK3
<!-- UK -->
<h3><a name="test3" id="test3">
 Assignment 3: Tax-deductible Item</a>.
</h3>

<p class="remark">Important:<br />
 For calling and testing your solution, we have provided a
 <a href="slftst3a.htm">test-driver</a>. You can use the driver as is,
 or you can modify it according to your need.</p>

<p>Please write a complete sub-program named ASSGN3 that is to
 calculate a tax-deductible item as follows:</p>
<ul>
 <li>If the nominal amount for the tax-deductible item is less than the
  lower threshold, the deductible amount is set to zero. The lower
  threshold is a percentage of gross income. However, this threshold
  can never be less than the &quot;minimum amount&quot;.</li>
 <li>If the nominal amount for the tax-deductible item exceeds the
  upper threshold, the deductible amount is maximized at that
  threshold. The upper threshold is a percentage of gross income.
  However, this threshold can never exceed the &quot;maximum
  amount&quot;.</li>
 <li>Calculation as specified above yields a &quot;revised nominal
  amount&quot;. The deductible amount is calculated from this revised
  nominal amount by applying a percentage from a table. From this table
  only a single percentage need be applied. This percentage is
  determined by the interval that contains the revised nominal amount.
  The table is sorted on maximum amount in ascending order.</li>
 <li>The program is to return the deductible amount; all other fields
  should remain unchanged.</li>
</ul>

<p class="remark">Please mind:<br />
 all amounts are stored as packed decimals with 9 digits before the
 decimal point/comma and two decimal places after the decimal
 point/comma. Likewise all percentages are stored as packed decimals
 with two digits before and one after the decimal point/comma.
 Thresholds are to be rounded either down or up according to the tax
 payer's interest. Final result to be rounded to cents, also serving
 the tax payer's interest.</p>

<p>The program is to produce a report line, which will be printed by
 the invoking program. The program is to end with one of the following
 return codes:</p>
<ul>
 <li>00 - deductible amount is more than zero</li>
 <li>04 - deductible amount is zero</li>
 <li>08 - deductible amount cannot be calculated because either:<br />
  a) input is not valid packed decimal or<br />
  b) no applicable table entry was found</li>
 <li>12 - other internal errors</li>
</ul>

<p>Requirements for the report line:</p>
<ul>
 <li>Lay-out for the nominal amount: add thousand separators and a
  decimal point (or comma), suppress leading zeros, there should be at
  least one digit before the decimal point/comma. Negative amounts
  should be preceded by a minus sign. Minus sign and amount should be
  separated by a single space.
 </li>
 <li>Lay-out for deductible amount: add thousand separators and a
  decimal point (or comma), suppress leading zeros, there should be at
  least one digit before the decimal point/comma. If the amount is in
  whole Euros/Dollars/whatever, then the decimal portion should be
  displayed as two dashes, for examples 12.-- for twelve dollars. In
  case the deductible amount is zero, it should be displayed as
  &quot;Nihil&quot;.
 </li>
 <li>Remarks field: intended for error messages; always starts with
  five spaces. The program need not try to issue multiple error
  messages on any single invocation.</li>
</ul>

<p>On invocation the program receives in R1 a pointer to the following
 parameter list:</p>
<pre>
PARM1    DC A(PARMAREA)   * Pointer to parameter area
PARM2    DC A(PRTLINE)    * Pointer to buffer for print line
</pre>

<p>Lay-out of parameter area:</p>
<pre>
NOMINAL  DC PL6           * Nominal amount for deductible item
RESULT   DC PL6           * Calculated deductible amount
GROSS    DC PL6           * Gross income
MINPERC  DC PL2           * Percentage lower threshold
MINAMT   DC PL6           * Minimum amount for lower threshold
MAXPERC  DC PL2           * Percentage upper threshold
MAXAMT   DC PL6           * Maximum amount for upper threshold
TABSIZE  DC H             * Nr of entries in the table
TABLEN   DC H             * Length of each table entry
TABPTR   DC AL4           * Pointer to the table
</pre>

<p>The table entries have the following lay-out:</p>
<pre>
LIMIT    DC PL6           * Upper limit for this percentage
PERC     DC PL2           * Applicable percentage
         DC CL0           * Filler to next entry
</pre>

<p>The print line has the following lay-out:</p>
<pre>
PRTNOMNL DC CL20          * Nominal amount
PRTRESLT DC CL20          * Deductible amount
PRTREM   DC CL40          * Remarks field
</pre>

/HTML

         HTMLDEF SELFTEST.UK4
<!-- UK -->
<h3><a name="test4" id="test4">Assignment 4: Build Macro</a>.</h3>

<p class="remark">Important:<br />
 For calling and testing your solution, we have provided a
 <a href="slftst4a.htm">test-driver</a>. You can use the driver as is,
 or you can modify it according to your need.</p>

<p>Please write a macro DEFREGS which is to define names for registers.
 This macro is to accept a maximum of four parameters:</p>
<ol>
 <li>Positional parm: starting number for series of registers</li>
 <li>Positional parm: ending number for series of registers</li>
 <li>Positional parm: counting method - dec or hex, default dec</li>
 <li>Keyword parm: prefix, default is R</li>
</ol>

<p>The parameters should be processed according to the following
 criteria:</p>
<ul>
 <li>Starting and ending numbers to be processed consistently with
   their use in STM instructions</li>
 <li>Counting method dec numbers registers decimally 0, 1, ... 14, 15
 </li>
 <li>Counting method hex numbers registers hexadecimally 0, 1, ... E, F
 </li>
 <li>Valid prefixes: R, GPR, CR, AR, or FPR</li>
 <li>Superfluous parameters should be reported on an error message</li>
</ul>
/HTML

         HTMLDEF SELFTEST.UK5
<!-- UK -->
<h3><a name="end" id="end">Conclusion</a>.</h3>

<p>You have completed the assembler proficiency self-test. You had six
 hours for this test. Did you complete all assignments within time?</p>

<p>If you want to, we can score your results. To have them scored
 please contact <a href="mailto:bixoft@bixoft.nl">Abe Kornelis</a>.
 <br />
 Please note: scoring your results takes time and is not free of
 charge.</p>

/HTML

         HTMLDEF SELFTEST.UKL
<!-- UK -->
<p>
 To the <a href="#intro">Introduction</a>.<br />
 To <a href="#test1">Assignment 1: Theory</a>.<br />
 To <a href="#test2">Assignment 2: Check Parameter</a>.<br />
 To <a href="#test3">Assignment 3: Tax-deductible Item</a>.<br />
 To <a href="#test4">Assignment 4: Build Macro</a>.<br />
 To the <a href="#end">Completion</a>.
</p>

<p>
 To the <a href="hlasm.htm">English Homepage</a>.<br />
 To the <a href="../hlasm.htm">general Homepage</a>.
</p>

/HTML

         HTMLDEF SELFTEST.UKF
<!-- UK -->
<p class="footer" align="center">
 This text was written by A.F. Kornelis, translated by A.F. Kornelis.
 <br/>
 Text and translation: &copy; Copyright: A.F. Kornelis, 2007-2011.
 All rights reserved.<br />
 <a href="mailto:abe@bixoft.nl">e-mail</a> the author.</p>

/HTML

         HTMLDEF SELFTEST.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/selftest.htm -->
<!-- -->
<title>HLASM - Zelftest voor Bedrevenheid in Assembler</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<link rev="Bixoft introductie / sitemap" href="intro.htm" />
<link rev="Bixoft cursus-overzicht" href="courses.htm" />
<link rel="HLASM test-driver voor opgave 3 van de zelftest"
      href="slftst3a.htm" />
<link rel="HLASM test-driver voor opgave 4 van de zelftest"
      href="slftst4a.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe" />
<meta http-equiv="description"
      content="Zelftest voor assembler-programmeurs om hun
      vaardigheid in assembler te evalueren" />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF SELFTEST.NLT
<!-- NL -->
<h1 align="center">Zelftest voor Bedrevenheid in Assembler</h1>

<h2><a name="intro" id="intro">Introductie</a>.</h2>

<p>Als onderdeel van ons cursus-curriculum hebben wij een tweetal
 assembler-testen ontwikkeld. Hiermee kunnen wij voor onze
 opdrachtgevers het eind-niveau van onze cursisten beoordelen.</p>

<p>Een van deze testen stellen wij nu beschikbaar op het web als
 zelf-test voor assembler-vaardigheden. De andere toets is beschikbaar
 op aanvraag.</p>

<p>Deze zelftest stelt u in staat een idee te krijgen over uw
 vaardigheden op het gebied van assembler. U kunt:</p>
<ul>
 <li>de toets maken en het resultaat op gevoel beoordelen</li>
 <li>de toets maken en het resultaat door ons laten beoordelen</li>
 <li>de toets door ons laten afnemen en beoordelen</li>
</ul>

<p>Als wij de resultaten beoordelen, dan doen wij dat aan de hand van
 een standaard antwoord-set. Deze is getoetst in de praktijk en blijkt
 een redelijk nauwkeurig beeld te geven van het niveau van de
 kandidaten.</p>

<p>Voor vragen over ons <a href="courses.htm">cursus-aanbod</a> of over
 deze toets, de normering, of over ander toets-materiaal neemt u aub
 contact op met <a href="mailto:bixoft@bixoft.nl">Abe Kornelis</a>.</p>

<h2>Instructie en opgaven voor de zelftest.</h2>

<p>Deze toets gaat uit van een z/OS-omgeving. Voor z/VM, z/VSE, z/TPF
 en/of z/Linux kunnen wij bij desgewenst aangepast toets-materiaal
 opstellen.</p>

<p>De toets bestaat uit 60 theorie-vragen en 3 praktijk-opgaven.
 Voor de theorie-vragen heeft u twee uur de tijd. Voor de
 praktijk-vragen heeft u 4 uur de tijd te verdelen als volgt:</p>
<ul>
 <li>2 uur: <a href="#test1">opgave 1 - Theorie</a></li>
 <li>1 uur: <a href="#test2">opgave 2 - Parameter-controle</a></li>
 <li>1 uur: pauze</li>
 <li>2 uur: <a href="#test3">opgave 3 - Aftrekpost berekenen</a></li>
 <li>1 uur: <a href="#test4">opgave 4 - Macro bouwen</a></li>
 <li>5 minuten: Afronding</li>
</ul>

<p>Tijd die overblijft na het voltooien van een opdracht binnen de
 gestelde tijd kan naar eigen inzicht besteed worden.</p>

<p>Te behalen punten:</p>
<ul>
 <li>231: <a href="#test1">opgave 1 - Theorie</a></li>
 <li>120: <a href="#test2">opgave 2 - Parameter-controle</a></li>
 <li>240: <a href="#test3">opgave 3 - Aftrekpost berekenen</a></li>
 <li>100: <a href="#test4">opgave 4 - Macro bouwen</a></li>
</ul>

/HTML

         HTMLDEF SELFTEST.NL1
<!-- NL -->
<h3><a name="test1" id="test1">Opgave 1: Theorie</a>.</h3>

<p>U mag uw boeken en aantekeningen gebruiken. Beantwoord de vragen in
 uw eigen bewoording; antwoorden die letterlijk zijn overgenomen worden
 als onjuist aangemerkt.</p>

<p>Antwoorden gaarne intoetsen onder elke vraag. Uw resultaat svp zowel
 electronisch als op papier inleveren.</p>

<ol>
 <li>Wat is het verschil tussen een DSECT en een CSECT?</li>
 <li>Waarvoor gebruik je de LTORG instructie?</li>
 <li>Hoe groot is het bereik van een base register?</li>
 <li>Wat zijn modale instructies? Wat voor soort instructies zijn
  dit?</li>
 <li>Wat is de relatie tussen AMODE en RMODE?</li>
 <li>Waarvoor gebruikt u een LOCTR?</li>
 <li>Hoe veel cijfers kan een packed decimal field bevatten?
  Waarom?</li>
 <li>Waaraan dient een programma te voldoen om als reusable te kunnen
  worden aangemerkt?</li>
 <li>Waaraan dient een programma te voldoen om als reenterable te
  kunnen worden aangemerkt?</li>
 <li>Wat is het verschil tussen een Y-con en een S-con?</li>
 <li>Waarvoor dient het PSW? Noem de 4 belangrijkste velden.</li>
 <li>Wat is een DCB, Wat is een ACB, en wat is het verschil?</li>
 <li>Wat is een CDE? Waar wordt het voor gebruikt?</li>
 <li>Hoe verzorg je de afronding van een packed decimal number?</li>
 <li>Hoe komt een re-entrant programma aan ruimte voor variabelen?</li>
 <li>Hoe zet je een &quot;leesbaar&quot; getal om in een packed
  decimal?</li>
 <li>Op welke manieren kun je een packed decimal omzetten in leesbare
  tekst?</li>
 <li>Hoe geef je bij het formatteren van numerieke output op de
  relevante instructie aan dat voorloopnullen onderdrukt moeten worden?
  Hoe specificeer je welk teken de voorloopnullen moet vervangen?</li>
 <li>In een edit patroon kunnen speciale place holders worden
  opgenomen. Geef van elke zowel de waarde als de betekenis.</li>
 <li>Waarin verschilt EDMK van ED en wanneer blijft dit effect
  achterwege?</li>
 <li>Wat is het verschil tussen een index register en een base
  register?</li>
 <li>Beschrijf exact het effect van MR 4,7</li>
 <li>Beschrijf exact het effect van DR 6,9</li>
 <li>Waarvoor zijn de eerste, tweede, en derde operand van de EQU
  instructie bedoeld?</li>
 <li>Welke 32-bits instructies gebruiken we voor loop-control?</li>
 <li>Waarvoor gebruiken we ORG?</li>
 <li>Hoe verwissel je de inhoud van twee velden A en B in virtueel
  geheugen zonder een hulp-veld te gebruiken? Idem voor twee 64-bits
  registers.</li>
 <li>Hoe verzorg je een SHIFT over een variabel aantal bits?</li>
 <li>Wat doet de EX instructie? Waarvoor wordt EX veel gebruikt?</li>
 <li>Hoe vind je programma de inhoud van de parameter op de EXEC-card
  waarmee het is aangeroepen?</li>
 <li>Wat betekent MACRF=GL op een DCB macro?</li>
 <li>Wat betekenen RECFM=VBS en RECFM=FBS?</li>
 <li>Wat is het verschil tussen EODAD en SYNAD?</li>
 <li>Wat is een V-con en wat is het verschil tussen een V-con enerzijds
  en een A-con met EXTRN anderzijds?</li>
 <li>Wat is een Address Space? Wat is een Task?</li>
 <li>Vanaf je TCB kun je de PRB chain aflopen. Waarvoor zou je dat
  doen?</li>
 <li>Wat doet de SNAP macro? Waarvoor gebruik je SNAP?</li>
 <li>Wat is een RDW? Wat is een BDW? Wat is het verschil?</li>
 <li>Waarvoor gebruik je een DCBE?</li>
 <li>Wat is het verschil tussen static en dynamic linkage? Geef het
  belangrijkste voordeel van elke methode.</li>
 <li>Wat zijn de LPA en de JPA? Wat is het verschil?</li>
 <li>Welke macro gebruik je om het effect van de LOAD macro ongedaan te
  maken?</li>
 <li>Wat is het verschil tussen LINK en CALL?</li>
 <li>Wat is een subpool? Waartoe dienen Cell Pool Services?</li>
 <li>Wat doet AGFR?</li>
 <li>Wat doet CY?</li>
 <li>Wat is het verschil tussen LLGT en LLILL?</li>
 <li>Wat doen SLAG en RLL?</li>
 <li>Wat is het verschil tussen HFP, BFP, en DFP?</li>
 <li>Wat is het verschil tussen ALRK en ALSIH?</li>
 <li>Wat is het verschil tussen LAAG en LOCG?</li>
 <li>Wat is de dead zone? Waarom heet deze zo?</li>
 <li>Waarvoor gebruiken we IEABRC? Hoe werkt IEABRC?</li>
 <li>Welke typen variabelen kennen we in macros?</li>
 <li>Geef aan hoe we concatenatie van SETC variabelen regelen en hoe we
  substrings opgeven. Geef een voorbeeld van elk.</li>
 <li>Geef aan hoe we een element uit een array van SETC variabelen
  aanduiden. Geef een voorbeeld. Wat is het maximale aantal dimensies
  dat HLASM ondersteunt?</li>
 <li>Geef aan hoe we een created set symbol aanduiden. Geef een
  voorbeeld.</li>
 <li>Wat is het verschil tussen een label en een sequence symbol?</li>
 <li>Welke instructie gebruiken we om een loop te realiseren tijdens
  conditional assembly?</li>
 <li>Wat is het verschil tussen DC A(VELD) en DC AL4(VELD)</li>
</ol>
/HTML

         HTMLDEF SELFTEST.NL2
<!-- NL -->
<h3><a name="test2" id="test2">Opgave 2: Parameter-controle</a>.</h3>

<p>Schrijf een programma dat een JCL-parameter accepteert. Deze dient
 een geldig getal te bevatten tussen 0 en 4095 inclusief. Het programma
 dient deze parameter te verwerken als volgt:</p>
<ul>
 <li>Indien een geldige waarde is opgegeven, dient het programma te
  eindigen en de opgegeven waarde als returncode af te geven.</li>
 <li>Indien de string ontbreekt dient een user abend 101 afgegeven te
  worden.</li>
 <li>Indien de string geen geldig geheel getal bevat dient een user
 abend 102 afgegeven te worden.</li>
 <li>Indien het gevonden getal buiten de opgegeven range valt dient een
  user abend 103 afgegeven te worden.</li>
 <li>Bij foutsituaties dient een duidelijk foutboodschap afgegeven te
  worden.</li>
</ul>

/HTML

         HTMLDEF SELFTEST.NL3
<!-- NL -->
<h3><a name="test3" id="test3">Opgave 3: Bereken aftrekpost</a>.</h3>

<p class="remark">Let op:<br />
 Voor het aanroepen en testen van uw oplossing is een
 <a href="slftst3a.htm">test-driver</a> beschikbaar. Deze kunt u
 gebruiken en eventueel aanpassen naar behoefte.</p>

<p>Schrijf een zelfstandig subprogramma genaamd TOETS3 dat een
 aftrekpost moet berekenen als volgt:</p>
<ul>
 <li>Als het nominale bedrag van de aftrekpost onder een drempel-bedrag
  blijft wordt de aftrekpost op nul gesteld. Het drempel-bedrag is een
  percentage van het bruto inkomen; wel geldt er een minimum voor het
  drempel-bedrag.</li>
 <li>Als het nominale bedrag van de aftrekpost boven een maximum
  uitkomt, dan wordt het op dat maximum gemaximeerd. Het maximum is een
  percentage van het bruto-inkomen; hierbij geldt tevens een absoluut
  maximum. Bij een negatief bruto-inkomen kan geen aftrek plaats
  vinden.</li>
 <li>Bovenstaande berekening levert een 'herzien nominaal bedrag' op.
  Het aftrekbare bedrag wordt afgeleid van het herzien nominaal bedrag
  door een percentage toe te passen uit een tabel. De tabel is geen
  staffel; slechts &eacute;&eacute;n percentage is van toepassing. Dit
  percentage wordt bepaald door het interval waarin het herzien
  nominaal bedrag valt. De tabel is oplopend gesorteerd op
  maximum-bedrag.</li>
 <li>Het programma dient het aftrekbare bedrag terug te geven, alle
  overige velden moeten ongewijzigd blijven.</li>
</ul>

<p class="remark">Let op:<br />
 alle bedragen zijn opgeslagen als packed decimal met 9 cijfers voor de
 komma en twee er achter. De percentages zijn eveneens opgeslagen als
 packed decimal, maar dan met twee cijfers voor de komma en
 &eacute;&eacute;n er achter. Grensbedragen af te ronden op hele euros
 in het voordeel van de werknemer; eindresultaat afronden op centen,
 eveneens in het voordeel van de werknemer.</p>

<p>Het programma produceert een verslag-regel, die door het aanroepend
 module wordt afgedrukt, en eindigt met een van de volgende
 returncodes:</p>
<ul>
 <li>00 - aftrekbaar bedrag is groter dan nul</li>
 <li>04 - aftrekbaar bedrag is nihil</li>
 <li>08 - aftrekbaar bedrag niet berekend omdat:<br />
  a) input niet packed decimal of<br />
  b) geen toepasselijke tabel-entry gevonden</li>
 <li>12 - overige interne fouten</li>
</ul>

<p>Opmaakvoorschriften verslagregel:</p>
<ul>
 <li>Opmaak nominaal bedrag: punten en komma toevoegen, voorloopnullen
  onderdrukken, minstens 1 cijfer voor de komma behouden. Bij negatieve
  bedragen een min-teken plaatsen voor het bedrag; min-teken en bedrag
  dienen door een spatie van elkaar gescheiden te zijn.
 </li>
 <li>Opmaak aftrekbaar bedrag: punten en komma toevoegen,
  voorloopnullen onderdrukken, minstens 1 cijfer voor de komma
  behouden. Indien het bedrag in hele euro's luidt, dan de centen
  afdrukken als twee streepjes, b.v. 12,-- voor twaalf Euro. Als het
  aftrekbaar bedrag op nul uitkomt, dan &quot;Nihil&quot; afdrukken.
 </li>
 <li>Opmerkingen veld: begint met 5 spaties, bestemd voor
  fout-meldingen. Het programma hoeft niet meer dan 1 melding af te
  geven.</li>
</ul>

<p>Als input krijgt het programma een pointer in R1 naar de volgende
 parmlist:
</p>
<pre>
PARM1    DC A(PARMAREA)   * Pointer naar parameter-gebied
PARM2    DC A(PRTLINE)    * Pointer naar buffer voor printregel
</pre>

<p>Indeling parameter-gebied:</p>
<pre>
NOMINAAL DC PL6           * Nominaal bedrag aftrekpost
RESULT   DC PL6           * Berekende aftrekpost
BRUTO    DC PL6           * Bruto inkomen
MINPERC  DC PL2           * Percentage drempelwaarde
MINBEDR  DC PL6           * Minimum bedrag drempelwaarde
MAXPERC  DC PL2           * Percentage bovengrens
MAXBEDR  DC PL6           * Maximum bedrag bovengrens
TABSIZE  DC H             * Aantal entries in de tabel
TABLEN   DC H             * Lengte van elke entry
TABPTR   DC AL4           * Pointer naar tabel
</pre>

<p>De entries van de tabel zijn als volgt ingedeeld:</p>
<pre>
GRENS    DC PL6           * Bovengrens voor dit percentage
PERC     DC PL2           * Toepassingspercentage
         DC CL0           * Filler tot volgende entry
</pre>

<p>De printregel is als volgt ingedeeld:</p>
<pre>
PRTNOMNL DC CL20          * Nominaal bedrag
PRTRESLT DC CL20          * Aftrekbaar bedrag
PRTOPM   DC CL40          * Opmerkingen veld
</pre>

/HTML

         HTMLDEF SELFTEST.NL4
<!-- NL -->
<h3><a name="test4" id="test4">Opgave 4: Bouw een macro</a>.</h3>

<p class="remark">Let op:<br />
 Voor het aanroepen en testen van uw oplossing is een
 <a href="slftst4a.htm">test-driver</a> beschikbaar. Deze kunt u
 gebruiken en eventueel aanpassen naar behoefte.</p>

<p>Schrijf een macro DEFREGS die registernamen moet defini&euml;ren.
 Deze macro accepteert maximaal vier parameters:</p>
<ol>
 <li>Positionele parm: startnummer register-reeks</li>
 <li>Positionele parm: eindnummer register-reeks</li>
 <li>Positionele parm: telwijze dec of hex, default dec</li>
 <li>Keyword parm: prefix, default is R</li>
</ol>

<p>De parameters dienen als volgt verwerkt te worden:</p>
<ul>
 <li>Start- en eindnummers conform gebruik in STM instructie</li>
 <li>telwijze dec nummert de registers decimaal 0, 1, ... 14, 15</li>
 <li>telwijze hex nummert de registers hexadecimaal 0, 1, ... E, F</li>
 <li>Geldige prefixen: R, GPR, CR, AR, of FPR</li>
 <li>Overtollige parameters dienen tot een foutmelding te leiden</li>
</ul>
/HTML

         HTMLDEF SELFTEST.NL5
<!-- NL -->
<h3><a name="end" id="end">Tot Slot</a>.</h3>

<p>U heeft nu de opgaven gemaakt. U had daar zes uren voor. Bent u
 binnen de tijd gebleven?</p>

<p>Als u wilt, dan kunnen we de resultaten beoordelen. Neem hiervoor
 contact op met <a href="mailto:bixoft@bixoft.nl">Abe Kornelis</a>.
 <br />
 Let op: beoordelen kost tijd en is niet gratis.</p>

/HTML

         HTMLDEF SELFTEST.NLL
<!-- NL -->
<p>
 Naar de <a href="#intro">Introductie</a>.<br />
 Naar <a href="#test1">Opgave 1: Theorie</a>.<br />
 Naar <a href="#test2">Opgave 2: Parameter-controle</a>.<br />
 Naar <a href="#test3">Opgave 3: Bereken aftrekpost</a>.<br />
 Naar <a href="#test4">Opgave 4: Bouw een macro</a>.<br />
 Naar de <a href="#end">Afronding</a>.
</p>

<p>
 Naar de <a href="hlasm.htm">nederlandse homepage</a>.<br />
 Naar de <a href="../hlasm.htm">algemene homepage</a>.
</p>

/HTML

         HTMLDEF SELFTEST.NLF
<!-- NL -->
<p class="footer" align="center">
 Deze tekst is geschreven door A.F. Kornelis.<br/>
 Tekst: &copy; Copyright A.F. Kornelis, 2007-2011.
 Alle rechten voorbehouden.<br />
 <a href="mailto:abe@bixoft.nl">e-mail</a> de auteur.</p>

/HTML
