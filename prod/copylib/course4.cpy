         HTMLDEF COURSE4.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/course4.htm -->
<!-- -->
<title>Bixoft Course 4 - High Level Assembler: Update for
 z/Architecture</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft courses" href="courses.htm" />
<link rev="High Level Assembler: Classic" href="course1.htm" />
<link rel="High Level Assembler: Update" href="course3.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe, Course, Hlasm" />
<meta http-equiv="description"
      content="About Bixoft's course z/OS Assembler for Applications
 Programmers" />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF COURSE4.UKT
<!-- UK -->
<h1 align="center">High Level Assembler: Update for z/Architecture.
</h1>

<p>This course covers the instructions introduced with z/Architecture.
</p>

<p>The course is intended for:</p>
<ul>
 <li>Assembler programmers needing to update their knowledge of
  available
  hardware instructions</li>
 <li>Assembler programmers who will need to move programs to the z/OS
  environment.</li>
</ul>

<p>This overview comes in three parts, which are presented in sequence
 below:</p>
<ol>
 <li><a href="#part1">Course Description</a></li>
 <li><a href="#part2">Course Objectives</a></li>
 <li><a href="#part3">Topical Outline</a></li>
</ol>

/HTML

         HTMLDEF COURSE4.UK1
<!-- UK -->
<h2><a name="part1" id="part1">Course Description</a></h2>

<p>Recommended Duration: 2 Days</p>

<p>Benefits: Students who complete this course will be able to write
 or
 maintain Assembler programs that use hardware instructions introduced
 with
 z/Architecture and related techniques introduced with z/OS.</p>

<p>Audience: Experienced Assembler programmers needing to update their
 knowledge to include hardware and Assembler instructions and
 techniques that
 have become available with z/Architecture and z/OS. Systems
 programmers may
 also benefit from this course as a first exposure to the new hardware
 and
 software.</p>

<p>Prerequisites: Experience writing or maintaining Assembler
 applications;
 knowledge of predecessor capabilities such as covered in course
 <a href="course3.htm">High Level Assembler: Update</a>.</p>

<p>Related IBM Materials. This course is drawn from this IBM manual;
 access
 to it in the classroom is recommended but not required:</p>
<ul>
 <li>SA22-7832 - z/Architecture Principles of Operation</li>
</ul>

<p>Major Topics Include:</p>
<ul>
 <li>z/Architecture overview</li>
 <li>z/OS overview</li>
 <li>Linkage and AMODE issues</li>
 <li>Register management: preserving left hand word values</li>
 <li>Register management: working with 64-bit values and 32-bit
  values</li>
 <li>Packed decimal changes: TP</li>
 <li>Packed decimal changes: ASCII and Unicode input and output</li>
 <li>Packed decimal changes: converting between packed decimal and
  64-bit integer</li>
 <li>Binary arithmetic: halfword, fullword, doubleword data</li>
 <li>Binary arithmetic: arbitrarily long binary numbers</li>
 <li>Boolean instructions in 64-bit form</li>
 <li>Shifting and rotating bits in registers</li>
 <li>Working with data in ASCII</li>
 <li>Introduction to Unicode</li>
 <li>Working with data in Unicode</li>
 <li>Floating point, as it relates to interlanguage communication</li>
</ul>

<p>Exercises: There are six hands-on exercises; four of them
 demonstrate using Assembler
 to generate HTML files from EBCDIC or ASCII inputs.</p>

<p class="remark">Note:<br />
 All course material is in American English. Oral explanation will be
 in
 English by default, but is also available in Dutch, German, and/or
 French.</p>

<p>This course description Copyright &copy; 2001 by Steven H. Comstock.
 All rights reserved.</p>

/HTML

         HTMLDEF COURSE4.UK2
<!-- UK -->
<h2><a name="part2" id="part2">Course Objectives</a></h2>

<p>On successful completion of this course, the student, with the aid
 of the
 appropriate reference materials, should be able to:</p>

<ol>
 <li>Describe the major architectural changes introduced with the
  z/Architecture class of mainframes<br /><br /></li>
 <li>Write Assembler programs that use the new instructions,
  particularly:<br /><br />
  <ul>
   <li>Relative branch Long instructions</li>
   <li>Instructions to set and test current addressing mode</li>
   <li>Instructions to perform 64-bit binary arithmetic</li>
   <li>Instruction to test packed decimal data for validity</li>
   <li>Instructions that allow you to work with arbitrarily long
    binary
    numbers</li>
   <li>Instructions that can set and test bits in storage and
    registers</li>
  </ul><br />
 </li>
 <li>Work with files encoded in EBCDIC, ASCII, or Unicode<br /><br />
 </li>
 <li>Convert numeric values between floating point and fixed binary
  or packed
  decimal, to work more effectively in inter-language communication
  with
  programs written in C, C++, and Java.
 </li>
</ol>

<p>These course objectives Copyright &copy; 2001 by Steven H. Comstock.
 All rights reserved.</p>

/HTML

         HTMLDEF COURSE4.UK3
<!-- UK -->
<h2><a name="part3" id="part3">Topical Outline</a></h2>

<h3>Day One</h3>

<h4>Introduction</h4>

<ul>
 <li>z/Architecture - Hardware</li>
 <li>z/OS - Software</li>
 <li><span class="underline">Computer Exercise</span>:
  Set up for labs</li>
</ul>

<h4>Linkage Issues - Branching and AMODE Setting</h4>

<ul>
 <li>PSW Format</li>
 <li>Address Calculation</li>
 <li>Register Format</li>
 <li>Loading Addresses</li>
 <li>Changing Addressing Modes</li>
 <li>Passing Control Without Switching AMODE</li>
 <li>Passing Control and Switching AMODE</li>
 <li>Switching AMODE Without Passing Control</li>
 <li>Testing the Current AMODE</li>
 <li>Running Around in AMODE-64</li>
 <li><span class="underline">Computer Exercise</span>:
  Setting and Testing AMODEs</li>
</ul>

<h4>Register Management</h4>

<ul>
 <li>Storing Register Contents, Unchanged, To Memory</li>
 <li>Loading Memory Contents, Unchanged, Into Registers</li>
 <li>Move Data (unchanged) Between Registers</li>
 <li>Linkage Conventions</li>
 <li><span class="underline">Computer Exercise</span>:
  Saving and Restoring Registers</li>
</ul>

<h4>Decimal Data</h4>

<ul>
 <li>Numeric characters - EBCDIC</li>
 <li>Numeric characters - ASCII</li>
 <li>Numeric characters - Unicode</li>
 <li>Zoned decimal data and signs</li>
 <li>Packed decimal</li>
 <li>PACK, PKA, PKU</li>
 <li>UNPK, UNPKA, UNPKU</li>
 <li>TP</li>
 <li>CVB, CVBG</li>
 <li>CVD, CVDG</li>
 <li><span class="underline">Computer Exercise</span>:
  Packed Decimal Numbers</li>
</ul>

<h3>Day Two</h3>

<h4>Binary Arithmetic</h4>

<ul>
 <li>Halfword Binary Arithmetic</li>
 <li>Fullword and doubleword binary arithmetic</li>
 <li>Logical binary loads</li>
 <li>Other binary loads</li>
 <li>Logical binary arithmetic</li>
 <li><span class="underline">Computer Exercise</span>:
  Binary Arithmetic</li>
</ul>

<h4>Boolean Instructions</h4>

<ul>
 <li>Working with bits</li>
 <li>OR instructions</li>
 <li>AND instructions</li>
 <li>Exclusive OR instructions</li>
 <li>Test under mask instructions</li>
 <li>Load and test instructions</li>
</ul>

<h4>Shifting and Rotating - Bits in Registers</h4>

<ul>
 <li>Shift Instructions</li>
 <li>Grande Shifts</li>
 <li>Shift Instruction Processing</li>
 <li>Rotate Instructions</li>
</ul>

<h4>Working With Character Strings in IBM Mainframes</h4>

<ul>
 <li>Working With Character Strings in IBM Mainframes</li>
 <li>Interruptible Instructions</li>
 <li>CPU-Determined Unit of Processing</li>
 <li>More Instructions for Working With Character Strings in IBM
  Mainframes</li>
</ul>

<h4>Working With ASCII Data in z/OS</h4>

<ul>
 <li>Encoding Schemes</li>
 <li>Working With ASCII Data in IBM Mainframes</li>
 <li>Big Endian and Little Endian</li>
 <li>Load Reversed</li>
 <li>Store Reversed</li>
 <li>Working With ASCII Data, continued</li>
 <li><span class="underline">Computer Exercise</span>:
  Supporting ASCII Data</li>
</ul>

<h4>Introduction to Unicode</h4>

<ul>
 <li>Characters</li>
 <li>Characters, Glyphs, and Fonts</li>
 <li>Coding Schemes</li>
 <li>Codepages</li>
 <li>Standards</li>
 <li>Unicode</li>
</ul>

<h4>Working With Unicode Data in z/Architecture</h4>

<ul>
 <li>CUUTF, CUTFU</li>
 <li>CLCLU, MVCLU</li>
 <li>TROO, TROT, TRTO, TRTT</li>
</ul>

<h4>Floating Point and Assembler</h4>

<ul>
 <li>Floating Point Formats</li>
 <li>Floating Point Instructions: Load Instructions</li>
 <li>Floating Point Instructions: Store Instructions</li>
 <li>Floating Point Instructions: Convert BFP to HFP</li>
 <li>Floating Point Instructions: Convert HFP to BFP</li>
 <li>Floating Point Instructions: Convert Fixed to HFP</li>
 <li>Floating Point Instructions: Convert HFP to Fixed</li>
 <li>Floating Point Instructions: Convert Fixed to BFP</li>
 <li>Floating Point Instructions: Convert BFP to Fixed</li>
</ul>

<p>This topical outline Copyright &copy; 2001 by Steven H. Comstock.
 All rights reserved.</p>

/HTML

         HTMLDEF COURSE4.UKL
<!-- UK -->
<p>
 To the <a href="#part1">Course Description</a><br />
 To the <a href="#part2">Course Objectives</a><br />
 To the <a href="#part3">Topical Outline</a>
</p>
/HTML

         HTMLDEF COURSE4.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/course4.htm -->
<!-- -->
<title>
 Bixoft Cursus 4 - High Level Assembler: Update for z/Architecture
</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft Cursus Assembler" href="courses.htm" />
<link rev="High Level Assembler: Classic" href="course1.htm" />
<link rel="High Level Assembler: Update" href="course3.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe, Cursus, Hlasm" />
<meta http-equiv="description"
      content="Uitleg over Bixoft's cursus voor High Level Assembler"
      />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF COURSE4.NLT
<!-- NL -->
<h1 align="center">High Level Assembler: Update for z/Architecture.
</h1>

<p>Deze cursus behandelt de instructies die met z/Architecture zijn
 ge&iuml;ntroduceerd.</p>

<p>De cursus is bedoeld voor:</p>
<ul>
 <li>Assembler programmeurs die hun kennis van de beschikbare
  hardware
  instructies op peil willen houden</li>
 <li>Assembler programmeurs die programmatuur naar een z/OS omgeving
  moeten
  gaan overzetten.</li>
</ul>

<p>De cursus presentatie hieronder bestaat uit de volgende drie
 onderdelen:</p>
<ol>
 <li><a href="#part1">Cursus beschrijving</a></li>
 <li><a href="#part2">Cursus doelstellingen</a></li>
 <li><a href="#part3">Lijst van onderwerpen</a></li>
</ol>

/HTML

         HTMLDEF COURSE4.NL1
<!-- NL -->
<h2><a name="part1" id="part1">Cursus beschrijving</a></h2>

<p>Verwachte duur: 2 dagen</p>

<p>Voordelen: Na afronding van deze cursus kunnen de deelnemers
 Assembler programma's
 schrijven en onderhouden welke gebruik maken van de hardware
 instructies
 die met z/Architecture zijn ge&iuml;ntroduceerd en van gerelateerde
 technieken die met z/OS zijn ge&iuml;ntroduceerd.</p>

<p>Doelgroep: Ervaren Assembler programmeurs die hun kennis willen
 uitbreiden met de
 nieuwe instructies en technieken die beschikbaar zijn gekomen met de
 introductie van z/Architecture en z/OS. Ook voor systeem programmeurs
 kan dit een handige cursus zijn als een eerste kennismaking met de
 nieuwe
 hardware en software.</p>

<p>Voorwaarden: Ervaring met het schrijven of onderhouden van
 Assembler applicaties;
 kennis van pre-z/Architecture faciliteiten zoals behandeld in de
 cursus
 <a href="course3.htm">High Level Assembler: Update</a>.</p>

<p>IBM Materiaal. Deze cursus is afgeleid van de volgende IBM
 handboeken; het wordt aanbevolen
 deze boeken onder handbereik te hebben tijdens de cursus (op papier,
 via
 BookManager, etc.):</p>
<ul>
 <li>SA22-7832 - z/Architecture Principles of Operation</li>
</ul>

<p>De belangrijkste onderwerpen:</p>
<ul>
 <li>z/Architecture overview</li>
 <li>z/OS overview</li>
 <li>Linkage and AMODE issues</li>
 <li>Register management: preserving left hand word values</li>
 <li>Register management: working with 64-bit values and 32-bit
  values</li>
 <li>Packed decimal changes: TP</li>
 <li>Packed decimal changes: ASCII and Unicode input and output</li>
 <li>Packed decimal changes: converting between packed decimal and
  64-bit integer</li>
 <li>Binary arithmetic: halfword, fullword, doubleword data</li>
 <li>Binary arithmetic: arbitrarily long binary numbers</li>
 <li>Boolean instructions in 64-bit form</li>
 <li>Shifting and rotating bits in registers</li>
 <li>Working with data in ASCII</li>
 <li>Introduction to Unicode</li>
 <li>Working with data in Unicode</li>
 <li>Floating point, as it relates to interlanguage communication</li>
</ul>

<p>Oefeningen: De cursus omvat zes oefeningen; vier daarvan
 demonstreren het gebruik van
 Assembler om HTML files te genereren vanuit EBCDIC of ASCII input.
</p>

<p class="remark">Opmerking:<br />
 Al het cursus materiaal is in amerikaans engels. Mondelinge
 toelichting
 zal worden gegeven in het engels, maar is eventueel ook beschikbaar in
 het nederlands, duits, en/of frans.</p>

<p>Deze cursus beschrijving Copyright &copy; 2001 Steven H. Comstock.
 Alle rechten voorbehouden.<br />
 Vertaling Copyright &copy; 2001 B.V. Bixoft.
 Alle rechten voorbehouden.</p>

/HTML

         HTMLDEF COURSE4.NL2
<!-- NL -->
<h2><a name="part2" id="part2">Cursus doelstellingen</a></h2>

<p>Na succesvolle voltooiing van de cursus kan de deelnemer, aan de
   hand
   van de toepasselijke handboeken:</p>

<ol>
 <li>De belangrijkste veranderingen beschrijven welke in de
  architectuur zijn
  aangebracht met de introductie van de z/Architecture klasse
  mainframes<br /><br /></li>
 <li>Assembler programma's schrijven die gebruik maken van de nieuwe
  instructies, met name<br /><br />
  <ul>
   <li>Relative branch Long instructions</li>
   <li>Instructions to set and test current addressing mode</li>
   <li>Instructions to perform 64-bit binary arithmetic</li>
   <li>Instruction to test packed decimal data for validity</li>
   <li>Instructions that allow you to work with arbitrarily long
    binary
    numbers</li>
   <li>Instructions that can set and test bits in storage and
    registers</li>
  </ul><br />
 </li>
 <li>Met datasets werken die gegevens in EBCDIC, ASCII, en/of Unicode
  bevatten<br /><br /></li>
 <li>Numerieke waarde-conversies uitvoeren tussen floating point,
  'gewoon'
  binair, en packed decimal, effectiever werken in inter-language
  communicatie met programma's geschreven in C, C++, en/of Java.</li>
</ol>

<p>Deze cursus doelstellingen Copyright &copy; 2001 Steven H. Comstock.
 Alle rechten voorbehouden.<br />
 Vertaling Copyright &copy; 2001 B.V. Bixoft.
 Alle rechten voorbehouden.</p>

/HTML

         HTMLDEF COURSE4.NL3
<!-- NL -->
<h2><a name="part3" id="part3">Lijst van onderwerpen</a></h2>

<h3>Dag een</h3>
<!-- UK -->

<h4>Introduction</h4>

<ul>
 <li>z/Architecture - Hardware</li>
 <li>z/OS - Software</li>
 <li><span class="underline">Computer Exercise</span>:
  Set up for labs</li>
</ul>

<h4>Linkage Issues - Branching and AMODE Setting</h4>

<ul>
 <li>PSW Format</li>
 <li>Address Calculation</li>
 <li>Register Format</li>
 <li>Loading Addresses</li>
 <li>Changing Addressing Modes</li>
 <li>Passing Control Without Switching AMODE</li>
 <li>Passing Control and Switching AMODE</li>
 <li>Switching AMODE Without Passing Control</li>
 <li>Testing the Current AMODE</li>
 <li>Running Around in AMODE-64</li>
 <li><span class="underline">Computer Exercise</span>:
  Setting and Testing AMODEs</li>
</ul>

<h4>Register Management</h4>

<ul>
 <li>Storing Register Contents, Unchanged, To Memory</li>
 <li>Loading Memory Contents, Unchanged, Into Registers</li>
 <li>Move Data (unchanged) Between Registers</li>
 <li>Linkage Conventions</li>
 <li><span class="underline">Computer Exercise</span>:
  Saving and Restoring Registers</li>
</ul>

<h4>Decimal Data</h4>

<ul>
 <li>Numeric characters - EBCDIC</li>
 <li>Numeric characters - ASCII</li>
 <li>Numeric characters - Unicode</li>
 <li>Zoned decimal data and signs</li>
 <li>Packed decimal</li>
 <li>PACK, PKA, PKU</li>
 <li>UNPK, UNPKA, UNPKU</li>
 <li>TP</li>
 <li>CVB, CVBG</li>
 <li>CVD, CVDG</li>
 <li><span class="underline">Computer Exercise</span>:
  Packed Decimal Numbers</li>
</ul>

<h3>Dag twee</h3>

<h4>Binary Arithmetic</h4>

<ul>
 <li>Halfword Binary Arithmetic</li>
 <li>Fullword and doubleword binary arithmetic</li>
 <li>Logical binary loads</li>
 <li>Other binary loads</li>
 <li>Logical binary arithmetic</li>
 <li><span class="underline">Computer Exercise</span>:
  Binary Arithmetic</li>
</ul>

<h4>Boolean Instructions</h4>

<ul>
 <li>Working with bits</li>
 <li>OR instructions</li>
 <li>AND instructions</li>
 <li>Exclusive OR instructions</li>
 <li>Test under mask instructions</li>
 <li>Load and test instructions</li>
</ul>

<h4>Shifting and Rotating - Bits in Registers</h4>

<ul>
 <li>Shift Instructions</li>
 <li>Grande Shifts</li>
 <li>Shift Instruction Processing</li>
 <li>Rotate Instructions</li>
</ul>

<h4>Working With Character Strings in IBM Mainframes</h4>

<ul>
 <li>Working With Character Strings in IBM Mainframes</li>
 <li>Interruptible Instructions</li>
 <li>CPU-Determined Unit of Processing</li>
 <li>More Instructions for Working With Character Strings in IBM
  Mainframes</li>
</ul>

<h4>Working With ASCII Data in z/OS</h4>

<ul>
 <li>Encoding Schemes</li>
 <li>Working With ASCII Data in IBM Mainframes</li>
 <li>Big Endian and Little Endian</li>
 <li>Load Reversed</li>
 <li>Store Reversed</li>
 <li>Working With ASCII Data, continued</li>
 <li><span class="underline">Computer Exercise</span>:
  Supporting ASCII Data</li>
</ul>

<h4>Introduction to Unicode</h4>

<ul>
 <li>Characters</li>
 <li>Characters, Glyphs, and Fonts</li>
 <li>Coding Schemes</li>
 <li>Codepages</li>
 <li>Standards</li>
 <li>Unicode</li>
</ul>

<h4>Working With Unicode Data in z/Architecture</h4>

<ul>
 <li>CUUTF, CUTFU</li>
 <li>CLCLU, MVCLU</li>
 <li>TROO, TROT, TRTO, TRTT</li>
</ul>

<h4>Floating Point and Assembler</h4>

<ul>
 <li>Floating Point Formats</li>
 <li>Floating Point Instructions: Load Instructions</li>
 <li>Floating Point Instructions: Store Instructions</li>
 <li>Floating Point Instructions: Convert BFP to HFP</li>
 <li>Floating Point Instructions: Convert HFP to BFP</li>
 <li>Floating Point Instructions: Convert Fixed to HFP</li>
 <li>Floating Point Instructions: Convert HFP to Fixed</li>
 <li>Floating Point Instructions: Convert Fixed to BFP</li>
 <li>Floating Point Instructions: Convert BFP to Fixed</li>
</ul>

<!-- NL -->
<p>Deze lijst van onderwerpen Copyright &copy; 2001 Steven H. Comstock.
 Alle rechten voorbehouden.</p>

/HTML

         HTMLDEF COURSE4.NLL
<!-- NL -->
<p>
 Naar de <a href="#part1">Cursus beschrijving</a><br />
 Naar de <a href="#part2">Cursus doelstellingen</a><br />
 Naar de <a href="#part3">Lijst van onderwerpen</a><br />
</p>
/HTML
