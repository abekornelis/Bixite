         HTMLDEF SAMPSNIP.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/sampsnip.htm -->
<!-- -->
<title>Bixoft - Examples of assembler programs</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft introduction / sitemap" href="intro.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe, Examples" />
<meta http-equiv="description"
      content="Examples of source code for mainframe assembler." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF SAMPSNIP.UKT
<!-- UK -->
<h1 align="center">Examples of assembler code.</h1>

<p>This page contains the following code snippets:</p>
<ul>
 <li><a href="#linkage">Standard subprogram linkage</a></li>
 <li><a href="#conditional">Conditional assembly</a></li>
 <li><a href="#self_modify">Self-modifying code</a></li>
 <li><a href="#reentrant">Reentrant processing of datasets</a></li>
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

<p>We would like to point out, superfluous though it may be, that
 standard
 register assignments are as follows:</p>
<table class="docenv">
 <tr>
  <th>Register</th>
  <th>Function</th>
 </tr>
 <tr>
  <td>Register 0</td>
  <td>Workregister, mainly used as a parameter</td>
 </tr>
 <tr>
  <td>Register 1</td>
  <td>Workregister, usually used as a pointer to a parameter-list or a
   result-field</td>
 </tr>
 <tr>
  <td>Registers 2-11</td>
  <td>Can be assigned freely within each program</td>
 </tr>
 <tr>
  <td>Register 12</td>
  <td>Base-register for addressing within the program</td>
 </tr>
 <tr>
  <td>Register 13</td>
  <td>Pointer to a free save-area</td>
 </tr>
 <tr>
  <td>Register 14</td>
  <td>Workregister, usually used for return addresses</td>
 </tr>
 <tr>
  <td>Register 15</td>
  <td>Workregister, used for subroutine-address or (upon return) the
   return-
   and reason-codes</td>
 </tr>
</table>

<p class="remark">
 Remark 1:<br />
 Even though register 0 can be used for storing addresses, it cannot
 be used
 to actually address data or program routines.</p>

<p class="remark">
 Remark 2:<br />
 The content of register 15, when used for return- and reason-codes,
 is as
 follows: X'00SSSRRR', the first byte always being zero, the next
 three nibbles
 (SSS) containing the reasoncode, and the last three nibbles (RRR)
 containing
 the returncode. Alternatively the reasoncode is often returned in
 register 0.</p>

/HTML

         HTMLDEF SAMPSNIP.UK1
<!-- UK -->
<h3><a name="linkage" id="linkage">Standard subprogram call.</a></h3>

<p>Even the most common way of calling a subprogram is being enforced.
 Yet it is
 advised to follow long-standing practices. It improves both
 readability and
 maintainability of your programs.
 The usual convention is:</p>
<ul>
 <li>When calling:
  <ul>
   <li>Register 0 contains a parameter (if needed)</li>
   <li>Register 1 contains the address of a parameter-list</li>
   <li>Register 13 contains the address of a save-area</li>
   <li>Register 14 contains the return-address</li>
   <li>Register 15 contains the entry-point address of the called
  program</li>
  </ul>
 </li>
 <li>Upon return:
  <ul>
   <li>Register 0 may or may not have been modified</li>
   <li>Register 1 contains the address (if applicable) of the results
 </li>
   <li>Register 2 through 14 unchanged</li>
   <li>Register 15 contains the return- and (when applicable) the
    reason-code</li>
  </ul>
 </li>
</ul>

<p>A save-area consists of 18 full-words (4 bytes each) and adheres
 to these
 rules:</p>
<table class="docenv">
 <tr align="left" valign="top">
  <th>Location</th>
  <th>Content</th>
 </tr> <tr>
  <td>X'00'</td>
  <td>Reserved for PL/I</td>
 </tr>
 <tr>
  <td>X'04'</td>
  <td>Pointer to previous save-area (i.e. register 13)</td>
 </tr>
 <tr>
  <td>X'08'</td>
  <td>Pointer to next save-area</td>
 </tr>
 <tr>
  <td>X'0C'</td>
  <td>Register 14</td>
 </tr>
 <tr>
  <td>X'10'</td>
  <td>Register 15</td>
 </tr>
 <tr>
  <td>X'14'</td>
  <td>Register 0</td>
 </tr>
 <tr>
  <td>etc.</td>
  <td>up to register 12</td>
 </tr>
</table>

<p>Three code-fragments follow:</p>
<ol>
 <li>The <a href="#samp1a">call of a subprogram</a>.</li>
 <li>A <a href="#samp1b">callable reusable program</a>.<br />
  This example can be used only for reusable and non-reusable
  programs,
  but not for reenterable or refreshable programs.</li>
 <li>A <a href="#samp1c">callable refreshable program</a>.<br />
  This example is meant for reenterable and refreshable programs.
  Of course
  it can be used as well for reusable and non-reusable programs.</li>
</ol>

/HTML

         HTMLDEF SAMPSNIP.UK2
<!-- UK -->
<h3><a name="conditional" id="conditional">Conditional assembly.</a>
</h3>

<p>The following example shows the application of conditional
 assembly. First
 a macro is shown, that tests the contents of the JCL-variable
 SYSPARM.
 By this means optimization of the program to be generated and
 inclusion of
 debugging code is triggered.<br />
 The macro sets two variables that can be tested throughout the
 program
 to generate code as desired. Some examples of such logic is given as
 well.
 Below please find the following four code fragments:</p>

<ol>
 <li>The <a href="#samp2a">macro</a> as described above.</li>
 <li>The <a href="#samp2b">invocation of the macro</a>.<br />
  This call assigns the global variables &amp;DBG and &amp;OPT their
  intended
  values.</li>
 <li>The <a href="#samp2c">use of these variables</a> to set other
  variables.<br />
  Here we demonstrate how the variable &amp;DBG can be used to steer
  the
  print-option.</li>
 <li>The <a href="#samp2d">direction of code-generation</a> using the
  variables.<br />
  Here we demonstrate how the optimization-option can be used in open
  code.</li>
</ol>

/HTML

         HTMLDEF SAMPSNIP.UK3
<!-- UK -->
<h3><a name="self_modify" id="self_modify">Self-modifying code.</a>
</h3>
<p>This example serves as an illustration only. Normally we would very
 strongly
 recommend never to implement self-modifying code because it renders
 your
 programs non-reenterable, and because it makes programs very hard to
 read
 and maintain.<br />
 Two code-fragments follow:</p>

<ol>
 <li>An <a href="#samp3a">initialization-routine</a>.<br />
  This routine is executed only once by changing the branch-condition
  at the
  start of the routine.</li>
 <li><a href="#samp3b">Printing in two columns</a>.<br />
  This example shows a very ugly solution for the two-column printing
  problem,
  which makes of changing the opcode of an instruction. The opcode is
  changed
  from SH to AH and vice versa, making the column pointer switch to
  and fro.<br />
  A much better solution would be to allocate a buffer, large enough
  to
  accommodate all lines for a page. Then one might fill all of the
  left column
  - top to bottom - before filling the rightmost column. Most
  end-users prefer
  such vertically listed information.</li>
</ol>

/HTML

         HTMLDEF SAMPSNIP.UK4
<!-- UK -->
<h3><a name="reentrant" id="reentrant">Reentrant dataset processing.
</a></h3>

<p>To process a VSAM dataset one needs both an ACB and an RPL.
 In the example below we show how to create an ACB and an RPL in a
 reentrant
 program. You may assume that all named storage locations have been
 allocated dynamically and that these are addressable by use of a
 DSECT.</p>

/HTML

         HTMLDEF SAMPSNIP.UKL
<!-- UK -->
<p>
 Example of a <a href="#linkage">standard subprogram call</a>.<br />
 Example of <a href="#conditional">conditional assembly</a>.<br />
 Example of <a href="#self_modify">self-modifying code</a>.<br />
 Example of <a href="#reentrant">reentrant dataset processing</a>.
</p>

/HTML

         HTMLDEF SAMPSNIP.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/sampsnip.htm -->
<!-- -->
<title>Bixoft - Assembler voorbeeld-fragmenten</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft introductie / sitemap" href="intro.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe, Voorbeelden" />
<meta http-equiv="description"
      content="Voorbeelden van mainframe assembler source-code." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF SAMPSNIP.NLT
<!-- NL -->
<h1 align="center">Voorbeelden van assembler-code.</h1>

<p>Deze pagina bevat de volgende code fragmenten:</p>
<ul>
 <li><a href="#linkage">Standaard subprogramma aanroep</a></li>
 <li><a href="#conditional">Conditional assembly</a></li>
 <li><a href="#self_modify">Self-modifying code</a></li>
 <li><a href="#reentrant">Reentrant dataset verwerking</a></li>
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

<p>Wellicht ten overvloede wijzen wij er op, dat de standaard register
 toewijzingen als volgt zijn ingedeeld:</p>
<table class="docenv">
 <tr>
  <th>Register</th>
  <th>Functie</th>
 </tr>
 <tr>
  <td>Register 0</td>
  <td>Werkregister, veelal gebruikt als parameter</td>
 </tr>
 <tr>
  <td>Register 1</td>
  <td>Werkregister, meestal pointer naar parameter-lijst of
  resultaat-veld</td>
 </tr>
 <tr>
  <td>Registers 2-11</td>
  <td>Vrij toe te wijzen binnen elk programma</td>
 </tr>
 <tr>
  <td>Register 12</td>
  <td>Basis-register voor adressering binnen het programma</td>
 </tr>
 <tr>
  <td>Register 13</td>
  <td>Pointer naar een vrije save-area</td>
 </tr>
 <tr>
  <td>Register 14</td>
  <td>Werkregister, gebruikt voor return-adres</td>
 </tr>
 <tr>
  <td>Register 15</td>
  <td>Werkregister, gebruikt voor subroutine-adres resp. return- en
  reasoncode</td>
 </tr>
</table>

<p class="remark">
 Opmerking 1:<br />
 Register 0 kan wel gebruikt worden om een adres in op te slaan,
 maar kan niet gebruikt worden om gegevens of routines te adresseren.
</p>

<p class="remark">
 Opmerking 2:<br />
 De indeling van register 15, wanneer die een return- en reasoncode
 bevat is als volgt: X'00SSSRRR' waarin de eerste byte dus nul is, de
 volgende
 drie nibbles (SSS) bevatten de reasoncode, en de laatste drie nibbles
 (RRR)
 bevatten de returncode. Als alternatief wordt ook veelvuldig de
 reasoncode
 teruggegeven in register 0.</p>

/HTML

         HTMLDEF SAMPSNIP.NL1
<!-- NL -->
<h3><a name="linkage" id="linkage">Standaard subprogramma aanroep.</a>
</h3>

<p>De gangbare wijze van aanroepen is niet dwingend voorgeschreven.
 Toch verdient
 het aanbeveling hieraan vast te houden. Het verhoogt de leesbaarheid
 en
 onderhoudbaarheid van de programmatuur.
 De conventie luidt als volgt:</p>
<ul>
 <li>Bij aanroep:
  <ul>
   <li>Register 0 bevat eventueel een parameter</li>
   <li>Register 1 bevat het adres van een parameter-lijst</li>
   <li>Register 13 bevat het adres van een save-area</li>
   <li>Register 14 bevat het return-adres</li>
   <li>Register 15 bevat het begin-adres van het aangeroepen
    programma</li>
  </ul>
 </li>
 <li>Bij terugkeer:
  <ul>
   <li>Register 0 kan gewijzigd zijn</li>
   <li>Register 1 bevat het adres (indien van toepassing) van de
    resultaten</li>
   <li>Register 2 t/m 14 zijn ongewijzigd</li>
   <li>Register 15 bevat de return- en eventueel reasoncode</li>
  </ul>
 </li>
</ul>

<p>Een save-area beslaat 18 full-words (van 4 bytes elk) en is als
 volgt
 ingedeeld:</p>
<table class="docenv">
 <tr align="left" valign="top">
  <th>Locatie</th>
  <th>Inhoud</th>
 </tr>
 <tr>
  <td>X'00'</td>
  <td>Gereserveerd voor PL/I</td>
 </tr>
 <tr>
  <td>X'04'</td>
  <td>Pointer naar vorige save-area (is dus register 13)</td>
 </tr>
 <tr>
  <td>X'08'</td>
  <td>Pointer naar volgende save-area</td>
 </tr>
 <tr>
  <td>X'0C'</td>
  <td>Register 14</td>
 </tr>
 <tr>
  <td>X'10'</td>
  <td>Register 15</td>
 </tr>
 <tr>
  <td>X'14'</td>
  <td>Register 0</td>
 </tr>
 <tr>
  <td>etc.</td>
  <td>t/m register 12</td>
 </tr>
</table>

<p>Hieronder volgen drie code-fragmenten:</p>
<ol>
 <li>De <a href="#samp1a">aanroep van een subprogramma</a>.</li>
 <li>Een <a href="#samp1b">aan te roepen reusable programma</a>.<br />
  Dit voorbeeld is alleen bruikbaar voor reusable en non-reusable
  programma's,
  dus niet voor reenterable en refreshable programma's.</li>
 <li>Een <a href="#samp1c">aan te roepen refreshable programma</a>.
<br />
  Dit voorbeeld is bedoeld voor reenterable en refreshable
  programma's, maar
  is dus ook bruikbaar voor reusable en non-reusable programma's.
</li>
</ol>

/HTML

         HTMLDEF SAMPSNIP.NL2
<!-- NL -->
<h3><a name="conditional" id="conditional">Conditional assembly.</a>
</h3>

<p>Als voorbeeld voor de toepassing van conditional assembly volgt
 hieronder
 een macro die de inhoud van de JCL-variabele SYSPARM aftest. Hiermee
 wordt
 gestuurd of het programma al dan niet geoptimaliseerd moet worden en
 of er
 al dan niet debugging code moet worden mee-gegenereerd.<br />
 De macro vult twee variabelen, die in de rest van de code kunnen
 worden
 afgetest om toepasselijke code te genereren. Ook hiervan volgen enige
 voorbeelden. Hieronder volgen vier code-fragmenten:</p>

<ol>
 <li>De hierboven beschreven <a href="#samp2a">macro</a>.</li>
 <li>De <a href="#samp2b">aanroep van de macro</a>.<br />
  Hierbij worden de globale variabelen &amp;DBG en &amp;OPT van een
  waarde
  voorzien.</li>
 <li>Het <a href="#samp2c">gebruik van de variabelen</a> om andere
  variabelen
  te sturen.<br />
  Hier laten we zien hoe de variabele &amp;DBG weer gebruikt kan
  worden om de
  print-optie te sturen.</li>
 <li>Het <a href="#samp2d">sturen van code-aanmaak</a> met behulp van
  de
  variabelen.<br />
  Hier laten we zien hoe de optimalisatie-optie gebruikt kan worden in
  open
  code.</li>
</ol>

/HTML

         HTMLDEF SAMPSNIP.NL3
<!-- NL -->
<h3><a name="self_modify" id="self_modify">Self-modifying code.</a>
</h3>
<p>Dit voorbeeld dient alleen als illustratie. In het algemeen raden
 wij ten
 zeerste af om self-modifying code toe te passen, omdat het uw
 programma's
 non-reentrant maakt en moeilijker te lezen en te onderhouden.<br />
 Hieronder volgen twee code-fragmenten:</p>

<ol>
 <li>Een <a href="#samp3a">initialisatie-routine</a>.<br />
  Deze wordt slechts een keer uitgevoerd door de branch-conditie
  aan het begin van de routine te veranderen.</li>
 <li><a href="#samp3b">Afdrukken in twee kolommen</a>.<br />
  Dit voorbeeld laat zien hoe je op een heel lelijke manier in twee
  kolommen kan afdrukken door de opcode van een instructie te
  veranderen.
  De opcode van de SH wordt veranderd in een AH en andersom, waardoor
  de
  regelpointer steeds van de ene naar de andere kolom verspringt.
<br />
  Een veel fraaiere oplossing is het cre&euml;ren van een buffer die
  groot genoeg
  is voor een hele pagina. Dan kun je bovendien eerst de linkerkolom
  helemaal
  van boven naar beneden vullen, en daarna pas de rechter. Voor de
  eindgebruiker
  is dit meestal veel prettiger.</li>
</ol>

/HTML

         HTMLDEF SAMPSNIP.NL4
<!-- NL -->
<h3><a name="reentrant" id="reentrant">Reentrant dataset verwerking.
</a></h3>

<p>Om een VSAM dataset te kunnen verwerken heb je een ACB en een RPL
 nodig.
 In het eerste en enige voorbeeld laten we zien hoe je in een
 reentrant
 programma een ACB en een RPL kunt cre&euml;ren. Voor dit voorbeeld
 mag u
 aannemen dat alle benoemde geheugen-lokaties dynamisch gealloceerd
 zijn en
 dat zij adresseerbaar zijn via een DSECT.</p>

/HTML

         HTMLDEF SAMPSNIP.NLL
<!-- NL -->
<p>
 Voorbeeld <a href="#linkage">standaard subprogramma aanroep</a>.<br />
 Voorbeeld <a href="#conditional">conditional assembly</a>.<br />
 Voorbeeld <a href="#self_modify">self-modifying code</a>.<br />
 Voorbeeld <a href="#reentrant">reentrant dataset verwerking</a>.
</p>

/HTML
