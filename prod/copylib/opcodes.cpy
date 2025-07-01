         HTMLDEF OPCODES.CSS,CSSTYP=PRIVATE
<style type="text/css">
<!--
/* colors for original set */
.newx {
  background      : yellow;
  color           : black }
.obsx {
  background      : red;
  color           : black }
.oldx {
  background      : #000098;
  color           : white }
/* colors for horizontal stratification */
.bits {
  background      : magenta;
  color           : black }
.bool {
  background      : brown;
  color           : black }
.calc {
  background      : yellow;
  color           : black }
.char {
  background      : gray;
  color           : black }
.data {
  background      : blue;
  color           : black }
.flot {
  background      : green;
  color           : black }
.flow {
  background      : pink;
  color           : black }
.noop {
  background      : black;
  color           : white }
.othr {
  background      : white;
  color           : black }
.pack {
  background      : red;
  color           : black }
/* colors for vertical stratification */
.addx {
  background      : red;
  color           : black }
.band {
  background      : pink;
  color           : green }
.bior {
  background      : pink;
  color           : black }
.bxor {
  background      : pink;
  color           : blue }
.cmpl {
  background      : yellow;
  color           : red }
.comp {
  background      : yellow;
  color           : black }
.divx {
  background      : red;
  color           : yellow }
.else {
  background      : blue;
  color           : black }
.hlvx {
  background      : red;
  color           : green }
.jump {
  background      : blue;
  color           : white }
.ladr {
  background      : white;
  color           : magenta }
.lcmp {
  background      : white;
  color           : blue }
.lneg {
  background      : white;
  color           : black }
.load {
  background      : white;
  color           : red }
.lpos {
  background      : white;
  color           : green }
.ltst {
  background      : white;
  color           : yellow }
.mulx {
  background      : red;
  color           : blue }
.move {
  background      : green;
  color           : black }
.shft {
  background      : blue;
  color           : red }
.stor {
  background      : gray;
  color           : red }
.subx {
  background      : red;
  color           : white }
-->
</style>
/HTML

         HTMLDEF OPCODES.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/opcodes.htm -->
<!-- -->
<title>HLASM - Opcodes overview</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<link rev="HLASM Home Page"    href="hlasm.htm" />
<meta http-equiv="keywords"
      content="Mainframe, IBM, Opcodes, Instructions,
      Orthogonality" />
<meta http-equiv="keywords"
      content="MVS, OS/390, z/OS" />
<meta http-equiv="keywords"
      content="Assembly, High Level Assembler, HLASM" />
<meta http-equiv="description"
      content="Opcodes defined for IBM mainframes" />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF OPCODES.UKT
<!-- UK -->
<h1 align="center">High Level Assembler - Opcodes overview</h1>

<p>The first table below lists the opcodes in the original S/360 IBM
 mainframe
 processor implementation, including all dropped instructions and a
 selection
 of the instructions that were later added. The other two tables below
 list
 selected opcodes for current mainframe processors.<br />
 Colors have been added in these tables to show the changes in the
 design
 and - above all - the orthogonality of the basic design, which shows
 in
 both horizontal and vertical stratification.<br />
 A legend is provided below each table.</p>

<p>Both selection and categorization (in the second and third tables)
 have
 been done by the author; no involvement by IBM is implied in any way.
 The
 selection of opcodes is the same for all three tables, except that
 the first
 table contains some opcodes that have been omitted from the other
  two.
 However, the opcodes not shown are mainly those that are rarely
 used,
 and did not fit in very well with horizontal stratification. Thus,
 the
 exceptions - caused by additions after the original design of the
 the
 early 1960s was implemented - are much more apparent in the vertical
 stratification.</p>

<p>The first table shows the complete <a href="#original">original
 set</a>,
 including instructions that were later dropped. It also shows all
 instructions present in the other two tables.</p>

<p>The second table shows <a href="#horizontal">horizontal
 stratification</a>,
 which organizes instructions mainly by data type. It is easy to see
 that
 many of the newer instructions have been added in positions that are
 consistent with the existing stratification. However, some of the
 newer
 instructions appear to have been placed at randomly chosen positions.
 Not many of these exceptions appear in the table; this results
 (partly)
 from the way I constructed the table.</p>

<p>The third table shows <a href="#vertical">vertical
 stratification</a>,
 which organizes instructions mainly by type of operation. The
 background
 colors signify the type of operation, and the text color further
 distinguishes the type of operation, e.g., a white background
  designates
 load-type operations, green text is for load-negative opcodes, black
 text
 is for load-positive operations, etc.</p>

<p>In the third table it is much more clearly visible that IBM has
 tried
 to insert new opcodes in an appropriate position, when one was
 available.
 Nevertheless, quite a few of the newer opcodes appear in seemingly
 random
 positions.</p>

<p>The table shows a few noteworthy implementation details. The first
 is that
 some instructions skip over a few lines, e.g., the and-instructions
 appear
 on lines 1, 5, 9 and D which are all four lines apart.</p>

<p>The second detail is that even though this table is designed to
 show the
 vertical stratification, some of the horizontal stratification is
 still
 visible, e.g. the branch-on-index and the shifting instructions on
 line 8.</p>

/HTML

         HTMLDEF OPCODES.UK1
<!-- UK -->
<h2><a name="original" id="original">
  Original Implementation.</a></h2>

/HTML

         HTMLDEF OPCODES.UK2
<!-- UK -->
<h3>Legend</h3>

<dl compact="compact">
 <dt class="noop">Black without text</dt>
 <dd>Not assigned</dd>
 <dt class="oldx">Blue with White text</dt>
 <dd>Instructions in original set, still valid</dd>
 <dt class="obsx">Red with Black text</dt>
 <dd>Instructions in original set, no longer valid</dd>
 <dt class="newx">Yellow with Black text</dt>
 <dd>New instructions, not in original set</dd>
</dl>

/HTML

         HTMLDEF OPCODES.UK3
<!-- UK -->
<h2><a name="horizontal" id="horizontal">
  Horizontal Stratification.</a></h2>

/HTML

         HTMLDEF OPCODES.UK4
<!-- UK -->
<h3>Legend</h3>

<dl compact="compact">
 <dt class="noop">Black without text</dt>
 <dd>Not assigned / Not Shown</dd>
 <dt class="data">Blue with Black text</dt>
 <dd>Moving Data</dd>
 <dt class="bool">Brown with Black text</dt>
 <dd>Boolean Logic</dd>
 <dt class="flot">Green with Black text</dt>
 <dd>Floating point Operations</dd>
 <dt class="char">Grey with Black text</dt>
 <dd>Character Operations</dd>
 <dt class="bits">Magenta with Black text</dt>
 <dd>Bit Operations</dd>
 <dt class="flow">Pink with Black text</dt>
 <dd>Program Flow Control</dd>
 <dt class="pack">Red with Black text</dt>
 <dd>Packed Operations</dd>
 <dt class="calc">Yellow with Black text</dt>
 <dd>Integer Calculus</dd>
 <dt class="othr">White with Black text</dt>
 <dd>Other Operations</dd>
</dl>

/HTML

         HTMLDEF OPCODES.UK5
<!-- UK -->
<h2><a name="vertical" id="vertical">
  Vertical Stratification.</a></h2>

/HTML

         HTMLDEF OPCODES.UK6
<!-- UK -->
<h3>Legend</h3>

<dl compact="compact">
 <dt class="noop">Black without text</dt>
 <dd>Not assigned / Not Shown</dd>
 <dt class="move">Green with black text</dt>
 <dd>Move-type operations</dd>
 <dt class="stor">Grey with red text</dt>
 <dd>Store-type operations</dd>
 <dt>Pink background</dt>
 <dd>Bitwise operations:
  <dl compact="compact">
   <dt class="band">Green text</dt>
   <dd>Bitwise and operations</dd>
   <dt class="bior">Black text</dt>
   <dd>Bitwise or (inclusive) operations</dd>
   <dt class="bxor">Blue text</dt>
   <dd>Bitwise exclusive-or operations</dd>
  </dl>
 </dd>
 <dt>Red background</dt>
 <dd>Algebraic operations:
  <dl compact="compact">
   <dt class="addx">Black text</dt>
   <dd>Add operations</dd>
   <dt class="subx">White text</dt>
   <dd>Subtract operations</dd>
   <dt class="mulx">Blue text</dt>
   <dd>Multiply operations</dd>
   <dt class="divx">Yellow text</dt>
   <dd>Divide operations</dd>
   <dt class="hlvx">Green text</dt>
   <dd>Halve operations</dd>
  </dl>
 </dd>
 <dt>White background</dt>
 <dd>Load-type operations:
  <dl compact="compact">
   <dt class="lpos">Green text</dt>
   <dd>Load positive operations</dd>
   <dt class="lneg">Black text</dt>
   <dd>Load negative operations</dd>
   <dt class="ltst">Yellow text</dt>
   <dd>Load and test operations</dd>
   <dt class="lcmp">Blue text</dt>
   <dd>Load complement operations</dd>
   <dt class="load">Red text</dt>
   <dd>Load operations</dd>
   <dt class="ladr">Magenta text</dt>
   <dd>Load-address operations</dd>
  </dl>
 </dd>
 <dt>Yellow background</dt>
 <dd>Compare-type operations:
  <dl compact="compact">
   <dt class="comp">Black text</dt>
   <dd>Compare operations</dd>
   <dt class="cmpl">Red text</dt>
   <dd>Compare logical operations</dd>
  </dl>
 </dd>
 <dt>Blue background</dt>
 <dd>&quot;Other&quot; operations:
  <dl compact="compact">
   <dt class="jump">White text</dt>
   <dd>Branching operations</dd>
   <dt class="shft">Red text</dt>
   <dd>Shifting operations</dd>
   <dt class="else">Black text</dt>
   <dd>All remaining operations</dd>
  </dl>
 </dd>
</dl>

/HTML

         HTMLDEF OPCODES.UKL
<!-- UK -->
<p>
 To the <a href="#original">original instruction set</a>.<br />
 To the <a href="#horizontal">horizontal stratification</a> overview.
<br />
 To the <a href="#vertical">vertical stratification</a> overview.
<br />
</p>

<p>
 To the <a href="hlasm.htm">English Homepage</a>.<br />
 To the <a href="../hlasm.htm">general Homepage</a>.
</p>

/HTML

         HTMLDEF OPCODES.UKF
<!-- UK -->
<p class="footer" align="center">
 This text was written by A.F. Kornelis<br/>
 &copy; Copyright: A.F. Kornelis, 2004. All rights reserved.<br />
 <a href="mailto:abe@bixoft.nl">e-mail</a> the author.</p>

/HTML

         HTMLDEF OPCODES.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/opcodes.htm -->
<!-- -->
<title>HLASM - Overzicht opcodes
</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<link rev="HLASM Home Page"    href="hlasm.htm" />
<meta http-equiv="keywords"
      content="Mainframe, IBM, Opcodes, Instructies,
      Orthogonaliteit" />
<meta http-equiv="keywords"
      content="MVS, OS/390, z/OS" />
<meta http-equiv="keywords"
      content="Assembly, High Level Assembler, HLASM" />
<meta http-equiv="description"
      content="Opcodes gedefinieerd voor IBM mainframes" />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF OPCODES.NLT
<!-- NL -->
<h1 align="center">High Level Assembler - Opcodes overzicht</h1>

<p>De eerste tabel hieronder toont de opcodes in de originele S/360
 IBM
 mainframe processor implementatie, inclusief alle vervallen
 instructies
 en een selectie van de instructies die later zijn toegevoegd.
 De andere twee tabellen tonen geselecteerde opcodes voor thans
 gangbare
 mainframe processoren.<br />
 De tabellen zijn van kleuren voorzien om zichtbaar te maken hoe het
 ontwerp
 is veranderd en - bovenal - de orthogonaliteit van het basis-ontwerp,
 hetgeen zich uit in zowel horizontale als verticale stratificatie.
<br />
 Een legenda vindt u onder elke tabel.</p>

<p>Zowel selectie als categorie-indeling (in de tweede en derde tabel)
 zijn
 van de hand van de auteur; geen enkele betrokkenheid van IBM wordt op
 welke
 wijze dan ook ge&iuml;mpliceerd. De selectie van opcodes is hetzelfde
 voor
 alle drie de tabellen, behalve dan dat de eerste tabel enkele opcodes
 bevat,
 welke in de andere twee zijn weggelaten. De niet getoonde opcodes
 zijn echter
 met name die, welke zelden gebruikt worden en bovendien niet goed
 passen in
 de horizontale stratificatie. Zodoende zijn de uitzonderingen -
 ontstaan door
 toevoegingen na de originele implementatie van het ontwerp uit de
 vroege
 1960er jaren - veel beter zichtbaar in de verticale stratificatie.
</p>

<p>De eerste tabel toont de complete <a href="#original">originele set
</a>,
 inclusief de instructies die later zijn vervallen. Zij toont ook
 alle
 instructies die getoont worden in de andere twee tabellen.</p>

<p>De tweede tabel toont de
 <a href="#horizontal">horizontale stratificatie</a>; deze organiseert
 de
 instructies voornamelijk naar het type van de data. Het is duidelijk
 zichtbaar, dat veel van de nieuwere instructies zijn toegevoegd op
 plaatsen
 die in overeenkomst waren met de bestaande stratificatie. Sommige
 instructies
 lijken echter op willekeurige posities geplaatst te zijn. Niet veel
 van deze
 uitzonderingen zijn zichtbaar in de tabel; dit resulteert (voor een
 groot
 deel) uit de manier waarop ik de tabel heb geconstrueerd.</p>

<p>De derde tabel toont de <a href="#vertical">verticale stratificatie
</a>;
 deze organiseert de instructies voornamelijk naar het soort bewerking.
 De achtergrond kleuren coderen voor het soort bewerking, de kleur van
 de
 tekst verzorgt een nadere verbijzondering. Een witte achtergrond
 bijvoorbeeld
 geeft alle bewerkingen aan welke gegevens uit het geheugen ophalen.
 Hierbij
 wordt voor alle load-negative opcodes groene tekst gebruikt, terwijl
 voor
 load-positive opcodes zwarte tekst wordt gebruikt, etc.</p>

<p>In de derde tabel is veel beter zichtbaar dat IBM gepoogd heeft
 nieuwe
 opcodes op een logische plek in te voegen, indien de betreffende plek
 nog
 beschikbaar was. Desalniettemin zijn er nogal wat nieuwere opcodes op
 schijnbaar willekeurige posities beland.</p>

<p>De tabel toont een aantal interessante details van de implementatie.
 Ten eerste kunnen we zien dat een aantal bewerkingen steeds een
 aantal regels
 overslaan. Bijvoorbeeld de logische and-instructies vinden we op
 regels
 1, 5, 9, en D. Dat wil zeggen: er zitten steeds vier regels tussen.
</p>

<p>Het tweede detail is dat we in deze tabel de horizontale
 stratificatie nog
 deels terug zien komen, ondanks het feit dat de tabel is opgezet om
 juist de
 verticale stratificatie zichtbaar te maken. Zie met name de
 branch-on-index
 en de schuif-bewerkinge op regel 8.</p>

/HTML

         HTMLDEF OPCODES.NL1
<!-- NL -->

<h2><a name="original" id="original">
  Originele Implementatie.</a></h2>

/HTML

         HTMLDEF OPCODES.NL2
<!-- NL -->
<h3>Legenda</h3>

<dl compact="compact">
 <dt class="noop">Zwart zonder tekst</dt>
 <dd>Niet toegewezen</dd>
 <dt class="oldx">Blauw met witte tekst</dt>
 <dd>Instructies in de originele set, nog steeds geldig</dd>
 <dt class="obsx">Rood met zwarte tekst</dt>
 <dd>Instructies in de originele set, niet langer geldig</dd>
 <dt class="newx">Geel met zwarte tekst</dt>
 <dd>Nieuwe instructies, niet in de originele set</dd>
</dl>

/HTML

         HTMLDEF OPCODES.NL3
<!-- NL -->
<h2><a name="horizontal" id="horizontal">
  Horizontale Stratificatie.</a></h2>
/HTML

         HTMLDEF OPCODES.NL4
<!-- NL -->
<h3>Legenda</h3>

<dl compact="compact">
 <dt class="noop">Zwart zonder tekst</dt>
 <dd>Niet toegewezen / Nietgetoond</dd>
 <dt class="data">Blauw met zwarte tekst</dt>
 <dd>Verplaatsen van gegevens</dd>
 <dt class="bool">Bruin met zwarte tekst</dt>
 <dd>Boolean logica</dd>
 <dt class="flot">Groen met zwarte tekst</dt>
 <dd>Drijvende komman bewerkingen</dd>
 <dt class="char">Grijs met zwarte tekst</dt>
 <dd>Bewerkingen op character data</dd>
 <dt class="bits">Paars met zwarte tekst</dt>
 <dd>Bit bewerkingen</dd>
 <dt class="flow">Rose met zwarte tekst</dt>
 <dd>Programma logica</dd>
 <dt class="pack">Rood met zwarte tekst</dt>
 <dd>Packed-decimal bewerkingen</dd>
 <dt class="calc">Geel met zwarte tekst</dt>
 <dd>Rekenen met gehele getallen</dd>
 <dt class="othr">Wit met zwarte tekst</dt>
 <dd>Overige bewerkingen</dd>
</dl>

/HTML

         HTMLDEF OPCODES.NL5
<!-- NL -->
<h2><a name="vertical" id="vertical">
  Verticale Stratificatie.</a></h2>

/HTML

         HTMLDEF OPCODES.NL6
<!-- NL -->
<h3>Legenda</h3>

<dl compact="compact">
 <dt class="noop">Zwart zonder tekst</dt>
 <dd>Niet toegewezen / Niet getoond</dd>
 <dt class="move">Groen met zwarte tekst</dt>
 <dd>Bewerkingen die gegeven verplaatsen</dd>
 <dt class="stor">Grijs met rode tekst</dt>
 <dd>Bewerkingen die gegevens opslaan in het geheugen</dd>
 <dt>Rose achtergrond</dt>
 <dd>Bewerkingen op bits:
  <dl compact="compact">
   <dt class="band">Groene tekst</dt>
   <dd>Bitwise and bewerkingen</dd>
   <dt class="bior">Zwarte tekst</dt>
   <dd>Bitwise or (inclusief) bewerkingen</dd>
   <dt class="bxor">Blauwe tekst</dt>
   <dd>Bitwise exclusive-or bewerkingen</dd>
  </dl>
 </dd>
 <dt>Rode achtergrond</dt>
 <dd>Rekenkundige bewerkingen:
  <dl compact="compact">
   <dt class="addx">Zwarte tekst</dt>
   <dd>Optel-bewerkingen</dd>
   <dt class="subx">Witte tekst</dt>
   <dd>Aftrek-bewerkingen</dd>
   <dt class="mulx">Blauwe tekst</dt>
   <dd>Vermenigvuldigings-bewerkingen</dd>
   <dt class="divx">Gele tekst</dt>
   <dd>Deel-bewerkingen</dd>
   <dt class="hlvx">Groene tekst</dt>
   <dd>Halverings-bewerkingen</dd>
  </dl>
 </dd>
 <dt>Witte achtergrond</dt>
 <dd>Bewerkingen die gegevens laden:
  <dl compact="compact">
   <dt class="lpos">Groene tekst</dt>
   <dd>Load positive bewerkingen</dd>
   <dt class="lneg">Zwarte tekst</dt>
   <dd>Load negative bewerkingen</dd>
   <dt class="ltst">Gele tekst</dt>
   <dd>Load and test bewerkingen</dd>
   <dt class="lcmp">Blauwe tekst</dt>
   <dd>Load complement bewerkingen</dd>
   <dt class="load">Rode tekst</dt>
   <dd>Load bewerkingen</dd>
   <dt class="ladr">Paarse tekst</dt>
   <dd>Load adres bewerkingen</dd>
  </dl>
 </dd>
 <dt>Gele achtergrond</dt>
 <dd>Bewerkingen die gegevens vergelijken:
  <dl compact="compact">
   <dt class="comp">Zwarte tekst</dt>
   <dd>Vergelijkings-bewerkingen</dd>
   <dt class="cmpl">Rode tekst</dt>
   <dd>Logische vergelijkings-bewerkingen</dd>
  </dl>
 </dd>
 <dt>Blauwe achtergrond</dt>
 <dd>&quot;Overige&quot; bewerkingen:
  <dl compact="compact">
   <dt class="jump">Witte tekst</dt>
   <dd>Sprong-opdrachten</dd>
   <dt class="shft">Rode tekst</dt>
   <dd>Sschuif-bewerkingen</dd>
   <dt class="else">Zwarte tekst</dt>
   <dd>Alle overige bewerkingen</dd>
  </dl>
 </dd>
</dl>

/HTML

         HTMLDEF OPCODES.NLL
<!-- NL -->
<p>
 Naar de <a href="#original">originele instructie set</a>.<br />
 Naar de <a href="#horizontal">horizontale stratificatie</a>.<br />
 Naar de <a href="#vertical">verticale stratificatie</a>.<br />
</p>

<p>
 Naar de <a href="hlasm.htm">Nederlands-talige homepage</a>.<br />
 Naar de <a href="../hlasm.htm">algemene homepage</a>.
</p>

/HTML

         HTMLDEF OPCODES.NLF
<!-- NL -->
<p class="footer" align="center">
 Deze tekst is geschreven door Abe F. Kornelis<br/>
 &copy; Copyright: Abe F. Kornelis, 2004. Alle rechten voorbehouden.
<br />
 <a href="mailto:abe@bixoft.nl">e-mail</a> de auteur.</p>

/HTML

         HTMLDEF OPCODES.FRH
<!-- FR -->
<!-- -->
<!-- Sur le site http://www.bixoft.com/francais/opcodes.htm -->
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

         HTMLDEF OPCODES.FRT
<!-- FR -->
<h1 align="center">High Level Assembler - Opcodes overview</h1>

<p>The first table below lists the opcodes in the original S/360 IBM
 mainframe processor implementation, including all dropped instructions
 and a selection of the instructions that were later added. The other
 two tables below list selected opcodes for current mainframe
 processors.<br />
 Colors have been added in these tables to show the changes in the
 design and - above all - the orthogonality of the basic design, which
 shows in both horizontal and vertical stratification.<br />
 A legend is provided below each table.</p>

<p>Both selection and categorization (in the second and third tables)
 have been done by the author; no involvement by IBM is implied in any
 way. The selection of opcodes is the same for all three tables, except
 that the first table contains some opcodes that have been omitted from
 the other two. However, the opcodes not shown are mainly those that
 are rarely used, and did not fit in very well with horizontal
 stratification. Thus, the exceptions - caused by additions after the
 original design of the the early 1960s was implemented - are much more
 apparent in the vertical stratification.</p>

<p>The first table shows the complete
 <a href="#original">original set</a>,
 including instructions that were later dropped. It also shows all
 instructions present in the other two tables.</p>

<p>The second table shows
 <a href="#horizontal">horizontal stratification</a>,
 which organizes instructions mainly by data type. It is easy to see
 that many of the newer instructions have been added in positions that
 are consistent with the existing stratification. However, some of the
 newer instructions appear to have been placed at randomly chosen
 positions. Not many of these exceptions appear in the table; this
 results (partly) from the way I constructed the table.</p>

<p>The third table shows
 <a href="#vertical">vertical stratification</a>,
 which organizes instructions mainly by type of operation. The
 background colors signify the type of operation, and the text color
 further distinguishes the type of operation, e.g., a white background
 designates load-type operations, green text is for load-negative
 opcodes, black text is for load-positive operations, etc.</p>

<p>In the third table it is much more clearly visible that IBM has
 tried to insert new opcodes in an appropriate position, when one was
 available. Nevertheless, quite a few of the newer opcodes appear in
 seemingly random positions.</p>

<p>The table shows a few noteworthy implementation details. The first
 is that some instructions skip over a few lines, e.g., the
 and-instructions appear on lines 1, 5, 9 and D which are all four
 lines apart.</p>

<p>The second detail is that even though this table is designed to show
 the vertical stratification, some of the horizontal stratification is
 still visible, e.g. the branch-on-index and the shifting instructions
 on line 8.</p>

/HTML

         HTMLDEF OPCODES.FR1
<!-- FR -->
<h2><a name="original" id="original">
  Original Implementation.</a></h2>

/HTML

         HTMLDEF OPCODES.FR2
<!-- FR -->
<h3>Legend</h3>

<dl compact="compact">
 <dt class="noop">Black without text</dt>
 <dd>Not assigned</dd>
 <dt class="oldx">Blue with White text</dt>
 <dd>Instructions in original set, still valid</dd>
 <dt class="obsx">Red with Black text</dt>
 <dd>Instructions in original set, no longer valid</dd>
 <dt class="newx">Yellow with Black text</dt>
 <dd>New instructions, not in original set</dd>
</dl>

/HTML

         HTMLDEF OPCODES.FR3
<!-- FR -->
<h2><a name="horizontal" id="horizontal">
  Horizontal Stratification.</a></h2>

/HTML

         HTMLDEF OPCODES.FR4
<!-- FR -->
<h3>Legend</h3>

<dl compact="compact">
 <dt class="noop">Black without text</dt>
 <dd>Not assigned / Not Shown</dd>
 <dt class="data">Blue with Black text</dt>
 <dd>Moving Data</dd>
 <dt class="bool">Brown with Black text</dt>
 <dd>Boolean Logic</dd>
 <dt class="flot">Green with Black text</dt>
 <dd>Floating point Operations</dd>
 <dt class="char">Grey with Black text</dt>
 <dd>Character Operations</dd>
 <dt class="bits">Magenta with Black text</dt>
 <dd>Bit Operations</dd>
 <dt class="flow">Pink with Black text</dt>
 <dd>Program Flow Control</dd>
 <dt class="pack">Red with Black text</dt>
 <dd>Packed Operations</dd>
 <dt class="calc">Yellow with Black text</dt>
 <dd>Integer Calculus</dd>
 <dt class="othr">White with Black text</dt>
 <dd>Other Operations</dd>
</dl>

/HTML

         HTMLDEF OPCODES.FR5
<!-- FR -->
<h2><a name="vertical" id="vertical">
  Vertical Stratification.</a></h2>

/HTML

         HTMLDEF OPCODES.FR6
<!-- FR -->
<h3>Legend</h3>

<dl compact="compact">
 <dt class="noop">Black without text</dt>
 <dd>Not assigned / Not Shown</dd>
 <dt class="move">Green with black text</dt>
 <dd>Move-type operations</dd>
 <dt class="stor">Grey with red text</dt>
 <dd>Store-type operations</dd>
 <dt>Pink background</dt>
 <dd>Bitwise operations:
  <dl compact="compact">
   <dt class="band">Green text</dt>
   <dd>Bitwise and operations</dd>
   <dt class="bior">Black text</dt>
   <dd>Bitwise or (inclusive) operations</dd>
   <dt class="bxor">Blue text</dt>
   <dd>Bitwise exclusive-or operations</dd>
  </dl>
 </dd>
 <dt>Red background</dt>
 <dd>Algebraic operations:
  <dl compact="compact">
   <dt class="addx">Black text</dt>
   <dd>Add operations</dd>
   <dt class="subx">White text</dt>
   <dd>Subtract operations</dd>
   <dt class="mulx">Blue text</dt>
   <dd>Multiply operations</dd>
   <dt class="divx">Yellow text</dt>
   <dd>Divide operations</dd>
   <dt class="hlvx">Green text</dt>
   <dd>Halve operations</dd>
  </dl>
 </dd>
 <dt>White background</dt>
 <dd>Load-type operations:
  <dl compact="compact">
   <dt class="lpos">Green text</dt>
   <dd>Load positive operations</dd>
   <dt class="lneg">Black text</dt>
   <dd>Load negative operations</dd>
   <dt class="ltst">Yellow text</dt>
   <dd>Load and test operations</dd>
   <dt class="lcmp">Blue text</dt>
   <dd>Load complement operations</dd>
   <dt class="load">Red text</dt>
   <dd>Load operations</dd>
   <dt class="ladr">Magenta text</dt>
   <dd>Load-address operations</dd>
  </dl>
 </dd>
 <dt>Yellow background</dt>
 <dd>Compare-type operations:
  <dl compact="compact">
   <dt class="comp">Black text</dt>
   <dd>Compare operations</dd>
   <dt class="cmpl">Red text</dt>
   <dd>Compare logical operations</dd>
  </dl>
 </dd>
 <dt>Blue background</dt>
 <dd>&quot;Other&quot; operations:
  <dl compact="compact">
   <dt class="jump">White text</dt>
   <dd>Branching operations</dd>
   <dt class="shft">Red text</dt>
   <dd>Shifting operations</dd>
   <dt class="else">Black text</dt>
   <dd>All remaining operations</dd>
  </dl>
 </dd>
</dl>

/HTML

         HTMLDEF OPCODES.FRL
<!-- FR -->
<p>
 To the <a href="#original">original instruction set</a>.<br />
 To the <a href="#horizontal">horizontal stratification</a> overview.
 <br />
 To the <a href="#vertical">vertical stratification</a> overview.<br />
</p>

<p>
 To the <a href="hlasm.htm">English Homepage</a>.<br />
 To the <a href="../hlasm.htm">general Homepage</a>.
</p>

/HTML

         HTMLDEF OPCODES.FRF
<!-- FR -->
<p class="footer" align="center">
 Ce texte est &eacute;crit par A.F. Kornelis,
 traduit par Ren&eacute; Brandt.<br/>
 &copy; Copyright: A.F. Kornelis, 2004.
 Tous droits r&eacute;serv&eacute;s.<br />
 La traduction: &copy; Copyright: Ren&eacute; Brandt, 2004.
 Tous droits r&eacute;serv&eacute;s.<br />
 E-mail <a href="mailto:abe@bixoft.nl">l'auteur</a>
 ou <a href="mailto:rene.brandt1@libertysurf.fr">le traducteur</a>.</p>

/HTML
