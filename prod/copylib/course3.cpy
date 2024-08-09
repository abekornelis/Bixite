         HTMLDEF COURSE3.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/course3.htm -->
<!-- -->
<title>Bixoft Course 3 - High Level Assembler: Update</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft courses" href="courses.htm" />
<link rev="High Level Assembler: Classic" href="course1.htm" />
<link rev="High Level Assembler: Update for z/Architecture"
 href="course4.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe, Course, Hlasm" />
<meta http-equiv="description"
      content="About Bixoft's course for OS/390 Assembler Language:
 Update" />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF COURSE3.UKT
<!-- UK -->
<h1 align="center">High Level Assembler: Update.</h1>

<p>This course covers the new (pre z/Architecture) instructions
 introduced
 to the hardware and the Assembler in recent years.</p>

<p>The course is intended for:</p>
<ul>
 <li>Experienced Assembler programmers needing to update their
  knowledge of
  available hardware instructions and Assembler facilities.</li>
 <li>Assembler programmers with some experience needing to expand
  their
  knowledge of the instruction set and Assembler facilities.</li>
</ul>

<p>This overview comes in three parts, which are presented in sequence
 below:</p>
<ol>
 <li><a href="#part1">Course Description</a></li>
 <li><a href="#part2">Course Objectives</a></li>
 <li><a href="#part3">Topical Outline</a></li>
</ol>

/HTML

         HTMLDEF COURSE3.UK1
<!-- UK -->
<h2><a name="part1" id="part1">Course Description</a></h2>

<p>Recommended Duration: 1 Day</p>

<p>Benefits: Students who complete this course will be able to write
 or maintain
 Assembler programs that use more recent hardware instructions and
 Assembler techniques.</p>

<p>Audience: Experienced Assembler programmers needing to update their
 knowledge to
 include hardware and Assembler instructions and techniques that have
 become available during the 1990's.</p>

<p>Prerequisites: Experience writing or maintaining Assembler
   applications.</p>

<p>Related IBM Materials. This course is drawn from these IBM manuals;
 access to them in the
 classroom is recommended but not required:</p>
<ul>
 <li>SA22-7201 - ESA/390 Principles of Operation</li>
 <li>SC26-4941 - HLASM Programmer's Guide</li>
 <li>SC26-4940 - HLASM Language Reference</li>
</ul>

<p>Major Topics Include:</p>
<ul>
 <li>Obvious Assembler enhancements (long names, case insensitivity,
  blank lines, new data types, embedded blanks in DC values)</li>
 <li>Assembler Parms</li>
 <li>*PROCESS statements</li>
 <li>ASMAOPT data set</li>
 <li>Additional hardware instructions:
  <ul>
   <li>Multiply single (MSR, MS)</li>
   <li>Halfword immediate (AHI, CHI, LHI, MHI, TMH, TML)</li>
   <li>Logical String Assist (CLST, CUSE, MVST, SRST)</li>
   <li>Extended instructions (MVCLE, CLCLE, TRE)</li>
   <li>Relative Branching (BRAS, BRC, BRCT, BRXH, BRXLE)</li>
  </ul>
 </li>
 <li>New extended mnemonics</li>
 <li>Labeled USINGs</li>
 <li>Dependent USINGs</li>
 <li>Labeled Dependent USINGs</li>
 <li>Introduction to Unicode and Unicode support in Assembler</li>
</ul>

<p>Exercises: There are four hands-on exercises</p>

<p class="remark">Note:<br />
 All course material is in American English. Oral explanation will be
 in
 English by default, but is also available in Dutch, German, and/or
 French.</p>

<p>This course description Copyright &copy; 2001 by Steven H. Comstock.
 All rights reserved.</p>

/HTML

         HTMLDEF COURSE3.UK2
<!-- UK -->
<h2><a name="part2" id="part2">Course Objectives</a></h2>

<p>On successful completion of this course, the student, with the aid
 of the
 appropriate reference materials, should be able to:</p>

<ol>
 <li>Code and maintain programs written in Assembler language that
  use any of
  the following instructions and techniques:<br /><br />
  <ol>
   <li>Long names, mixed case names, blank lines<br /><br /></li>
   <li>Use Assembler parms to control behaviour of the Assembler,
    including
    the use of *PROCESS statements, the ASMAOPT data set, and profile
    information<br /><br /></li>
   <li>Use many of the new instructions available for the applications
    programmer:<br /><br />
    <ul>
     <li>Multiply Single: MSR, MS</li>
     <li>New Halfword Immediate instructions: AHI, CHI, LHI, MHI</li>
     <li>Test Under Mask in register: TML, TMH</li>
     <li>Extended compare, move, translate: CLCLE, MVCLE, TRE</li>
     <li>Relative Branch: BRAS, BRC, BRCT, BRXH, BRXLE</li>
     <li>Unicode: CUUTF, CUTFU</li>
    </ul><br />
   </li>
   <li>Use the new extended mnemonics for branch instructions<br />
 <br /></li>
   <li>Use labeled USINGs, dependent USINGs, and labeled dependent
    USINGs, as
    appropriate and necessary to the application<br /><br /></li>
   <li>Describe the concepts of Unicode, and when it is
    needed</li>
  </ol><br />
 </li>
 <li>Describe other new hardware and software features of possible
  interest to
  High Level Assembler programmers.</li>
</ol>

<p>These course objectives Copyright &copy; 2001 by Steven H. Comstock.
 All rights reserved.</p>

/HTML

         HTMLDEF COURSE3.UK3
<!-- UK -->
<h2><a name="part3" id="part3">Topical Outline</a></h2>

<h3>Day One</h3>

<h4>Course Overview</h4>

<ul>
 <li>Getting Caught Up</li>
 <li>The Assembler - Part 1</li>
 <li><span class="underline">Computer Exercise</span>:
  The Assembler, Part 1</li>
</ul>

<h4>The Assembler - Part 2</h4>

<ul>
 <li>Assembler Parms</li>
 <li>Sources for Assembler Parms</li>
 <li>Installation defaults</li>
 <li>*PROCESS statements</li>
 <li>ASMAOPT data set</li>
 <li>PARM on EXEC statement</li>
 <li><span class="underline">Computer Exercise</span>:
  Assembler Parms</li>
</ul>

<h4>Changes to the Instruction Set - Part 1</h4>

<ul>
 <li>Multiply Single (MSR, MS instructions)</li>
 <li>Halfword Instructions AH, CH, LH, MH, SH, STH (old stuff)</li>
 <li>Halfword Immediate Instructions: AHI, CHI, LHI, MHI
  (new stuff)</li>
 <li>RI Instruction Format</li>
 <li>Halfword Immediate Test Instructions (TMH, TML)</li>
 <li>'C' Assist Instructions (CLST, CUSE, MVST, SRST)</li>
 <li>Interruptible Instructions</li>
 <li>CLCLE, MVCLE Instructions</li>
 <li>TRE Instruction (TRanslate Extended)</li>
</ul>

<h4>Relative Branching</h4>

<ul>
 <li>Relative Branching Instructions</li>
 <li>BRAS, BRC, BRCT Instructions</li>
 <li>BRXH, BRXLE Instructions</li>
 <li>Applications of Relative Branching Instructions</li>
 <li>Extended Mnemonics</li>
 <li><span class="underline">Computer Exercise</span>:
  Using the Relative Branching Instructions</li>
</ul>

<h4>New USING Features</h4>

<ul>
 <li>Domain and Range of USINGs</li>
 <li>Labeled USINGs</li>
 <li>Dependent USINGs</li>
 <li>Labeled Dependent USINGs</li>
 <li>USING Range Limits</li>
 <li>DROP</li>
 <li><span class="underline">Computer Exercise</span>:
  Labeled USINGs</li>
</ul>

<h4>Introduction to Unicode</h4>

<ul>
 <li>Characters</li>
 <li>Characters, Glyphs, and Fonts</li>
 <li>Codepages</li>
 <li>Unicode</li>
</ul>

<h4>Unicode Support in Assembler</h4>

<ul>
 <li>Hardware Instructions</li>
 <li>Assembler support</li>
</ul>

<h4>Other Enhancements</h4>

<ul>
 <li>Hardware - Floating Point Changes</li>
 <li>Assembler Enhancements</li>
 <li>New data types</li>
 <li>New object code facilities</li>
</ul>

<p>This topical outline Copyright &copy; 2001 by Steven H. Comstock.
 All rights reserved.</p>

/HTML

         HTMLDEF COURSE3.UKL
<!-- UK -->
<p>
 To the <a href="#part1">Course Description</a><br />
 To the <a href="#part2">Course Objectives</a><br />
 To the <a href="#part3">Topical Outline</a>
</p>
/HTML

         HTMLDEF COURSE3.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/course3.htm -->
<!-- -->
<title>Bixoft Cursus 3 - High Level Assembler: Update</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft Cursus Assembler" href="courses.htm" />
<link rev="High Level Assembler: Classic" href="course1.htm" />
<link rev="High Level Assembler: Update for z/Architecture"
      href="course4.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe, Cursus, Hlasm" />
<meta http-equiv="description"
      content="Uitleg over Bixoft's cursus voor High Level Assembler."
      />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF COURSE3.NLT
<!-- NL -->
<h1 align="center">High Level Assembler: Update.</h1>

<p>Deze cursus behandelt de nieuwe (pre z/Architecture) instructies
 die in de
 laatste jaren aan de hardware en de Assembler zijn toegevoegd.</p>

<p>De cursus is bedoeld voor:</p>
<ul>
 <li>Ervaren Assembler programmeurs die hun kennis van de beschikbare
  hardware
  instructies en Assembler faciliteiten up-to-date willen
  brengen.</li>
 <li>Assembler programmeurs met enige ervaring die hun kennis van de
  instructieset en Assembler faciliteiten willen uitbreiden.</li>
</ul>

<p>De cursus presentatie hieronder bestaat uit de volgende drie
 onderdelen:</p>
<ol>
 <li><a href="#part1">Cursus beschrijving</a></li>
 <li><a href="#part2">Cursus doelstellingen</a></li>
 <li><a href="#part3">Lijst van onderwerpen</a></li>
</ol>

/HTML

         HTMLDEF COURSE3.NL1
<!-- NL -->
<h2><a name="part1" id="part1">Cursus beschrijving</a></h2>

<p>Verwachte duur: 1 dag</p>

<p>Voordelen: Na afronding van deze cursus kunnen de deelnemers
 Assembler programmatuur
 schrijven en onderhouden met recentere hardware instructies en
 Assembler
 technieken.</p>

<p>Doelgroep: Ervaren Assembler programmeurs die hun kennis van
 hardware en Assembler
 instructies en Assembler technieken willen uitbreiden met
 vernieuwingen
 uit de negentiger jaren.</p>

<p>Voorwaarden: Enige ervaring in het schrijven of onderhouden van
 Assembler applicaties.</p>

<p>IBM Materiaal. Deze cursus is afgeleid van de volgende IBM
 handboeken; het wordt aanbevolen
 deze boeken onder handbereik te hebben tijdens de cursus (op papier,
 via
 BookManager, etc.):</p>
<ul>
 <li>SA22-7201 - ESA/390 Principles of Operation</li>
 <li>SC26-4941 - HLASM Programmer's Guide</li>
 <li>SC26-4940 - HLASM Language Reference</li>
</ul>

<p>De belangrijkste onderwerpen:</p>
<ul>
 <li>Obvious Assembler enhancements (long names, case insensitivity,
  blank lines, new data types, embedded blanks in DC values)</li>
 <li>Assembler Parms</li>
 <li>*PROCESS statements</li>
 <li>ASMAOPT data set</li>
 <li>Additional hardware instructions:
  <ul>
   <li>Multiply single (MSR, MS)</li>
   <li>Halfword immediate (AHI, CHI, LHI, MHI, TMH, TML)</li>
   <li>Logical String Assist (CLST, CUSE, MVST, SRST)</li>
   <li>Extended instructions (MVCLE, CLCLE, TRE)</li>
   <li>Relative Branching (BRAS, BRC, BRCT, BRXH, BRXLE)</li>
  </ul>
 </li>
 <li>New extended mnemonics</li>
 <li>Labeled USINGs</li>
 <li>Dependent USINGs</li>
 <li>Labeled Dependent USINGs</li>
 <li>Introduction to Unicode and Unicode support in Assembler</li>
</ul>

<p>Oefeningen: De cursus omvat vier oefeningen.</p>

<p class="remark">Opmerking:<br />
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

         HTMLDEF COURSE3.NL2
<!-- NL -->
<h2><a name="part2" id="part2">Cursus doelstellingen</a></h2>

<p>Na succesvolle voltooiing van de cursus kan de deelnemer, aan de
hand
van de toepasselijke handboeken:</p>

<ol>
 <li>Assembler programma's schrijven en onderhouden met gebruikmaking
  van de
  volgende instructies en technieken:<br /><br />
  <ol>
   <li>Lange namen, mixed case namen, blanco regels<br /><br /></li>
   <li>Assembler parameters gebruiken om het gedrag van de Assembler
    aan te
    sturen, waaronder het gebruik van *PROCESS statements, de ASMAOPT
    data set, and profile informatie<br /><br /></li>
   <li>Diverse nieuwe instructies gebruiken die voor de applicatie
    programmeur beschikbaar zijn gekomen:<br /><br />
    <ul>
     <li>Multiply Single: MSR, MS</li>
     <li>New Halfword Immediate instructions: AHI, CHI, LHI, MHI</li>
     <li>Test Under Mask in register: TML, TMH</li>
     <li>Extended compare, move, translate: CLCLE, MVCLE, TRE</li>
     <li>Relative Branch: BRAS, BRC, BRCT, BRXH, BRXLE</li>
     <li>Unicode: CUUTF, CUTFU</li>
    </ul><br />
   </li>
   <li>Nieuwe extended mnemonics gebruiken voor branch
    instructies<br /><br /></li>
   <li>Labeled USINGs, dependent USINGs, en labeled dependent USINGs
    gebruiken, indien en voorzover toepasselijk in de
    applicatie<br /><br /></li>
   <li>De concepten van Unicode beschrijven, en onder welke
    omstandigheden
    deze toe te passen.</li>
  </ol><br />
 </li>
 <li>Andere nieuwe hardware en software voorzieningen beschrijven
  welke
  mogelijk van belang zijn voor High Level Assembler programmeurs.
</li>
</ol>

<p>Deze cursus doelstellingen Copyright &copy; 2001 Steven H. Comstock.
 Alle rechten voorbehouden.<br />
 Vertaling Copyright &copy; 2001 B.V. Bixoft.
 Alle rechten voorbehouden.</p>

/HTML

         HTMLDEF COURSE3.NL3
<!-- NL -->
<h3><a name="part3" id="part3">Lijst van onderwerpen</a></h3>
<p><big><u>Dag een</u></big>
</p>
<!-- UK -->
<p><big>Course Overview</big>
</p>
<ul>
   <li>Getting Caught Up
   </li>
   <li>The Assembler - Part 1
   </li>
   <li><u>Computer Exercise</u>: The Assembler, Part 1
   </li>
</ul>
<p><big>The Assembler - Part 2</big>
</p>
<ul>
   <li>Assembler Parms
   </li>
   <li>Sources for Assembler Parms
   </li>
   <li>Installation defaults
   </li>
   <li>*PROCESS statements
   </li>
   <li>ASMAOPT data set
   </li>
   <li>PARM on EXEC statement
   </li>
   <li><u>Computer Exercise</u>: Assembler Parms
   </li>
</ul>
<p><big>Changes to the Instruction Set - Part 1</big>
</p>
<ul>
   <li>Multiply Single (MSR, MS instructions)
   </li>
   <li>Halfword Instructions AH, CH, LH, MH, SH, STH (old stuff)
   </li>
   <li>Halfword Immediate Instructions: AHI, CHI, LHI, MHI (new stuff)
   </li>
   <li>RI Instruction Format
   </li>
   <li>Halfword Immediate Test Instructions (TMH, TML)
   </li>
   <li>'C' Assist Instructions (CLST, CUSE, MVST, SRST)
   </li>
   <li>Interruptible Instructions
   </li>
   <li>CLCLE, MVCLE Instructions
   </li>
   <li>TRE Instruction (TRanslate Extended)
   </li>
</ul>
<p><big>Relative Branching</big>
</p>
<ul>
   <li>Relative Branching Instructions
   </li>
   <li>BRAS, BRC, BRCT Instructions
   </li>
   <li>BRXH, BRXLE Instructions
   </li>
   <li>Applications of Relative Branching Instructions
   </li>
   <li>Extended Mnemonics
   </li>
   <li><u>Computer Exercise</u>: Using the Relative Branching
    Instructions
   </li>
</ul>
<p><big>New USING Features</big>
</p>
<ul>
   <li>Domain and Range of USINGs
   </li>
   <li>Labeled USINGs
   </li>
   <li>Dependent USINGs
   </li>
   <li>Labeled Dependent USINGs
   </li>
   <li>USING Range Limits
   </li>
   <li>DROP
   </li>
   <li><u>Computer Exercise</u>: Labeled USINGs
   </li>
</ul>
<p><big>Introduction to Unicode</big>
</p>
<ul>
   <li>Characters
   </li>
   <li>Characters, Glyphs, and Fonts
   </li>
   <li>Codepages
   </li>
   <li>Unicode
   </li>
</ul>
<p><big>Unicode Support in Assembler</big>
</p>
<ul>
   <li>Hardware Instructions
   </li>
   <li>Assembler support
   </li>
</ul>
<p><big>Other Enhancements</big>
</p>
<ul>
   <li>Hardware - Floating Point Changes
   </li>
   <li>Assembler Enhancements
   </li>
   <li>New data types
   </li>
   <li>New object code facilities
   </li>
</ul>
<!-- NL -->
<p>Deze lijst van onderwerpen Copyright &copy; 2001 Steven H. Comstock.
   Alle rechten voorbehouden.
</p>
/HTML

         HTMLDEF COURSE3.NLL
<!-- NL -->
<p>
 Naar de <a href="#part1">Cursus beschrijving</a><br />
 Naar de <a href="#part2">Cursus doelstellingen</a><br />
 Naar de <a href="#part3">Lijst van onderwerpen</a><br />
</p>
/HTML
