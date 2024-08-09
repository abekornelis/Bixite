         HTMLDEF SAMPPGM.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/samppgm.htm -->
<!-- -->
<title>Bixoft - Examples of assembler programs</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft introduction / sitemap" href="intro.htm" />
<link rel="Bixoft assembler program: static glue module"
      href="../goodies/bxaio.htm" />
<link rel="Bixoft assembler program: dynamic VSAM I/O module"
      href="../goodies/bxaio00.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe, Examples" />
<meta http-equiv="description"
      content="Examples of source code for mainframe assembler." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF SAMPPGM.UKT
<!-- UK -->
<h1 align="center">Examples of assembler code.</h1>

<p>This page contains the following sample programs:</p>
<ul>
 <li>Traditional assembler programs:
  <ul>
   <li><a href="#bxaio">Static glue module</a></li>
   <li><a href="#bxaio00">Dynamic VSAM I/O module</a></li>
  </ul>
 </li>
 <li>Assembler programs that make use of Bixoft's eXtended Assembly
  macro's:
  <ul>
   <li><a href="#bxalowpg">Dummy program, amode 24</a></li>
   <li><a href="#bxamaps">Generates overview of mapped control
    blocks</a>
   </li>
   <li><a href="#bxatest">Test a JCL variable</a></li>
   <li><a href="#bxacopy">Copy a dataset or a member</a></li>
   <li><a href="#bxaunld">Unload a library</a></li>
  </ul>
 </li>
</ul>

<p class="remark">
 Remark 1:<br />
 All samples on this page are no more than examples, and are in no
 way
 guaranteed to be free of errors or omissions. You may use (parts of)
 these
 code-samples, but it remains in all aspects your own responsibility
 to
 test your programs.</p>

<p class="remark">
 Remark 2:<br />
 All comments in the code samples are in english. Comments in your
 sources
 can of course be in any language you choose. We recommend that you
 use
 the language most commonly used in your firm. The same holds of
 course
 for all other kinds of documentation as well.</p>

/HTML

         HTMLDEF SAMPPGM.UK1
<!-- UK -->
<h3><a name="bxaio" id="bxaio">Static glue module.</a></h3>

<p>In order to build a miniature DataBase Manager (DBMS) we employed
 the
 following premises:</p>
<ul>
 <li>Split the logic into a static module with minimal functionality
  and a dynamic part that will effect the translation between logical
  and
  physical record lay-outs For each logical record lay-out the dynamic
  module may support several versions.</li>
 <li>The version of a logical record lay-out to be used will be
  determined
  by the entry-point - there will be 1 entry-point in the static
  module for
  each logical record lay-out (view in SQL terminology).</li>
 <li>The static part will be linked into each calling load module,
  and will
  determine the version number of each logical record lay-out. Thus,
  whenever
  an application is to start using a newer version of a logical record
  lay-out,
  a newer version of the static module will have to be linked with it.
 </li>
 <li>Inverting this logic implies that whenever the physical structure
  of the
  database (the underlying physical datasets) is being changed, the
  applications
  need not be changed at all. They may continue their operation with
  the
  existing version of the static module, receiving from the dynamic
  module
  the logical records with the associated lay-out version number.</li>
 <li>The static module will be called with a single parameter. This
  parameter
  has the following lay-out:
  <ul>
   <li>CL2 function code</li>
   <li>CL1 return code</li>
   <li>CL15 key value for random access</li>
   <li>CLnnn content of the logical record</li>
  </ul>
 </li>
 <li>The static module adds a second parameter. This parameter
  contains
  the following fields:
  <ul>
   <li>AL4 pointer to working storage of the dynamic module</li>
   <li>CL2 version number of the logical record lay-out</li>
   <li>CL8 logical record selectors</li>
  </ul>
 </li>
 <li>The following codes have been defined for the function code
  field:
  <ul>
   <li>RS - Read Sequential</li>
   <li>RR - Read Random (by key)</li>
   <li>WS - reWrite Sequential</li>
   <li>WR - reWrite Random (by key)</li>
   <li>SK - Skip to specified key</li>
   <li>SN - Skip to specified key, then read Next record</li>
   <li>IR - Insert Random (by key)</li>
   <li>DR - Delete Random (by key)</li>
   <li>SI - open for Sequential Input</li>
   <li>RI - open for Random Input</li>
   <li>SU - open for Sequential Update</li>
   <li>RU - open for Random Update</li>
   <li>WN - reWrite current record, then read Next</li>
   <li>DN - Delete current record, then read Next</li>
   <li>SD - create a Snap-Dump</li>
  </ul>
 </li>
 <li>The following codes have been defined for the returncode field:
  <ul>
   <li>0 - everything ok</li>
   <li>1 - record not found (random processing) or end-of-file
    (sequential
    processing)</li>
   <li>2 - warning, problem solved, see joblog for details</li>
   <li>3 - programming error in application, see joblog for details
   </li>
   <li>4 - error during processing, see joblog for error encountered.
   <br />
    Processing probably cannot continue.</li>
   <li>5 - fatal error during processing, see joblog for error
    encountered.<br />
    Further processing is impossible.</li>
  </ul>
 </li>
</ul>

<p>View source code of program <a href="../goodies/bxaio.htm">BXAIO
</a>.</p>

/HTML

         HTMLDEF SAMPPGM.UK2
<!-- UK -->
<h3><a name="bxaio00" id="bxaio00">Dynamic VSAM I/O module.</a></h3>

<p>For a short description of the design please refer to the topic
 above:
 <a href="#bxaio">static glue module</a>.</p>

<p>View source code of program <a href="../goodies/bxaio00.htm">
 BXAIO00</a>.</p>

/HTML

         HTMLDEF SAMPPGM.UK3
<!-- UK -->
<h3><a name="bxalowpg" id="bxalowpg">Dummy program in amode 24.</a>
</h3>

<p>This program issues a message to show that it was invoked correctly.
 The program runs in amode 24, and has no useful function. This
 program
 was written to test the GLUE macro and it can be used as a sample or
 skeleton program.</p>

<p>View source code of program <a href="../goodies/bxalowpg.htm">
 BXALOWPG</a>.</p>

/HTML

         HTMLDEF SAMPPGM.UK4
<!-- UK -->
<h3><a name="bxamaps" id="bxamaps">Overview of control blocks.</a>
</h3>

<p>This program has no run-time function. It is used to generate
 overviews
 of fields in control blocks and to check that no conflicts are
 created in
 the naming of fields.</p>

<p>The control blocks to be generated can be selected by changing the
 value
 of the assembly-variabele &amp;SELECT.</p>

<p>View source code of program <a href="../goodies/bxamaps.htm">
 BXAMAPS</a>.</p>

/HTML

         HTMLDEF SAMPPGM.UK5
<!-- UK -->
<h3><a name="bxatest" id="bxatest">Check the value of a JCL-variable.
</a></h3>

<p>This program checks the value of a JCL-variable.</p>

<p>The check to be performed is to be supplied in the PARM-field of
 the EXEC-statement.<br />
 The syntax is as follows:</p>
<ul>
 <li>operand 1</li>
 <li>operator (EQ or NE)</li>
 <li>operand 2</li>
</ul>

<p>The program ends with a return code 0 (check evaluates as true) or
 4 (check false).
 Other steps in the job can be executed or skipped depending upon
 these return codes.</p>

<p>The following example shows how program BXATEST can be used in a
 JCL proc:</p>

<pre>
//BXAASM   PROC MEMB=,PROJ=,LVL=
//*
//TEST     EXEC PGM=BXATEST,PARM='&amp;LVL EQ T'
//PROD     EXEC PGM=BXATEST,PARM='&amp;LVL EQ P'
//*
//* Invoke assembler, using default parms for TEST
//*
//         IF   (TEST.RC = 0) THEN
//ASMT     EXEC PGM=ASMA90,PARM=(OBJECT,NODECK,TERM,
//             'SYSPARM(SRLIST,DBG,OPT)')
//SYSLIB   DD   DSN=SYS1.MACLIB,DISP=SHR
//         DD   DSN=SYS1.MODGEN,DISP=SHR
//         DD   DSN=BIXOFT.ASMPLUS&amp;LVL..MACLIB,DISP=SHR
//         DD   DSN=BIXOFT.ASMPLUSP.MACLIB,DISP=SHR
//         DD   DSN=BIXOFT.&amp;PROJ.&amp;LVL..MACLIB,DISP=SHR
//         DD   DSN=BIXOFT.&amp;PROJ.P.MACLIB,DISP=SHR
//...      Other DD-statements
//         ENDIF
//*
//* Invoke assembler, using default parms for PROD
//*
//         IF   (PROD.RC = 0) THEN
//ASMP     EXEC PGM=ASMA90,PARM=(OBJECT,NODECK,TERM,
//             'SYSPARM(SRLIST,NODBG,OPT)')
//SYSLIB   DD   DSN=SYS1.MACLIB,DISP=SHR
//         DD   DSN=SYS1.MODGEN,DISP=SHR
//         DD   DSN=BIXOFT.ASMPLUS&amp;LVL..MACLIB,DISP=SHR
//         DD   DSN=BIXOFT.&amp;PROJ.&amp;LVL..MACLIB,DISP=SHR
//...      Other DD-statements
//         ENDIF
//*
//         PEND
</pre>

<p>View source code of program <a href="../goodies/bxatest.htm">
 BXATEST</a>.</p>

/HTML

         HTMLDEF SAMPPGM.UK6
<!-- UK -->
<h3><a name="bxacopy" id="bxacopy">Copy a dataset or a member.</a>
</h3>

<p>This program will copy a member from a PDS concatenation or a
 physical
 sequential dataset concatenation.</p>

<ul>
 <li>Input:
  <ul>
   <li>JCL-parm specifying 'MEMBER=memname' or 'DATSET=PS'</li>
   <li>INPUT dd-statement giving the input dataset(s)</li>
  </ul>
 </li>
 <li>Output:
  <ul>
   <li>OUTPUT dd-statement specifying the dataset to be created</li>
  </ul>
 </li>
</ul>

<p>For MEMBER=memname the INPUT concatenation of PDS'es will be
 searched
 for the specified member, which will then be copied to OUTPUT.<br />
 For DATSET=PS the INPUT concatenation of physical sequential files
 will
 be copied to OUTPUT.</p>

<p>IEBCOPY does more, but needs control cards for its input, which
 cannot
 be substituted from JCL variables.<br />
 IEHLIST will also copy datasets, but it also lists all records,
 filling up the spool.</p>

<p>The following example shows how program BXACOPY can be used in a
 JCL proc:</p>

<pre>
//BXAASM   PROC MEMB=,PROJ=,LVL=
//*
//* Copy source member to be used
//*
//COPY     EXEC PGM=BXACOPY,PARM='MEMBER=&amp;MEMB'
//INPUT    DD   DSN=BIXOFT.&amp;PROJ.&amp;LVL..ASM,DISP=SHR
//         DD   DSN=BIXOFT.&amp;PROJ.P.ASM,DISP=SHR
//OUTPUT   DD   SPACE=(TRK,(10,10,1),RLSE),DISP=(NEW,PASS,DELETE),
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=27920),
//             DSN=&amp;&amp;ASM(&amp;MEMB)
//*
//...      other steps
//         PEND
</pre>

<p>View source code of program <a href="../goodies/bxacopy.htm">
 BXACOPY</a>.</p>

/HTML

         HTMLDEF SAMPPGM.UK7
<!-- NL -->
<h3><a name="bxaunld" id="bxaunld">Unload a library.</a></h3>

<p>This program unloads all members of a PDS into a single
 IEBUPDTE-job which can be used to reload the library anywhere else.
<br />
 The program accepts a parameter, which specifies the step-name for
 the
 IEBUPDTE-job to be generated.</p>

<p>The advantage of using the IEBUPDTE format is that the source code
 can
 be browsed or edited under DOS, Windows and Unix as well.</p>

<p>The example below shows how BXAUNLD can be invoked.</p>

<pre>
//BXAUNLD  EXEC PGM=BXAUNLD,PARM='GOODIES'
//SYSUT1   DD   DSN=BIXOFT.GOODIES.ASM,DISP=OLD
//SYSUT2   DD   DSN=BIXOFT.GOODIES.UNLOAD,DISP=(NEW,CATLG,CATLG),
//             SPACE=(TRK,(10,10),RLSE),UNIT=3390,VOL=SER=TEMP00,
//             DCB=(LRECL=80,BLKSIZE=27920,RECFM=FB)
</pre>

<p>View source code of program <a href="../goodies/bxaunld.htm">
 BXAUNLD</a>.</p>

/HTML

         HTMLDEF SAMPPGM.UKL
<!-- UK -->
<p>Traditional Assembler examples:</p>
<ul>
 <li>Example of a <a href="#bxaio">Static glue module</a>.</li>
 <li>Example of a
  <a href="#bxaio00">Dynamic VSAM I/O module</a>.
 </li>
</ul>

<p>Bixoft's eXtended Assembly examples:</p>
<ul>
 <li>Example of a <a href="#bxalowpg">dummy program</a>.</li>
 <li>Example of an
  <a href="#bxamaps">overview of control block fields</a>.</li>
 <li>Example of a <a href="#bxatest">check of a JCL variable</a>.</li>
 <li>Example of a
  <a href="#bxacopy">copy (dataset or member) program</a>.</li>
 <li>Example of an <a href="#bxaunld">unload library program</a>.</li>
</ul>

/HTML

         HTMLDEF SAMPPGM.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/samppgm.htm -->
<!-- -->
<title>Bixoft - Voorbeelden van assembler programma's</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft introductie / sitemap" href="intro.htm" />
<link rel="Bixoft assembler programma: statisch glue module"
      href="../goodies/bxaio.htm" />
<link rel="Bixoft assembler programma: dynamisch VSAM I/O module"
      href="../goodies/bxaio00.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe, Voorbeelden" />
<meta http-equiv="description"
      content="Voorbeelden van mainframe assembler source-code." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF SAMPPGM.NLT
<!-- NL -->
<h1 align="center">Voorbeelden van assembler-code.</h1>

<p>Deze pagina bevat de volgende voorbeeld programma's:</p>
<ul>
 <li>Klassieke assembler programma's:
  <ul>
   <li><a href="#bxaio">Static glue module</a></li>
   <li><a href="#bxaio00">Dynamic VSAM I/O module</a></li>
  </ul>
 </li>
 <li>Assembler programma's die gebruik maken van Bixoft's
  eXtended Assembler macro's:
  <ul>
   <li><a href="#bxalowpg">Dummy programma, amode 24</a></li>
   <li><a href="#bxamaps">Overzicht van control block velden</a></li>
   <li><a href="#bxatest">Controleer een JCL variabele</a></li>
   <li><a href="#bxacopy">Kopieer een dataset of member</a></li>
   <li><a href="#bxaunld">Converteer een bibliotheek</a></li>
  </ul>
 </li>
</ul>

<p class="remark">
 Opmerking 1:<br />
 Alle voorbeelden op deze pagina zijn slechts voorbeelden, en onder
 voorbehoud
 van fouten en/of omissies. U mag (delen van) deze code gebruiken maar
 u doet
 dat volledig voor eigen risico. Het blijft natuurlijk altijd zaak uw
 programma's grondig te testen.</p>

<p class="remark">
 Opmerking 2:<br />
 Alle voorbeelden op deze pagina zijn volledig in het engels. Dit is
 gedaan
 om de volgende redenen:</p>
<ul>
 <li>De beschikbare ruimte op een source-regel is beperkt. Engelse
  teksten zijn
  meestal korter dan het nederlands-talige equivalent, en genieten
  daarom de
  voorkeur.</li>
 <li>Het jargon is nu eenmaal in het engels, door termen te vertalen
  wordt er
  onduidelijkheid geschapen in plaats van weggenomen. Mochten bepaalde
  termen
  u toch niet duidelijk zijn, schroom dan niet ons te e-mailen met uw
  vragen.</li>
 <li>Ten slotte is het engels in de praktijk de meest gebruikte taal
  voor
  commentaar in assembler-sources.</li>
</ul>

<p>Overigens wijzen wij er op, dat u voor alle commentaar in uw
 sources
 het best de taal kunt kiezen die in uw bedrijf het meest gangbaar is.
 Dit geldt natuurlijk ook voor alle overige vormen van documentatie.
</p>

/HTML

         HTMLDEF SAMPPGM.NL1
<!-- NL -->
<h3><a name="bxaio" id="bxaio">Static glue module.</a></h3>

<p>Ten einde een miniatuur DataBase Manager (DBMS) te bouwen zijn bij
 het
 ontwerp de volgende uitgangspunten gehanteerd:</p>
<ul>
 <li>Logica opsplitsen in een statisch module met minimale
  functionaliteit,
  en een dynamisch deel dat de vertaling tussen logische en fysieke
  record-indelingen voor zijn rekening neemt. Voor elke logische
  record-indeling
  kunnen meerdere versies ondersteund worden door het dynamische
  module.</li>
 <li>De te hanteren logische record-indeling wordt bepaald door het
  aangeroepen
  entry-point - er is 1 entry-point in het statisch module voor elke
  logische
  record-indeling (view in SQL terminologie).</li>
 <li>Het statische deel wordt onderdeel van elk aanroepend load
  module, en
  bepaalt het versienummer van elk logisch record. Wanneer de
  applicatie een
  nieuwere versie van een logische record indeling wil gaan gebruiken,
  dient dus
  een nieuwere versie van het statische module gelinkt te worden.</li>
 <li>Omgekeerdis het zo, dat wanneer de fysieke structuur van de
  database (de
  onderliggende fysieke bestanden) verandert, de applicaties niet
  aangepast
  hoeven te worden. Ze kunnen met de bestaande versie van het
  statische module
  blijven draaien, en krijgen van het dynamische module de logische
  records met
  het bijbehorende versienummer terug.</li>
 <li>Bij aanroep van het statische module geeft de applicatie een
  enkele
  parameter door. Deze parameter heeft de volgende lay-out:
  <ul>
   <li>CL2 functiecode</li>
   <li>CL1 returncode</li>
   <li>CL15 sleutelwaarde voor random benadering</li>
   <li>CLnnn inhoud van het logische record</li>
  </ul>
 </li>
 <li>Het statische module voegt een tweede parameter toe. Deze bevat
  de
  volgende velden:
  <ul>
   <li>AL4 pointer naar werkgeheugen van dynamisch module</li>
   <li>CL2 versienummer van logisch record</li>
   <li>CL8 logical record selectors</li>
  </ul>
 </li>
 <li>De volgende codes zijn gedefinieerd voor het functiecode-veld:
  <ul>
   <li>RS - Read Sequential</li>
   <li>RR - Read Random (by key)</li>
   <li>WS - reWrite Sequential</li>
   <li>WR - reWrite Random (by key)</li>
   <li>SK - Skip to specified key</li>
   <li>SN - Skip to specified key, then read Next record</li>
   <li>IR - Insert Random (by key)</li>
   <li>DR - Delete Random (by key)</li>
   <li>SI - open for Sequential Input</li>
   <li>RI - open for Random Input</li>
   <li>SU - open for Sequential Update</li>
   <li>RU - open for Random Update</li>
   <li>WN - reWrite current record, then read Next</li>
   <li>DN - Delete current record, then read Next</li>
   <li>SD - cre&euml;er een Snap-Dump</li>
  </ul>
 </li>
 <li>De volgende codes zijn gedefinieerd voor het returncode-veld:
  <ul>
   <li>0 - alles ok</li>
   <li>1 - record niet gevonden (random verwerking) of end-of-file
    (sequenti&euml;le verwerking)</li>
   <li>2 - waarschuwing, probleem opgelost, zie joblog voor details
 </li>
   <li>3 - programmeerfout in applicatie, zie joblog voor details</li>
   <li>4 - fout in de verwerking, zie joblog voor opgetreden fout.
 <br />
    Verwerking kan waarschijnlijk niet verder gaan.</li>
   <li>5 - fatale fout in de verwerking, zie joblog voor opgetreden
    fout.<br />
    Verdere verwerking is niet mogelijk.</li>
  </ul>
 </li>
</ul>

<p>Bekijk de source code van programma
<a href="../goodies/bxaio.htm">BXAIO</a>.</p>

/HTML

         HTMLDEF SAMPPGM.NL2
<!-- NL -->
<h3><a name="bxaio00" id="bxaio00">Dynamic VSAM I/O module.</a></h3>

<p>Voor een korte beschrijving van het ontwerp zie a.u.b. het
   hierboven
   beschreven <a href="#bxaio">static glue module</a>.</p>

<p>Bekijk de source code van programma
<a href="../goodies/bxaio00.htm">BXAIO00</a>.</p>

/HTML

         HTMLDEF SAMPPGM.NL3
<!-- NL -->
<h3><a name="bxalowpg" id="bxalowpg">Dummy program in amode 24.</a>
</h3>

<p>Dit programma geeft een bericht af om te tonen dat het correct is
 aangeroepen.
 Het programaa draait in amode 24, en heeft verder geen nuttige
 functie. Het
 programma is gemaakt om de GLUE macro te testen en het kan gebruikt
 worden
 als voorbeeld-programma.</p>

<p>Bekijk de source code van programma
 <a href="../goodies/bxalowpg.htm">BXALOWPG</a>.</p>

/HTML

         HTMLDEF SAMPPGM.NL4
<!-- NL -->
<h3><a name="bxamaps" id="bxamaps">Overzicht van control blocks.</a>
</h3>

<p>Dit programma heeft geen run-time functie. Het wordt gebruikt om
 overzichten
 aan te maken van velden in control blocks, en om te controleren of er
 geen
 conflicten ontstaan in de naamgeving van velden.</p>

<p>De te genereren control blocks kunnen geselecteerd worden door de
 waarde
 van de assembly-variabele &amp;SELECT te veranderen.</p>

<p>Bekijk de source code van programma
<a href="../goodies/bxamaps.htm">BXAMAPS</a>.</p>

/HTML

         HTMLDEF SAMPPGM.NL5
<!-- NL -->
<h3><a name="bxatest" id="bxatest">Test de waarde van een
 JCL-variabele.</a></h3>

<p>Dit programma controleert de waarde van een JCL-variabele.</p>

<p>De uit te voeren test wordt opgegeven in het PARM-veld van het
 EXEC-statement.<br />
 De syntax is als volgt:</p>
<ul>
 <li>operand 1</li>
 <li>operator (EQ of NE)</li>
 <li>operand 2</li>
</ul>

<p>Het programma geeft een return code van 0 (test voldoet) of 4
 (test voldoet niet).
 Andere steps in de zelfde job kunnen uitgevoerd of overgeslagen
 worden aan de
 hand van deze return codes.</p>

<p>Het volgende voorbeeld toont hoe het programma BXATEST gebruikt
   kan worden in een JCL proc:</p>

<pre>
//BXAASM   PROC MEMB=,PROJ=,LVL=
//*
//TEST     EXEC PGM=BXATEST,PARM='&amp;LVL EQ T'
//PROD     EXEC PGM=BXATEST,PARM='&amp;LVL EQ P'
//*
//* Aanroep assembler, met standaard parms voor TEST
//*
//         IF   (TEST.RC = 0) THEN
//ASMT     EXEC PGM=ASMA90,PARM=(OBJECT,NODECK,TERM,
//             'SYSPARM(SRLIST,DBG,OPT)')
//SYSLIB   DD   DSN=SYS1.MACLIB,DISP=SHR
//         DD   DSN=SYS1.MODGEN,DISP=SHR
//         DD   DSN=BIXOFT.ASMPLUS&amp;LVL..MACLIB,DISP=SHR
//         DD   DSN=BIXOFT.ASMPLUSP.MACLIB,DISP=SHR
//         DD   DSN=BIXOFT.&amp;PROJ.&amp;LVL..MACLIB,DISP=SHR
//         DD   DSN=BIXOFT.&amp;PROJ.P.MACLIB,DISP=SHR
//...      Overige DD-statements
//         ENDIF
//*
//* Aanroep assembler, met standaard parms voor PROD
//*
//         IF   (PROD.RC = 0) THEN
//ASMP     EXEC PGM=ASMA90,PARM=(OBJECT,NODECK,TERM,
//             'SYSPARM(SRLIST,NODBG,OPT)')
//SYSLIB   DD   DSN=SYS1.MACLIB,DISP=SHR
//         DD   DSN=SYS1.MODGEN,DISP=SHR
//         DD   DSN=BIXOFT.ASMPLUS&amp;LVL..MACLIB,DISP=SHR
//         DD   DSN=BIXOFT.&amp;PROJ.&amp;LVL..MACLIB,DISP=SHR
//...      Overige DD-statements
//         ENDIF
//*
//         PEND
</pre>

<p>Bekijk de source code van programma
<a href="../goodies/bxatest.htm">BXATEST</a>.</p>

/HTML

         HTMLDEF SAMPPGM.NL6
<!-- NL -->
<h3><a name="bxacopy" id="bxacopy">Kopieer een dataset of een member.
</a></h3>

<p>Dit programma kopieert een member van een PDS concatenatie of een
 concatenatie
 van sequenti&euml;le datasets.</p>

<ul>
 <li>Input:
  <ul>
   <li>JCL-parm met 'MEMBER=memname' of 'DATSET=PS'</li>
   <li>INPUT dd-statement met de input dataset(s)</li>
  </ul>
 </li>
 <li>Output:
  <ul>
   <li>OUTPUT dd-statement met de aan te maken dataset</li>
  </ul>
 </li>
</ul>

<p>Voor MEMBER=memname wordt de INPUT concatenatie van PDS'en
 afgezocht
 naar het opgegeven member, welke vervolgens wordt gekopieerd naar
 OUTPUT.<br />
 Voor DATSET=PS wordt de volledige concatenatie van sequenti&euml;le
 datasets
 gekopieerd van INPUT naar OUTPUT.</p>

<p>IEBCOPY doet meer, maar gebruikt control cards als input; deze
 kunnen niet
 gesubstitueerd worden vanuit JCL variabelen.<br />
 IEHLIST kopieert eveneens datasets, maar het drukt ook alle records
 af,
 waardoor de spool snel volloopt.</p>

<p>Het volgende voorbeeld toont hoe het programma BXACOPY gebruikt
   kan worden in een JCL proc:</p>

<pre>
//BXAASM   PROC MEMB=,PROJ=,LVL=
//*
//* Copy source member to be used
//*
//COPY     EXEC PGM=BXACOPY,PARM='MEMBER=&amp;MEMB'
//INPUT    DD   DSN=BIXOFT.&amp;PROJ.&amp;LVL..ASM,DISP=SHR
//         DD   DSN=BIXOFT.&amp;PROJ.P.ASM,DISP=SHR
//OUTPUT   DD   SPACE=(TRK,(10,10,1),RLSE),DISP=(NEW,PASS,DELETE),
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=27920),
//             DSN=&amp;&amp;ASM(&amp;MEMB)
//*
//...      andere steps
//         PEND
</pre>

<p>Bekijk de source code van programma
 <a href="../goodies/bxacopy.htm">BXACOPY</a>.</p>

/HTML

         HTMLDEF SAMPPGM.NL7
<!-- NL -->
<h3><a name="bxaunld" id="bxaunld">Een bibliotheek ontladen.</a></h3>

<p>Dit programma ontlaadt alle members van een PDS in een enkele
 IEBUPDTE-job waarmee de bibliotheek elders weer geladen kan worden.
<br />
 Het programma accepteert een parameter, deze specificeert de
 step-name voor
 de te genereren IEBUPDTE-job.</p>

<p>Het voordeel van het IEBUPDTE-formaat is dat de broncode ook onder
 DOS, Windows,
 en Unix zichtbaar gemaakt en gewijzigd kan worden.</p>

<p>Onderstaand voorbeeld toont hoe BXAUNLD kan worden aangeroepen.</p>

<pre>
//BXAUNLD  EXEC PGM=BXAUNLD,PARM='GOODIES'
//SYSUT1   DD   DSN=BIXOFT.GOODIES.ASM,DISP=OLD
//SYSUT2   DD   DSN=BIXOFT.GOODIES.UNLOAD,DISP=(NEW,CATLG,CATLG),
//             SPACE=(TRK,(10,10),RLSE),UNIT=3390,VOL=SER=TEMP00,
//             DCB=(LRECL=80,BLKSIZE=27920,RECFM=FB)
</pre>

<p>Bekijk de source code van programma
 <a href="../goodies/bxaunld.htm">BXAUNLD</a>.</p>

/HTML

         HTMLDEF SAMPPGM.NLL
<!-- NL -->
<p>Klassieke Assembler voorbeelden:</p>
<ul>
 <li>Voorbeeld <a href="#bxaio">Static glue module</a>.</li>
 <li>Voorbeeld <a href="#bxaio00">Dynamic VSAM I/O module</a>.</li>
</ul>

<p>Bixoft's eXtended Assembly voorbeelden:</p>
<ul>
 <li>Voorbeeld <a href="#bxalowpg">Dummy programma</a>.</li>
 <li>Voorbeeld <a href="#bxamaps">Overzicht van control block velden
</a>.</li>
 <li>Voorbeeld <a href="#bxatest">Controleer een JCL variabele</a>.
</li>
 <li>Voorbeeld <a href="#bxacopy">Kopieer een dataset of member</a>.
</li>
 <li>Voorbeeld <a href="#bxaunld">Converteer een bibliotheek</a>.
</li>
</ul>

/HTML
