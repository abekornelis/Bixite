         HTMLDEF SLFTST4A.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.hlasm.com/english/slftst4a.htm -->
<!-- -->
<title>HLASM - Test-driver for Assembler self-test assignment 4</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<link rev="Assembler Proficiency Self-test" href="selftest.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe" />
<meta http-equiv="description"
      content="Test-driver for assignment 4 of the Assembler
      Proficiency Self-test" />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF SLFTST4A.UKT
<!-- NL -->
<h1 align="center">
 Test-driver for Assembler self-test assignment 4
</h1>

<pre>
SLFTST4A TITLE 'Test-driver for register-defining Macro'
***********************************************************************
* Start create : 12-04-2007
* 1st delivery : 12-04-2007
* Designer     : AF Kornelis
* Programmer   : AF Kornelis
***********************************************************************

***********************************************************************
*
* Program entry and linkage
*
***********************************************************************
SLFTST4A CSECT ,                       *
SLFTST4A AMODE 31
SLFTST4A RMODE ANY

         DEFREGS FIETS,
         DEFREGS -5
         DEFREGS 28
         DEFREGS 5,FIETS
         DEFREGS 5,-5
         DEFREGS 5,28
         DEFREGS 5,5
         DEFREGS 5,8
         DEFREGS 12,4
         DEFREGS 5,8,AS
         DEFREGS 8,2,HEX,PREFIX=CR
         DEFREGS 1,5,PREFIX=KNOL
         DEFREGS 4,7,DEC,PREFIX=FPR
         DEFREGS 4,7,HEX,PREFIX=GPR
         DEFREGS 14,13,,AR,PREFIX=AR

         XR    R15,R15
         BR    R14

         END
</pre>
/HTML

         HTMLDEF SLFTST4A.UKF
<!-- UK -->
<p class="footer" align="center">
 This text was written by A.F. Kornelis, translated by A.F. Kornelis.
 <br/>
 Text and translation: &copy; Copyright: A.F. Kornelis, 2007-2011.
 All rights reserved.<br />
 <a href="mailto:abe@bixoft.nl">e-mail</a> the author.</p>

/HTML

         HTMLDEF SLFTST4A.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/slftst4a.htm -->
<!-- -->
<title>HLASM - Test-driver voor opgave 4 van Assembler test</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<link rev="Zelftest voor Assembler vaardigheid" href="selftest.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe" />
<meta http-equiv="description"
      content="Test-driver voor opgave 4 van de zelftest voor Assembler
      vaardigheid" />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF SLFTST4A.NLT
<!-- NL -->
<h1 align="center">Test-driver voor opgave 4 van Assembler test</h1>

<pre>
SLFTST4A TITLE 'Test-driver for register-defining Macro'
***********************************************************************
* Start create : 12-04-2007
* 1st delivery : 12-04-2007
* Designer     : AF Kornelis
* Programmer   : AF Kornelis
***********************************************************************

***********************************************************************
*
* Program entry and linkage
*
***********************************************************************
SLFTST4A CSECT ,                       *
SLFTST4A AMODE 31
SLFTST4A RMODE ANY

         DEFREGS FIETS,
         DEFREGS -5
         DEFREGS 28
         DEFREGS 5,FIETS
         DEFREGS 5,-5
         DEFREGS 5,28
         DEFREGS 5,5
         DEFREGS 5,8
         DEFREGS 12,4
         DEFREGS 5,8,AS
         DEFREGS 8,2,HEX,PREFIX=CR
         DEFREGS 1,5,PREFIX=KNOL
         DEFREGS 4,7,DEC,PREFIX=FPR
         DEFREGS 4,7,HEX,PREFIX=GPR
         DEFREGS 14,13,,AR,PREFIX=AR

         XR    R15,R15
         BR    R14

         END
</pre>
/HTML

         HTMLDEF SLFTST4A.NLF
<!-- NL -->
<p class="footer" align="center">
 Deze tekst is geschreven door A.F. Kornelis.<br/>
 Tekst: &copy; Copyright A.F. Kornelis, 2007-2011.
 Alle rechten voorbehouden.<br />
 <a href="mailto:abe@bixoft.nl">e-mail</a> de auteur.</p>

/HTML
