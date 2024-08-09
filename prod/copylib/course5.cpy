         HTMLDEF COURSE5.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/course5.htm -->
<!-- -->
<title>Bixoft Course 5 - High Level Assembler: Debugging and
 Maintenance</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft courses" href="courses.htm" />
<link rev="High Level Assembler: Interfaces" href="course2.htm" />
<link rel="High Level Assembler: Interfaces" href="course2.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe, Course, Hlasm" />
<meta http-equiv="description"
      content="About Bixoft's course for OS/390 Assembler Language:
 Debugging and Maintenance" />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF COURSE5.UKT
<!-- UK -->
<h1 align="center">High Level Assembler: Debugging and Maintenance.
</h1>

<p>This course covers the major OS/390 debugging techniques including
 dump
 reading.</p>

<p>The course is intended for:</p>
<ul>
 <li>Experienced assembler programmers needing to extend their
  debugging
  and dump reading skills for the Assembler environment.</li>
</ul>

<p>This overview comes in three parts, which are presented in sequence
 below:</p>
<ol>
 <li><a href="#part1">Course Description</a></li>
 <li><a href="#part2">Course Objectives</a></li>
 <li><a href="#part3">Topical Outline</a></li>
</ol>

/HTML

         HTMLDEF COURSE5.UK1
<!-- UK -->
<h2><a name="part1" id="part1">Course Description</a></h2>

<p>Recommended Duration: 2 Days</p>

<p>Benefits: Students who complete this course will be able to write
 or maintain
 Assembler programs that involve subroutine linkages.<br />
 Students will also have a solid basis for debugging and dump reading
 Assembler programs.</p>

<p>Audience: Experienced Assembler programmers needing to learn
 additional debugging,
 or maintenance skills in the Assembler language environment.</p>

<p>Prerequisites: The student should have practice in coding and
 testing Assembler programs
 and should be familiar with the editor and the job submission and
 review
 facilities used in their installation.</p>

<p>Related IBM Materials. This course is drawn from these IBM manuals;
 access to them in the
 classroom is recommended but not required:</p>
<ul>
 <li>GC28-1762 - Assembler Services Guide</li>
 <li>GC28-1910 - Assembler Services Reference</li>
 <li>SC26-4922 - Using Data Sets</li>
 <li>SC26-4913 - Macro Instructions for Data Sets</li>
 <li>SC26-4916 - Program Management</li>
</ul>

<p>Major Topics Include:</p>
<ul>
 <li>Program linkages and save areas</li>
 <li>Obtaining PARM data from the EXEC statement</li>
 <li>QSAM macros and processing</li>
 <li>SYNAD routines</li>
 <li>Subroutines and the Linkage Editor</li>
 <li>Debugging and dump reading</li>
 <li>The Program Binder</li>
 <li>The WTO and SNAP macros</li>
</ul>

<p>Exercises: There are four hands-on exercises</p>

<p class="remark">Note 1:<br />
 This course is included, in its entirety, in
 <a href="course2.htm">High Level Assembler: Interfaces</a>.</p>

<p class="remark">Note 2:<br />
 All course material is in American English. Oral explanation will be
 in
 English by default, but is also available in Dutch, German, and/or
 French.</p>

<p>This course description Copyright &copy; 2001 by Steven H. Comstock.
 All rights reserved.</p>

/HTML

         HTMLDEF COURSE5.UK2
<!-- UK -->
<h2><a name="part2" id="part2">Course Objectives</a></h2>

<p>On successful completion of this course, the student, with the aid
 of the
 appropriate reference materials, should be able to:</p>

<ol>
 <li>Follow standard OS/390 conventions regarding save area chaining
  and the
  passing and receiving of parameters<br /><br /></li>
 <li>Debug most program ABENDs, using OS/390 full dumps or symptom
  dumps to
  track down problems<br /><br /></li>
 <li>Write mainline programs and subroutines; use the Linkage Editor
  to combine
  mainline and subroutine programs<br /><br /></li>
 <li>Use the Linkage Editor or Program Binder to maintain load modules
  by
  replacing existing CSECTs with new versions of these CSECTs<br />
<br /></li>
 <li>Use the WTO and SNAP macros for debugging purposes.</li>
</ol>

<p>These course objectives Copyright &copy; 2001 by Steven H. Comstock.
 All rights reserved.</p>

/HTML

         HTMLDEF COURSE5.UK3
<!-- UK -->
<h2><a name="part3" id="part3">Topical Outline</a></h2>

<h3>Day One</h3>

<h4>Program Linkages</h4>

<ul>
 <li>Program linkages and Save Areas</li>
 <li>SAVE and RETURN macros</li>
 <li>Obtaining the PARM value from EXEC statement</li>
 <li>I/O Linkages</li>
 <li>ABEND macro</li>
 <li><span class="underline">Computer Exercise</span>:
  Program Linkages and QSAM Files</li>
</ul>

<h4>Subroutines and the Linkage Editor</h4>

<ul>
 <li>CSECTs and the Linkage Editor</li>
 <li>Assemble, Link Edit, and Run Data Flow</li>
 <li>Assembler PARMs</li>
 <li>Subroutines</li>
 <li>CALL macro</li>
 <li>Linkage Editor</li>
 <li>Passing and receiving parameters</li>
 <li><span class="underline">Computer Exercise</span>:
  Subroutine Linkages</li>
</ul>

<h4>More on the Linkage Editor</h4>

<ul>
 <li><span class="underline">Computer Exercise</span>:
  The Linkage Editor and Maintenance</li>
</ul>

<h4>Introduction to Debugging</h4>

<ul>
 <li><span class="underline">Computer Exercise</span>:
  ONION</li>
</ul>

<h3>Day Two</h3>

<h4>Guidelines for Debugging</h4>

<ul>
 <li>Program Termination</li>
 <li>Sources of Information</li>
 <li>IBM Publications</li>
 <li>BookManager</li>
 <li>READMVS</li>
 <li>Quick Reference</li>
 <li>Messages and Clues</li>
 <li>Common System Completion Codes</li>
 <li>MVS, OS/390 Dispatching</li>
 <li>Load Modules and Dumps</li>
 <li>Dump Reading</li>
</ul>

<h4>Some System Services</h4>

<ul>
 <li>WTO and SNAP macros</li>
</ul>

<p>This topical outline Copyright &copy; 2001 by Steven H. Comstock.
 All rights reserved.</p>

/HTML

         HTMLDEF COURSE5.UKL
<!-- UK -->
<p>
 To the <a href="#part1">Course Description</a><br />
 To the <a href="#part2">Course Objectives</a><br />
 To the <a href="#part3">Topical Outline</a>
</p>
/HTML

         HTMLDEF COURSE5.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/course5.htm -->
<!-- -->
<title>
 Bixoft Cursus 5 - High Level Assembler: Debugging and Maintenance
</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft Cursus Assembler" href="courses.htm" />
<link rev="High Level Assembler: Interfaces" href="course2.htm" />
<link rel="High Level Assembler: Interfaces" href="course2.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe, Cursus, Hlasm" />
<meta http-equiv="description"
      content="Uitleg over Bixoft's cursus voor High Level Assembler."
      />
<meta http-equiv="robots" content="index,follow" />
/HTML

         HTMLDEF COURSE5.NLT
<!-- NL -->
<h1 align="center">High Level Assembler: Debugging and Maintenance.
</h1>

<p>Deze cursus behandelt de belangrijkste OS/390 debugging technieken,
 waaronder
 het lezen van dumps.</p>

<p>De cursus is bedoeld voor:</p>
<ul>
 <li>Ervaren Assembler programmeurs die hun vaardigheden in het
  debuggen en het
  lezen van dumps willen uitbreiden.</li>
</ul>

<p>De cursus presentatie hieronder bestaat uit de volgende drie
 onderdelen:</p>
<ol>
 <li><a href="#part1">Cursus beschrijving</a></li>
 <li><a href="#part2">Cursus doelstellingen</a></li>
 <li><a href="#part3">Lijst van onderwerpen</a></li>
</ol>

/HTML

         HTMLDEF COURSE5.NL1
<!-- NL -->
<h2><a name="part1" id="part1">Cursus beschrijving</a></h2>

<p>Verwachte duur: 2 dagen</p>

<p>Voordelen: Na afronding van deze cursus kunnen de deelnemers
 Assembler programma's
 schrijven en onderhouden welke sub-programma's aanroepen.<br />
 Deelnemers verkrijgen tevens een stevige basis voor het lezen van
 dumps
 en het opsporen van fouten in Assembler programma's.</p>

<p>Doelgroep: Ervaren Assembler programmeurs die aanvullende
 vaardigheden willen
 opbouwen in het onderhouden en debuggen van Assembler programma's.
</p>

<p>Voorwaarden: Deelnemers dienen ervaring te hebben in het schrijven
 en testen van
 Assembler programma's. Tevens dienen zij bekend te zijn met ISPF/PDF
 en SDSF.</p>

<p>IBM Materiaal. Deze cursus is afgeleid van de volgende IBM
 handboeken; het wordt aanbevolen
 deze boeken onder handbereik te hebben tijdens de cursus (op papier,
 via
 BookManager, etc.):</p>
<ul>
 <li>GC28-1762 - Assembler Services Guide</li>
 <li>GC28-1910 - Assembler Services Reference</li>
 <li>SC26-4922 - Using Data Sets</li>
 <li>SC26-4913 - Macro Instructions for Data Sets</li>
 <li>SC26-4916 - Program Management</li>
</ul>

<p>De belangrijkste onderwerpen:</p>
<ul>
 <li>Program linkages and save areas</li>
 <li>Obtaining PARM data from the EXEC statement</li>
 <li>QSAM macros and processing</li>
 <li>SYNAD routines</li>
 <li>Subroutines and the Linkage Editor</li>
 <li>Debugging and dump reading</li>
 <li>The Program Binder</li>
 <li>The WTO and SNAP macros</li>
</ul>

<p>Oefeningen: De cursus omvat vier oefeningen.</p>

<p class="remark">Opmerking 1:<br />
 Deze cursus is in zijn geheel opgenomen in de cursus
 <a href="course2.htm">High Level Assembler: Interfaces</a>.</p>

<p class="remark">Opmerking 2:<br />
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

         HTMLDEF COURSE5.NL2
<!-- NL -->
<h2><a name="part2" id="part2">Cursus doelstellingen</a></h2>

<p>Na succesvolle voltooiing van de cursus kan de deelnemer, aan de
hand
van de toepasselijke handboeken:</p>

<ol>
 <li>Gebruik maken van de standaard OS/390 conventies betreffende save
 area
  chaining en het doorgeven en ontvangen van parameters<br /><br />
 </li>
 <li>De meeste program ABENDs debuggen, door gebruik te maken van
  OS/390 full
  dumps of symptom dumps om het probleem op te sporen<br /><br />
 </li>
 <li>Mainline programma's en sub-programma's te schrijven; de Linkage
  Editor
  gebruiken om mainline en sub-programma's te combineren<br /><br />
 </li>
 <li>De Linkage Editor of de Program Binder gebruiken om load modules
  te
  onderhouden door het vervangen van bestaande CSECTs door nieuwere
  versies.<br /><br /></li>
 <li>De WTO, SNAP, en TIME macro's gebruiken</li>
</ol>

<p>Deze cursus doelstellingen Copyright &copy; 2001 Steven H. Comstock.
 Alle rechten voorbehouden.<br />
 Vertaling Copyright &copy; 2001 B.V. Bixoft.
 Alle rechten voorbehouden.</p>

/HTML

         HTMLDEF COURSE5.NL3
<!-- NL -->
<h2><a name="part3" id="part3">Lijst van onderwerpen</a></h2>

<h3>Dag een</h3>
<!-- UK -->

<h4>Program Linkages</h4>

<ul>
 <li>Program linkages and Save Areas</li>
 <li>SAVE and RETURN macros</li>
 <li>Obtaining the PARM value from EXEC statement</li>
 <li>I/O Linkages</li>
 <li>ABEND macro</li>
 <li><span class="underline">Computer Exercise</span>:
  Program Linkages and QSAM Files</li>
</ul>

<h4>Subroutines and the Linkage Editor</h4>

<ul>
 <li>CSECTs and the Linkage Editor</li>
 <li>Assemble, Link Edit, and Run Data Flow</li>
 <li>Assembler PARMs</li>
 <li>Subroutines</li>
 <li>CALL macro</li>
 <li>Linkage Editor</li>
 <li>Passing and receiving parameters</li>
 <li><span class="underline">Computer Exercise</span>:
  Subroutine Linkages</li>
</ul>

<h4>More on the Linkage Editor</h4>

<ul>
 <li><span class="underline">Computer Exercise</span>:
  The Linkage Editor and Maintenance</li>
</ul>

<h4>Introduction to Debugging</h4>

<ul>
 <li><span class="underline">Computer Exercise</span>:
  ONION</li>
</ul>

<h3>Dag twee</h3>

<h4>Guidelines for Debugging</h4>

<ul>
 <li>Program Termination</li>
 <li>Sources of Information</li>
 <li>IBM Publications</li>
 <li>BookManager</li>
 <li>READMVS</li>
 <li>Quick Reference</li>
 <li>Messages and Clues</li>
 <li>Common System Completion Codes</li>
 <li>MVS, OS/390 Dispatching</li>
 <li>Load Modules and Dumps</li>
 <li>Dump Reading</li>
</ul>

<h4>Some System Services</h4>

<ul>
 <li>WTO and SNAP macros</li>
</ul>

<!-- NL -->
<p>Deze lijst van onderwerpen Copyright &copy; 2001 Steven H. Comstock.
 Alle rechten voorbehouden.</p>

/HTML

         HTMLDEF COURSE5.NLL
<!-- NL -->
<p>
 Naar de <a href="#part1">Cursus beschrijving</a><br />
 Naar de <a href="#part2">Cursus doelstellingen</a><br />
 Naar de <a href="#part3">Lijst van onderwerpen</a><br />
</p>
/HTML
