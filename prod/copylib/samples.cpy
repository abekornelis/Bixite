         HTMLDEF SAMPLES.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/samples.htm -->
<!-- -->
<title>HLASM - Examples of assembler programs</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<link rev="HLASM introduction" href="hlasm.htm" />
<link rel="Convert character field to 64-bit integer"
      href="../goodies/i8cvb.htm" />
<link rel="Convert 64-bit integer to character format"
      href="../goodies/i8cvd.htm" />
<link rel="Merge up to 999 data sets"
      href="../goodies/merg999.htm" />
<link rel="Various date conversion routines"
      href="../goodies/datertns.htm" />
<link rel="Miscellaneous routines" href="../goodies/miscrtns.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe, Examples" />
<meta http-equiv="description"
      content="Examples of source code for mainframe assembler." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF SAMPLES.UKT
<!-- UK -->
<h1 align="center">Examples of assembler code.</h1>

<p>This page contains the following sample programs from various
   authors:</p>
<ul>
 <li><a href="#i8cvb">Convert character field to 64-bit integer</a>
 </li>
 <li><a href="#i8cvd">Convert 64-bit integer to character format></a>
 </li>
 <li><a href="#merg999">Merge up to 999 data sets</a></li>
 <li><a href="#datertns">Various date conversion routines</a></li>
 <li><a href="#miscrtns">Miscellaneous routines</a></li>
</ul>

<p>This site also contains the following sample programs from Bixoft:
</p>
<ul>
 <li>Traditional assembler programs:
  <ul>
   <li><a href="samppgm.htm#bxaio">Static glue module</a></li>
   <li><a href="samppgm.htm#bxaio00">Dynamic VSAM I/O module</a></li>
  </ul>
 </li>
 <li>Assembler programs that make use of Bixoft's eXtended Assembly
     macro's:
  <ul>
   <li><a href="samppgm.htm#bxalowpg">Dummy program, amode 24</a>
  </li>
   <li><a href="samppgm.htm#bxamaps">Generates overview of mapped
    control blocks</a></li>
   <li><a href="samppgm.htm#bxatest">Test a JCL variable</a></li>
   <li><a href="samppgm.htm#bxacopy">Copy a dataset or a member</a>
   </li>
   <li><a href="samppgm.htm#bxaunld">Unload a library</a></li>
  </ul>
 </li>
</ul>

<p class="remark">
 Remark:<br />
 All samples on this page are no more than examples, and are in
 way
 guaranteed to be free of errors or omissions. You may use (parts of)
 these
 code-samples, but it remains in all aspects your own responsibility
 to
 test your programs.</p>

/HTML

         HTMLDEF SAMPLES.UK1
<!-- UK -->
<h3><a name="i8cvb" id="i8cvb">Convert character field to 64-bit
 integer</a></h3>

<p>This program was supplied by Dr. John R. Ehrman. It will accept as
 input
 a signed or unsigned decimal number in EBCDIC character format. It
 will
 convert the input to a 64-bit signed binary integer.</p>

<p>View source code of program <a href="../goodies/i8cvb.htm">I8CVB
</a>.</p>

/HTML

         HTMLDEF SAMPLES.UK2
<!-- UK -->
<h3><a name="i8cvd" id="i8cvd">Convert 64-bit integer to character
 format</a></h3>

<p>This program was supplied by Dr. John R. Ehrman. It will accept as
 input
 a 64-bit signed binary integer which it will convert into a signed
 decimal
 number in EBCDIC character format.</p>

<p>View source code of program <a href="../goodies/i8cvd.htm">I8CVD
</a>.</p>

/HTML

         HTMLDEF SAMPLES.UK3
<!-- UK -->
<h3><a name="merg999" id="merg999">Merge up to 999 data sets</a></h3>

<p>This program was supplied by Mr. Edward Soto. It will merge up to
 999
 input data sets into a single output dataset.</p>

<p>View source code of program <a href="../goodies/merg999.htm">
 MERG999</a>.</p>

/HTML

         HTMLDEF SAMPLES.UK4
<!-- UK -->
<h3><a name="datertns" id="datertns">Various date conversion routines
</a></h3>

<p>These routines have been supplied by Mr. Edward Soto. This is a
 collection
 of routines that will perform conversions between various date
 formats. For
 their functions and interfaces, please refer to the header of each
 routine.</p>

<p>View source code of the routines in
<a href="../goodies/datertns.htm">DATERTNS</a>.</p>

/HTML

         HTMLDEF SAMPLES.UK5
<!-- UK -->
<h3><a name="miscrtns" id="miscrtns">Miscellaneous routines</a></h3>

<p>These routines have been supplied by Mr. Edward Soto. This is a
 collection
 of routines that will perform various tasks. For
 their functions and interfaces, please refer to the header of each
 routine.</p>

<p>View source code of the routines in
<a href="../goodies/miscrtns.htm">MISCRTNS</a>.</p>

/HTML

         HTMLDEF SAMPLES.UKL
<!-- UK -->
<p>Code from various authors:</p>
<ul>
 <li><a href="#i8cvb">Convert character field to 64-bit integer</a>.
 </li>
 <li><a href="#i8cvd">Convert 64-bit integer to character format</a>.
 </li>
 <li><a href="#merg999">Merge up to 999 data sets</a>.</li>
 <li><a href="#datertns">Various date conversion routines</a>.</li>
 <li><a href="#miscrtns">Miscellaneous routines</a>.</li>
</ul>

<p>Bixoft Traditional Assembler examples:</p>
<ul>
 <li>Example of a <a href="samppgm.htm#bxaio">Static glue module</a>.
 </li>
 <li>Example of a <a href="samppgm.htm#bxaio00">Dynamic
 VSAM I/O module</a>.</li>
</ul>

<p>Bixoft's eXtended Assembly examples:</p>
<ul>
 <li>Example of a  <a href="samppgm.htm#bxalowpg">dummy program</a>.
 </li>
 <li>Example of an <a href="samppgm.htm#bxamaps">overview of control
  block fields</a>.</li>
 <li>Example of a  <a href="samppgm.htm#bxatest">check of a JCL
  variable</a>.</li>
 <li>Example of a  <a href="samppgm.htm#bxacopy">copy (dataset or
  member) program</a>.</li>
 <li>Example of an <a href="samppgm.htm#bxaunld">unload library
  program</a>.</li>
</ul>

/HTML

         HTMLDEF SAMPLES.UKF
<!-- UK -->
<p class="footer" align="center">
 This text was written by A.F. Kornelis<br/>
 &copy; Copyright: A.F. Kornelis, 2003. All rights reserved.<br />
 <a href="mailto:abe@bixoft.nl">e-mail</a> the author.</p>

/HTML

         HTMLDEF SAMPLES.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/samples.htm -->
<!-- -->
<title>HLASM - Voorbeelden van assembler programma's</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<link rev="HLASM introductie" href="hlasm.htm" />
<link rel="Converteer tekst-veld naar 64-bit integer"
      href="../goodies/i8cvb.htm" />
<link rel="Converteer 64-bit integer naar tekst-veld"
      href="../goodies/i8cvd.htm" />
<link rel="Maximaal 999 data sets samenvoegen"
      href="../goodies/merg999.htm" />
<link rel="Diverse routines voor datum-conversies"
      href="../goodies/datertns.htm" />
<link rel="Diverse routines" href="../goodies/miscrtns.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe, Voorbeelden" />
<meta http-equiv="description"
      content="Voorbeelden van mainframe assembler source-code." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF SAMPLES.NLT
<!-- NL -->
<h1 align="center">Voorbeelden van assembler code.</h1>

<p>Deze pagina bevat de volgende voorbeelden door diverse auteurs:</p>
<ul>
 <li><a href="#i8cvb">Converteer tekst-veld naar 64-bit integer</a>.
</li>
 <li><a href="#i8cvd">Converteer 64-bit integer naar tekst-veld</a>.
</li>
 <li><a href="#merg999">Maximaal 999 data sets samenvoegen</a>.</li>
 <li><a href="#datertns">Diverse datum conversie routines</a>.</li>
 <li><a href="#miscrtns">Diverse routines</a>.</li>
</ul>

<p>Deze site bevat ook de volgende voorbeeld-programma's van Bixoft:
</p>
<ul>
 <li>Klassieke assembler programma's:
  <ul>
   <li><a href="samppgm.htm#bxaio">Static glue module</a></li>
   <li><a href="samppgm.htm#bxaio00">Dynamic VSAM I/O module</a></li>
  </ul>
 </li>
 <li>Programma's die Bixoft's eXtended Assembly macro's gebruiken:
  <ul>
   <li><a href="samppgm.htm#bxalowpg">Dummy programma</a></li>
   <li><a href="samppgm.htm#bxamaps">Overzicht van control block
    velden</a></li>
   <li><a href="samppgm.htm#bxatest">Test een JCL variabele</a></li>
   <li><a href="samppgm.htm#bxacopy">Kopieer een dataset of member
    </a></li>
   <li><a href="samppgm.htm#bxaunld">Converteer een bibliotheek</a>
   </li>
  </ul>
 </li>
</ul>

<p class="remark">
 Opmerking:<br />
 Alle voorbeelden op deze pagina zijn slechts voorbeelden, en onder
 voorbehoud
 van fouten en/of omissies. U mag (delen van) deze code gebruiken maar
 u doet
 dat volledig voor eigen risico. Het blijft natuurlijk altijd zaak uw
 programma's grondig te testen.</p>

/HTML

         HTMLDEF SAMPLES.NL1
<!-- NL -->
<h3><a name="i8cvb" id="i8cvb">Converteer tekst-veld naar 64-bit
 integer</a></h3>

<p>Dit programma is beschikbaar gesteld door Dr. John R. Ehrman.
 Het accepteert een tekst-veld met een decimaal getal (met of zonder
 teken)
 in EBCDIC-formaat. Dit getal wordt geconverteerd naar een 64-bits
 signed
 binary integer.</p>

<p>Bekijk de source code van programma
<a href="../goodies/i8cvb.htm">I8CVB</a>.</p>

/HTML

         HTMLDEF SAMPLES.NL2
<!-- NL -->
<h3><a name="i8cvd" id="i8cvd">Converteer 64-bits integer naar een
 tekst-veld</a></h3>

<p>Dit programma is beschikbaar gesteld door Dr. John R. Ehrman.
 Het accepteert een 64-bits signed binary integer en converteert dit
 naar
 een tekst-veld met een plus- of min-teken en een decimaal getal in
 EBCDIC-formaat.</p>

<p>Bekijk de source code van programma <a href="../goodies/i8cvd.htm">
I8CVD</a>.</p>

/HTML

         HTMLDEF SAMPLES.NL3
<!-- NL -->
<h3><a name="merg999" id="merg999">Maximaal 999 datsets samenvoegen
</a></h3>

<p>Dit programma is beschikbaar gesteld door Dhr. Edward Soto.
 Het voegt maximaal 999 input data sets samen tot een enkel output
 data set.</p>

<p>Bekijk de source code van programma
<a href="../goodies/merg999.htm">MERG999</a>.</p>

/HTML

         HTMLDEF SAMPLES.NL4
<!-- NL -->
<h3><a name="datertns" id="datertns">Diverse datum-conversie routines
</a></h3>

<p>Deze routines zijn beschikbaar gesteld door Dhr. Edward Soto.
 Dit is een verzameling routines die conversies uitvoeren tussen
 diverse
 datum-formaten. Voor hun functies en interfaces verwijzen wij naar
 het
 commentaar boven elke routine.</p>

<p>Bekijk de source code van de routines in
<a href="../goodies/datertns.htm">DATERTNS</a>.</p>

/HTML

         HTMLDEF SAMPLES.NL5
<!-- NL -->
<h3><a name="miscrtns" id="miscrtns">Diverse routines</a></h3>

<p>Deze routines zijn beschikbaar gesteld door Dhr. Edward Soto.
 Dit is een verzameling routines die diverse taken uitvoeren.
 Voor hun functies en interfaces verwijzen wij naar het
 commentaar boven elke routine.</p>

<p>Bekijk de source code van de routines in
<a href="../goodies/miscrtns.htm">MISCRTNS</a>.</p>

/HTML

         HTMLDEF SAMPLES.NLL
<!-- NL -->
<p>Programma-code van diverse auteurs:</p>
<ul>
 <li><a href="#i8cvb">Converteer tekst-veld naar 64-bit integer</a>.
</li>
 <li><a href="#i8cvd">Converteer 64-bit integer naar tekst-veld</a>.
</li>
 <li><a href="#merg999">Maximaal 999 data sets samenvoegen</a>.</li>
 <li><a href="#datertns">Diverse datum conversie routines</a>.</li>
 <li><a href="#miscrtns">Diverse routines</a>.</li>
</ul>

<p>Bixoft's Klassieke Assembler voorbeelden:</p>
<ul>
 <li>Voorbeeld <a href="samppgm.htm#bxaio">Static glue module</a>.
</li>
 <li>Voorbeeld <a href="samppgm.htm#bxaio00">Dynamic VSAM I/O module
</a>.</li>
</ul>

<p>Bixoft's eXtended Assembly voorbeelden:</p>
<ul>
 <li>Voorbeeld <a href="samppgm.htm#bxalowpg">Dummy programma</a>.
</li>
 <li>Voorbeeld <a href="samppgm.htm#bxamaps">Overzicht van control
  block velden</a>.</li>
 <li>Voorbeeld <a href="samppgm.htm#bxatest">Controleer een JCL
 variabele</a>.</li>
 <li>Voorbeeld <a href="samppgm.htm#bxacopy">Kopieer een dataset of
  member</a>.</li>
 <li>Voorbeeld <a href="samppgm.htm#bxaunld">Converteer een
  bibliotheek</a>.</li>
</ul>

/HTML

         HTMLDEF SAMPLES.NLF
<!-- NL -->
<p class="footer" align="center">
 Deze tekst is geschreven door A.F. Kornelis, vertaald door
 A.F. Kornelis.<br/>
 Tekst en vertaling: &copy; Copyright A.F. Kornelis, 2003. Alle
 rechten voorbehouden.<br />
 <a href="mailto:abe@bixoft.nl">e-mail</a> de auteur.</p>

/HTML
