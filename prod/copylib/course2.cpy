         HTMLDEF COURSE2.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/course2.htm -->
<!-- -->
<title>Bixoft Course 2 - High Level Assembler: Interfaces</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft courses" href="courses.htm" />
<link rev="High Level Assembler: Classic" href="course1.htm" />
<link rev="High Level Assembler: Debugging and Maintenance"
 href="course5.htm" />
<link rel="High Level Assembler: Classic" href="course1.htm" />
<link rel="High Level Assembler: Debugging and Maintenance"
  href="course5.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe, Course, Hlasm" />
<meta http-equiv="description"
      content="About Bixoft's course for OS/390 Assembler Language:
      Interfaces" />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF COURSE2.UKT
<!-- UK -->
<h1 align="center">High Level Assembler: Interfaces.</h1>

<p>This course covers the major OS/390 system services and their
 application-programmer oriented interfaces.</p>

<p>The course is intended for:</p>
<ul>
 <li>Experienced programmers - maybe new to assembler - needing to get
  acquainted with available system services</li>
 <li>Assembler programmers needing to brush up on their skills</li>
</ul>

<p>This overview comes in three parts, which are presented in sequence
 below:</p>
<ol>
 <li><a href="#part1">Course Description</a></li>
 <li><a href="#part2">Course Objectives</a></li>
 <li><a href="#part3">Topical Outline</a></li>
</ol>

/HTML

         HTMLDEF COURSE2.UK1
<!-- UK -->
<h2><a name="part1" id="part1">Course Description</a></h2>

<p>Recommended Duration: 3 Days</p>

<p>Benefits: Students who complete this course will be able to write or
 maintain
 Assembler programs that: process or create variable length records;
 involve subroutine linkages; use dynamic serial linkages such as LINK,
 LOAD, DELETE, XCTL; use other system service routines.<br/>
 Students will also have a solid basis for debugging and dump reading
 Assembler programs.</p>

<p>Audience: Experienced Assembler programmers needing to learn
 additional support,
 design, debugging, or maintenance skills.</p>

<p>Prerequisites: This course is intended as a follow-on to course
 <a href="course1.htm">High Level Assembler: Classic</a>.</p>

<p>Related IBM Materials.
 This course is drawn from these IBM manuals; access to them in the
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
 <li>The Program Binder</li>
 <li>Debugging and dump reading</li>
 <li>Timing services</li>
 <li>The WTO, TIME, STCKCONV, CONVTOD macros</li>
 <li>The SNAP macro</li>
 <li>Managing print files</li>
 <li>Variable length records</li>
 <li>QSAM update in place (PUTX)</li>
 <li>Dynamic serial linkages: LINK, LOAD, DELETE, XCTL</li>
 <li>Virtual storage services: GETMAIN, FREEMAIN</li>
</ul>

<p>Exercises: There are seven hands-on exercises</p>

<p class="remark">Note 1<br />
 This course includes, in its entirety,
 <a href="course5.htm">High Level Assembler: Debugging and
  Maintenance</a>.</p>

<p class="remark">Note 2<br />
 All course material is in American English. Oral explanation will be
 in
 English by default, but is also available in Dutch, German, and/or
 French.</p>

<p>This course description Copyright &copy; 2001 by Steven H. Comstock.
 All rights reserved.</p>

/HTML

         HTMLDEF COURSE2.UK2
<!-- UK -->
<h2><a name="part2" id="part2">Course Objectives</a></h2>

<p>On successful completion of this course, the student, with the aid
 of the
 appropriate reference materials, should be able to:</p>

<ol>
 <li>Follow standard OS/390 conventions regarding save area chaining
  and the
  passing and receiving of parameters<br /><br /></li>
 <li>Code or maintain Assembler programs that handle sequential files,
  using
  QSAM to read, write, and update records<br /><br /></li>
 <li>Write programs to handle variable length records using
  QSAM<br /><br /></li>
 <li>Debug most program ABENDs, using OS/390 full dumps or symptom
  dumps to
  track down problems<br /><br /></li>
 <li>Write mainline programs and subroutines; use the Linkage Editor
  to
  combine mainline and subroutine programs<br /><br /></li>
 <li>Use the Linkage Editor or Program Binder to maintain load modules
  by
  replacing existing CSECTs with new versions of these CSECTs<br />
 <br /></li>
 <li>Use the WTO, SNAP, and TIME macros<br /><br /></li>
 <li>Use Dynamic Serial linkages (using LINK, LOAD, DELETE, XCTL) to
  invoke
  subroutines<br /><br /></li>
 <li>Use various other system services
  (GETMAIN, FREEMAIN, STCKCONV, CONVTOD).</li>
</ol>

<p>These course objectives Copyright &copy; 2001 by Steven H. Comstock.
 All rights reserved.</p>

/HTML

         HTMLDEF COURSE2.UK3
<!-- UK -->
<h2><a name="part3" id="part3">Topical Outline</a></h2>

<h3>Day One</h3>

<h4>Program linkages</h4>

<ul>
 <li>Control Sections</li>
 <li>Save Areas</li>
 <li>Addressability</li>
 <li>Return Codes</li>
 <li>Typical Linkages</li>
 <li>SAVE and RETURN macros</li>
 <li>Getting the PARM value from EXEC statement</li>
</ul>

<h4>Working with files</h4>

<ul>
 <li>Data set organizations and access methods</li>
 <li>DCB Macros</li>
 <li>OPEN, GET, PUT, CLOSE</li>
 <li>Error handling: SYNAD routines</li>
 <li>ABEND macro</li>
 <li><span class="underline">Computer Exercise</span>:
  Basic Program Linkages and QSAM Files</li>
</ul>

<h4>Subroutines and the Linkage Editor</h4>

<ul>
 <li>CSECTs and the Linkage Editor</li>
 <li>Assemble, Link Edit, and Run Data Flow</li>
 <li>Anatomy of an Assembly Listing</li>
 <li>Assembler PARMs</li>
 <li>Subroutines: the CALL macro</li>
 <li>Object Modules and Load Modules</li>
 <li>Linkage Editor control statements and PARMs</li>
 <li>Managing Print Files</li>
 <li><span class="underline">Computer Exercise</span>:
  Subroutine Linkages</li>
</ul>

<h3>Day Two</h3>

<h4>Linkage Editor and Maintenance</h4>

<ul>
 <li>Impact of Changes to a Subroutine</li>
 <li>Additional Linkage Editor Control Statements</li>
 <li>Linkage Editor Processing</li>
 <li><span class="underline">Computer Exercise</span>:
  The Linkage Editor and Maintenance</li>
</ul>

<h4>Debugging and Dump Reading</h4>

<ul>
 <li><span class="underline">Computer Exercise</span>:
  ONION</li>
 <li>Guidelines for Debugging</li>
 <li>Program Termination</li>
 <li>IBM Publications</li>
 <li>BookManager</li>
 <li>READMVS</li>
 <li>Quick Reference</li>
 <li>File Related Messages</li>
 <li>Common System Completion Codes</li>
 <li>MVS, OS/390 Structure</li>
 <li>Essential Control Blocks</li>
 <li>Dump Reading</li>
 <li>Debugging: The Larger Context</li>
</ul>

<h4>Some System Services</h4>

<ul>
 <li>WTO - Write To Operator</li>
 <li>SNAP - Take a Snapshot Dump</li>
 <li>TIME - Get the Date and Time</li>
 <li>STCKCONV - Convert a STCK value to Date and Time Format</li>
 <li>CONVTOD - Convert a Date and Time value to TOD Format</li>
</ul>

<h4>Variable Length Records</h4>

<ul>
 <li>Defining</li>
 <li>Processing</li>
 <li><span class="underline">Computer Exercise</span>:
  Variable Length Records</li>
</ul>

<h3>Day Three</h3>

<h4>QSAM Locate Mode</h4>

<ul>
 <li>GET and PUT using locate mode</li>
 <li>Update-in-place: PUTX</li>
 <li>Extended Addressability Considerations</li>
</ul>

<h4>Dynamic Linkages</h4>

<ul>
 <li>Static Linkages</li>
 <li>Dynamic Linkages</li>
 <li>Module Attributes</li>
 <li>The Search for Modules</li>
 <li>LOAD</li>
 <li>DELETE</li>
 <li>LINK</li>
 <li>Reusable and Reenterable programs</li>
 <li><span class="underline">Computer Exercise</span>:
  Dynamic Serial Linkages</li>
</ul>

<h4>XCTL and Storage Management</h4>

<ul>
 <li>XCTL - an introduction</li>
 <li>GETMAIN / FREEMAIN</li>
 <li>Subpools</li>
 <li>XCTL Resumed</li>
 <li><span class="underline">Computer Exercise</span>:
  Using XCTL</li>
</ul>

<h4>Performance Improvements for Dynamic Linkages</h4>

<ul>
 <li>Use the DCB Parameter</li>
 <li>Build your own directory list (BLDL)</li>
</ul>

<h4>More Info</h4>

<ul>
 <li>Further Topics</li>
 <li>Further Sources of Information</li>
</ul>

<p>This topical outline Copyright &copy; 2001 by Steven H. Comstock.
 All rights reserved.</p>
/HTML

         HTMLDEF COURSE2.UKL
<!-- UK -->
<p>
 To the <a href="#part1">Course Description</a><br />
 To the <a href="#part2">Course Objectives</a><br />
 To the <a href="#part3">Topical Outline</a>
</p>
/HTML

         HTMLDEF COURSE2.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/course2.htm -->
<!-- -->
<title>Bixoft Cursus 2 - High Level Assembler: Interfaces</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft Cursus Assembler" href="courses.htm" />
<link rev="High Level Assembler: Classic" href="course1.htm" />
<link rev="High Level Assembler: Debugging and Maintenance" href="
       course5.htm" />
<link rel="High Level Assembler: Classic" href="course1.htm" />
<link rel="High Level Assembler: Debugging and Maintenance"
      href="course5.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe, Cursus, Hlasm" />
<meta http-equiv="description"
      content="Uitleg over Bixoft's cursus voor High Level Assembler."
      />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF COURSE2.NLT
<!-- NL -->
<h1 align="center">High Level Assembler: Interfaces.</h1>

<p>Deze cursus behandelt de belangrijkste OS/390 system services en
 hun
 applicatie-geori&euml;nteerde interfaces.</p>

<p>De cursus is bedoeld voor:</p>
<ul>
 <li>Ervaren programmeurs - al dan niet in assembler - die bekend
   moeten raken
   met de beschikbare system services</li>
 <li>Assembler programmeurs die hun kennis up-to-date willen brengen
</li>
</ul>

<p>De cursus presentatie hieronder bestaat uit de volgende drie
 onderdelen:</p>
<ol>
 <li><a href="#part1">Cursus beschrijving</a></li>
 <li><a href="#part2">Cursus doelstellingen</a></li>
 <li><a href="#part3">Lijst van onderwerpen</a></li>
</ol>

/HTML

         HTMLDEF COURSE2.NL1
<!-- NL -->
<h2><a name="part1" id="part1">Cursus beschrijving</a></h2>

<p>Verwachte duur: 3 dagen</p>

<p>Voordelen: Na afronding van deze cursus kunnen de deelnemers
 Assembler programma's
 schrijven en onderhouden welke: variabele lengte records aanmaken of
 verwerken; sub-programma's aanroepen; gebruik maken van dynamische
 aanroepen zoals LINK, LOAD, DELETE, XCTL; gebruik maken van andere
 system
 service routines.<br />
 Deelnemers verkrijgen tevens een stevige basis voor het lezen van
 dumps
 en het opsporen van fouten in Assembler programma's.</p>

<p>Doelgroep: Al dan niet ervaren Assembler programmeurs die
 aanvullende vaardigheden
 dienen op te bouwen ter zake van ondersteuning, ontwerp, debuggen,
 en
 onderhoud van Assembler programmatuur.</p>

<p>Voorwaarden: Deze cursus is bedoeld als een vervolg op de cursus
 <a href="course1.htm">High Level Assembler: Classic</a>.</p>

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
 <li>The Program Binder</li>
 <li>Debugging and dump reading</li>
 <li>Timing services</li>
 <li>The WTO, TIME, STCKCONV, CONVTOD macros</li>
 <li>The SNAP macro</li>
 <li>Managing print files</li>
 <li>Variable length records</li>
 <li>QSAM update in place (PUTX)</li>
 <li>Dynamic serial linkages: LINK, LOAD, DELETE, XCTL</li>
 <li>Virtual storage services: GETMAIN, FREEMAIN</li>
</ul>

<p>Oefeningen: De cursus omvat zeven oefeningen.</p>

<p class="remark">Opmerking 1:<br />
 Deze cursus omvat tevens al het materiaal uit de cursus
 <a href="course5.htm">High Level Assembler: Debugging and
  Maintenance</a>.</p>

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

         HTMLDEF COURSE2.NL2
<!-- NL -->
<h2><a name="part2" id="part2">Cursus doelstellingen</a></h2>

<p>Na succesvolle voltooi&iuml;ng van de cursus kan de deelnemer, aan
 de hand
 van de toepasselijke handboeken:</p>

<ol>
 <li>Gebruik maken van de standaard OS/390 conventies betreffende save
  area
  chaining en het doorgeven en ontvangen van parameters<br /><br />
 </li>
 <li>Assembler programma's schrijven en onderhouden, welke
  sequenti&euml;le
  datasets verwerken middels QSAM voor het lezen, schrijven, en
  bijwerken
  van records.<br /><br /></li>
 <li>Assembler programma's schrijven die records met variabele lengte
  kunnen
  verwerken middels QSAM<br /><br /></li>
 <li>De meeste program ABENDs debuggen, door gebruik te maken van
  OS/390 full
  dumps of symptom dumps om het probleem op te sporen<br /><br /></li>
 <li>Mainline programma's en sub-programma's te schrijven; de Linkage
  Editor
  gebruiken om mainline en sub-programma's te combineren<br /><br />
 </li>
 <li>De Linkage Editor of de Program Binder gebruiken om load modules
   te
  onderhouden door het vervangen van bestaande CSECTs door nieuwere
  versies.<br /><br /></li>
 <li>De WTO, SNAP, en TIME macro's gebruiken<br /><br /></li>
 <li>Dynamische programma aanroepen toe te passen (middels LINK, LOAD,
  DELETE,
  XCTL) voor het activeren van sub-programma's<br /><br /></li>
 <li>Diverse andere system services (GETMAIN, FREEMAIN, STCKCONV,
  CONVTOD)
  gebruiken.</li>
</ol>

<p>Deze cursus doelstellingen Copyright &copy; 2001 Steven H. Comstock.
 Alle rechten voorbehouden.<br />
 Vertaling Copyright &copy; 2001 B.V. Bixoft.
 Alle rechten voorbehouden.</p>

/HTML

         HTMLDEF COURSE2.NL3
<!-- NL -->
<h2><a name="part3" id="part3">Lijst van onderwerpen</a></h2>

<h3>Dag een</h3>
<!-- UK -->

<h4>Program linkages</h4>

<ul>
 <li>Control Sections</li>
 <li>Save Areas</li>
 <li>Addressability</li>
 <li>Return Codes</li>
 <li>Typical Linkages</li>
 <li>SAVE and RETURN macros</li>
 <li>Getting the PARM value from EXEC statement</li>
</ul>

<h4>Working with files</h4>

<ul>
 <li>Data set organizations and access methods</li>
 <li>DCB Macros</li>
 <li>OPEN, GET, PUT, CLOSE</li>
 <li>Error handling: SYNAD routines</li>
 <li>ABEND macro</li>
 <li><span class="underline">Computer Exercise</span>:
  Basic Program Linkages and QSAM Files</li>
</ul>

<h4>Subroutines and the Linkage Editor</h4>

<ul>
 <li>CSECTs and the Linkage Editor</li>
 <li>Assemble, Link Edit, and Run Data Flow</li>
 <li>Anatomy of an Assembly Listing</li>
 <li>Assembler PARMs</li>
 <li>Subroutines: the CALL macro</li>
 <li>Object Modules and Load Modules</li>
 <li>Linkage Editor control statements and PARMs</li>
 <li>Managing Print Files</li>
 <li><span class="underline">Computer Exercise</span>:
  Subroutine Linkages</li>
</ul>

<h3>Dag twee</h3>

<h4>Linkage Editor and Maintenance</h4>

<ul>
 <li>Impact of Changes to a Subroutine</li>
 <li>Additional Linkage Editor Control Statements</li>
 <li>Linkage Editor Processing</li>
 <li><span class="underline">Computer Exercise</span>:
  The Linkage Editor and Maintenance</li>
</ul>

<h4>Debugging and Dump Reading</h4>

<ul>
 <li><span class="underline">Computer Exercise</span>:
  ONION</li>
 <li>Guidelines for Debugging</li>
 <li>Program Termination</li>
 <li>IBM Publications</li>
 <li>BookManager</li>
 <li>READMVS</li>
 <li>Quick Reference</li>
 <li>File Related Messages</li>
 <li>Common System Completion Codes</li>
 <li>MVS, OS/390 Structure</li>
 <li>Essential Control Blocks</li>
 <li>Dump Reading</li>
 <li>Debugging: The Larger Context</li>
</ul>

<h4>Some System Services</h4>

<ul>
 <li>WTO - Write To Operator</li>
 <li>SNAP - Take a Snapshot Dump</li>
 <li>TIME - Get the Date and Time</li>
 <li>STCKCONV - Convert a STCK value to Date and Time Format</li>
 <li>CONVTOD - Convert a Date and Time value to TOD Format</li>
</ul>

<h4>Variable Length Records</h4>

<ul>
 <li>Defining</li>
 <li>Processing</li>
 <li><span class="underline">Computer Exercise</span>:
  Variable Length Records</li>
</ul>

<h3>Dag drie</h3>

<h4>QSAM Locate Mode</h4>

<ul>
 <li>GET and PUT using locate mode</li>
 <li>Update-in-place: PUTX</li>
 <li>Extended Addressability Considerations</li>
</ul>

<h4>Dynamic Linkages</h4>

<ul>
 <li>Static Linkages</li>
 <li>Dynamic Linkages</li>
 <li>Module Attributes</li>
 <li>The Search for Modules</li>
 <li>LOAD</li>
 <li>DELETE</li>
 <li>LINK</li>
 <li>Reusable and Reenterable programs</li>
 <li><span class="underline">Computer Exercise</span>:
  Dynamic Serial Linkages</li>
</ul>

<h4>XCTL and Storage Management</h4>

<ul>
 <li>XCTL - an introduction</li>
 <li>GETMAIN / FREEMAIN</li>
 <li>Subpools</li>
 <li>XCTL Resumed</li>
 <li><span class="underline">Computer Exercise</span>:
  Using XCTL</li>
</ul>

<h4>Performance Improvements for Dynamic Linkages</h4>

<ul>
 <li>Use the DCB Parameter</li>
 <li>Build your own directory list (BLDL)</li>
</ul>

<h4>More Info</h4>

<ul>
 <li>Further Topics</li>
 <li>Further Sources of Information</li>
</ul>

<!-- NL -->
<p>Deze lijst van onderwerpen Copyright &copy; 2001 Steven H. Comstock.
 Alle rechten voorbehouden.</p>

/HTML

         HTMLDEF COURSE2.NLL
<!-- NL -->
<p>
 Naar de <a href="#part1">Cursus beschrijving</a><br />
 Naar de <a href="#part2">Cursus doelstellingen</a><br />
 Naar de <a href="#part3">Lijst van onderwerpen</a><br />
</p>
/HTML
