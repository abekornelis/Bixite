         HTMLDEF OPCD00.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/opcd00.htm -->
<!-- -->
<title>HLASM - Opcodes overview</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<link rev="HLASM Home Page"   href="../hlasm.htm" />
<meta http-equiv="keywords"
      content="Mainframe, IBM, Opcodes, Instructions" />
<meta http-equiv="keywords"
      content="MVS, OS/390, z/OS" />
<meta http-equiv="keywords"
      content="Assembly, High Level Assembler, HLASM" />
<meta http-equiv="description"
      content="Opcodes defined for IBM mainframes" />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF OPCD00.UKT
<!-- UK -->
<h1 align="center">High Level Assembler - Opcodes overview</h1>

<p>The tables below list all documented opcodes for IBM mainframe
 processors.
 Each opcode links to a text section with some additional info on the
 pertinent
 opcode.</p>

<p class="remark">Special thanks:<br />
 to David Bond for his
 <a href="http://www.tachyonsoft.com/inst390m.htm">instruction
 lists</a> and
 <a href="http://www.tachyonsoft.com/inst390t.htm">tables</a>.<br />
 To Jan Jaeger for his
 <a href="http://www.cbttape.org/~jjaeger/opcodes.html">list of
 instructions
 not listed in IBM's Principles of Operation</a>.<br />
 And to Tom Harper for his willingness to share the results of his
 research on IBM patents relating to z/Architecture instructions.</p>

<h2>Opcode Assignments.</h2>

<p class="remark">Remark:<br />
 Please note that the creation of descriptions for all individual
 instructions
 is an ongoing process. As yet these descriptions have been created
 only for
 opcodes X'00' through X'0F'. The other opcode descriptions are to
 follow later.</p>

<p>This page contains the following three tables:<br/>
 <a href="#BSET">Base Set instructions</a>.<br />
 <a href="#OTHER">Other Instructions</a>.<br />
 <a href="#Directives">Assembler Directives</a>.</p>

/HTML

         HTMLDEF OPCD00.UK1
<!-- UK -->
<h3><a name="BSET" id="BSET">
 Base Set</a></h3>

<p>Entries with a slightly darker background are no longer supported
 on current mainframe hardware and/or not supported by IBM's current
 version
 of HLASM. The associated mnemonics are printed in italics.<br />
 Opcodes that have no (known) mnemonic assigned to them are denoted
 by their
 hexadecimal opcode; these are explained below the table.<br />
 Extension sets have no associated mnemonic. These are denoted by
 their opcode
 in hexadecimal notation. These link to additional opcode tables.</p>

<p>Please note that instructions X'00' thru X'3F' are register-only
 operations. Adding X'40' generally yields the opcode of the
 associated
 register-and-storage instruction.</p>

/HTML

         HTMLDEF OPCD00.UK2
<!-- UK -->
<h3><a name="OTHER" id="OTHER">
 Other Instructions</a></h3>

<p>Some instructions do not fit in the tables because their opcodes
 are currently
 unknown. Specifically this is the case for the instructions below.
 These are all either Coupling Facility (CF) instructions, or
 MicroCode (MC) instructions. We do know a few opcodes that have
 been assigned to Coupling Facility instructions, but we have not
 been able
 to link any of these to one of the instructions below.</p>

<p>For PXLO we know of various subfunctions, what we know has been
 included in the table. SYSOP, too, appears to support subfunctions,
 unfortunately, we have not been able to locate any details at
 all.</p>

<p>The empty slots indicate instructions that we have been able
 to associate with an opcode after all.</p>

/HTML

         HTMLDEF OPCD00.UK3
<!-- UK -->
<h3><a name="Directives" id="Directives">
 Assembler Directives</a></h3>

<p>Assembler directives have no opcodes associated with them.
 Therefore we list them in a separate table. Please see below.</p>

/HTML

         HTMLDEF OPCD00.UKL
<!-- UK -->
<p>
 To the <a href="#BSET">Base Set instructions</a>.<br />
 To the <a href="#OTHER">Other Instructions</a>.<br />
 To the <a href="#Directives">Assembler Directives</a>.</p>

/HTML

         HTMLDEF OPCD00.UKF
<!-- UK -->
<p class="footer" align="center">
 This page was written by A.F. Kornelis<br/>
 &copy; Copyright: A.F. Kornelis, 2003-2010. All rights reserved.
<br />
 <a href="mailto:abe@bixoft.nl">e-mail</a> the author.</p>

/HTML

         HTMLDEF OPCD00.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/opcd00.htm -->
<!-- -->
<title>HLASM - Overzicht opcodes</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<link rev="HLASM Home Page"    href="hlasm.htm" />
<meta http-equiv="keywords"
      content="Mainframe, IBM, Opcodes, Instructies" />
<meta http-equiv="keywords"
      content="MVS, OS/390, z/OS" />
<meta http-equiv="keywords"
      content="Assembly, High Level Assembler, HLASM" />
<meta http-equiv="description"
      content="Opcodes gedefinieerd voor IBM mainframes" />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF OPCD00.NLT
<!-- NL -->
<h1 align="center">High Level Assembler - Overzicht opcodes</h1>

<p>De tabel hieronder toont alle gedocumenteerde opcodes voor IBM
 mainframe
 processoren. Elke opcode verwijst naar een aparte pagina met meer
 informatie
 over de betreffende opcode.</p>

<h2>Toegewezen opcodes.</h2>

<p class="remark">Opmerking:<br />
 Realiseert u zich alstublieft dat het aanmaken van de beschrijvingen
 van alle
 individuele instructies een onvoltooid proces is. Op dit moment
 slechts
 de beschrijvingen gemaakt van opcodes X'00' tot en met X'0F'.
 Beschrijvingen
 voor de overige opcodes volgen later.</p>

/HTML

         HTMLDEF OPCD00.NL1
<!-- NL -->
<h3><a name="BSET" id="BSET">
 Base Set</a></h3>

<p>Elementen met een iets donkere achtergrond worden niet langer
 ondersteund op courante mainframe hardware en/of worden niet
 ondersteund door de huidige versie van IBM's HLASM.
 De betreffende mnemonics worden in schuinschrift weergegeven.<br />
 Opcodes waarvan geen mnemonic bekend is, zijn weergegeven met hun
 hexadecimale opcode; deze worden nader toegelicht onder de
 tabel.<br />
 Uitbreidingssets zijn niet geassocieerd aan een mnemonic. Deze
 worden aangeduid met hun opcode in hexadecimale notatie. Zij
 verwijzen naat additionele opcode tabellen.</p>

<p>Merk op dat instructies X'00' t/m X'3F' uitsluitend op registers
 werken. De opcode verhogen met X'40' geeft in veel gevallen de
 opcode van de bijbehorende register-en-geheugen instructie.</p>

/HTML

         HTMLDEF OPCD00.NL2
<!-- NL -->
<h3><a name="OTHER" id="OTHER">
 Overige Instructies</a></h3>

<p>Sommige instructies passen niet in de tabellen omdat hun
 opcodes (nog) niet bekend zijn. Dit is met name het geval voor
 de instructies hieronder. Dit zijn allemaal ofwel
 Coupling Facility (CF) instructies, ofwel MicroCode (MC)
 instructies. We kennen wel een paar opcodes die zijn toegewezen
 aan Coupling Facility instructies, maar die hebben we niet kunnen
 koppelen aan een van de instructies hieronder.</p>

<p>Voor PXLO kennen we verschillende subfuncties, wat we weten is
 in de tabel hieronder opgenomen. Ook SYSOP, schijnt subfuncties
 te kennen, maar daar hebben we helaas geen detail van kunnen
 achterhalen.</p>

<p>De lege plekken geven instructies aan, waarvan we toch nog
 de bijbehorende opcode hebben kunnen achterhalen.</p>

/HTML

         HTMLDEF OPCD00.NL3
<!-- UK -->
<h3><a name="Directives" id="Directives">
 Assembler Directives</a></h3>

<p>Assembler directives hebben geen opcodes.
 Daarom staan ze hier in een aparte tabel. Zie hieronder.</p>

/HTML

         HTMLDEF OPCD00.NLF
<!-- NL -->
<p class="footer" align="center">
 Deze tekst is geschreven door A.F. Kornelis, vertaald door
 A.F. Kornelis.<br/>
 Tekst en vertaling: &copy; Copyright A.F. Kornelis, 2003-2004.
 Alle rechten voorbehouden.<br />
 <a href="mailto:abe@bixoft.nl">e-mail</a> de auteur.</p>

/HTML

         HTMLDEF OPCD00.FRH
<!-- FR -->
<!-- -->
<!-- Sur le site http://www.bixoft.com/francais/opcd00.htm -->
<!-- -->
<title>HLASM - Opcodes overview</title>
<link rev="HLASM Home Page"   href="../hlasm.htm" />
<meta http-equiv="keywords"
      content="Mainframe, IBM, Opcodes, Instructions" />
<meta http-equiv="keywords"
      content="MVS, OS/390, z/OS" />
<meta http-equiv="keywords"
      content="Assembly, High Level Assembler, HLASM" />
<meta http-equiv="description"
      content="Opcodes defined for IBM mainframes" />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF OPCD00.FRT
<!-- FR -->
<h1 align="center">High Level Assembler - Opcodes overview</h1>

<p>The table below lists all documented opcodes for IBM mainframe
 processors. Each opcode links to a text section with some additional
 info on the pertinent opcode.</p>

<h2>Opcode Assignments.</h2>

<p class="remark">Remark:<br />
 Please note that the creation of descriptions for all individual
 instructions is an ongoing process. As yet these descriptions have
 been created only for opcodes X'00' through X'FF'. The other opcodes
 are to follow later.</p>

<h3>Base Set</h3>

<p>Entries with a slightly darker background are no longer supported
 on current mainframe hardware and/or not supported by IBM's current
 version of HLASM. The associated mnemonics are printed in italics.
 <br />
 Opcodes that have no (known) opcode assigned to them are denoted as
 asterisks; these are explained below the table.<br />
 Extension sets have no associated mnemonic. These are denoted by their
 opcode in hexadecimal notation. These link to additional opcode
 tables.</p>

/HTML

         HTMLDEF OPCD00.FR1
<!-- FR -->
<h3><a name="BSET" id="BSET">
 Base Set</a></h3>

<p>Entries with a slightly darker background are no longer supported
 on current mainframe hardware and/or not supported by IBM's current
 version
 of HLASM. The associated mnemonics are printed in italics.<br />
 Opcodes that have no (known) mnemonic assigned to them are denoted
 by their
 hexadecimal opcode; these are explained below the table.<br />
 Extension sets have no associated mnemonic. These are denoted by
 their opcode
 in hexadecimal notation. These link to additional opcode tables.</p>

<p>Please note that instructions X'00' thru X'3F' are register-only
 operations. Adding X'40' generally yields the opcode of the
 associated
 register-and-storage instruction.</p>

/HTML

         HTMLDEF OPCD00.FR2
<!-- FR -->
<h3><a name="OTHER" id="OTHER">
 Other Instructions</a></h3>

<p>Some instructions do not fit in the tables because their opcodes
 are currently
 unknown. Specifically this is the case for the instructions below.
 These are all either Coupling Facility (CF) instructions, or
 MicroCode (MC) instructions. We do know a few opcodes that have
 been assigned to Coupling Facility instructions, but we have not
 been able
 to link any of these to one of the instructions below.</p>

<p>For PXLO we know of various subfunctions, what we know has been
 included in the table. SYSOP, too, appears to support subfunctions,
 unfortunately, we have not been able to locate any details at
 all.</p>

<p>The empty slots indicate instructions that we have been able
 to associate with an opcode after all.</p>

/HTML

         HTMLDEF OPCD00.FR3
<!-- FR -->
<h3><a name="Directives" id="Directives">
 Assembler Directives</a></h3>

<p>Assembler directives have no opcodes associated with them.
 Therefore we list them in a separate table. Please see below.</p>

/HTML

         HTMLDEF OPCD00.FRF
<!-- FR -->
<p class="footer" align="center">
 Ce texte est &eacute;crit par A.F. Kornelis,
 traduit par Ren&eacute; Brandt.<br/>
 &copy; Copyright: A.F. Kornelis, 2003-2004.
 Tous droits r&eacute;serv&eacute;s.<br />
 La traduction: &copy; Copyright: Ren&eacute; Brandt, 2004.
 Tous droits r&eacute;serv&eacute;s.<br />
 E-mail <a href="mailto:abe@bixoft.nl">l'auteur</a>
 ou <a href="mailto:rene.brandt1@libertysurf.fr">le traducteur</a>.</p>

/HTML
