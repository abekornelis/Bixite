         HTMLDEF MACLIB.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/maclib.htm -->
<!-- -->
<title>Bixoft - Macro library - Bixoft eXtended Assembly
 language</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft introduction / sitemap" href="intro.htm" />
<link rel="Bixoft Public License proposal" href="license.htm" />
<link rel="CPY macro" href="../asmplus/cpy.htm" />
<link rel="NTCR macro" href="../asmplus/ntcr.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe, Macro, Macros" />
<meta http-equiv="description"
      content="About Bixoft's extensions to the assembler language." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF MACLIB.UKT
<!-- UK -->
<h1 align="center">Bixoft eXtended Assembly language.</h1>

<p>Bixoft has built an extensive macro library, which facilitates
 structured programming, strong type checking and other enhancements,
 such as discovery of various types of programming errors during
 assembly.
 Because the implemented facilities are quite extensive we call our
 library
 Bixoft eXtended Assembly language.</p>

<p>Regretfully the complete description of Bixoft eXtended Assembly
 language
 is not yet ready for publication. We are currently working on a
 <a href="license.htm">public license</a>
 for our macro library. For the time being the following copyright
 notice applies:</p>

<hr class="short" width="50%" />

<p> &copy; Copyright B.V. Bixoft 1999-2001. All rights reserved.</p>

<p>This document contains confidential material and is supplied to you
 as is,
 without any warranty whatsoever. All or any of the macros mentioned
 may or
 may not work on your particular system or installation. It remains
 your own
 responsibility to test the programs generated with them.</p>

<p>Copying - by whatever means - prohibited.</p>

<hr class="short" width="50%" />

<p>As a preview we have included a short description of all macros
 supplied with Bixoft eXtended Assembly language. They have been
 divided into the following four categories:</p>
<ul>
 <li><a href="#extmnem">Extended Mnemonics</a></li>
 <li><a href="#asmdir">Assembler Directives</a></li>
 <li><a href="#pgmmacs">Programming Macros</a></li>
 <li><a href="#mapmacs">Mapping Macros</a></li>
</ul>

/HTML

         HTMLDEF MACLIB.UK1
<!-- UK -->

<h2><a name="extmnem" id="extmnem">
  Overview of BIXOFT extended mnemonics and their function.</a></h2>

<h3>Purpose</h3>

<p>The purpose of these macros is to make sources more readable, and
 to render
 the life of the programmer somewhat easier. All macros mentioned
 generate
 reenterable and refreshable code.</p>

<p>Readability and maintainability of your programs are improved by
 removing most
 branches from the source level. This reduces the number of unique
 labels the
 programmer has to invent. And we all know: the more labels and
 branches, the
 more errors while coding and problems with maintenance.</p>

<p>By providing these powerful instructions in an easy-to-understand
 intuitive
 format, mimicking that of the IBM-supplied instructions, the
 productivity of
 programmers can be quickly boosted while reducing the error-rate by
 removing
 many low-level details from the source level of your programs.</p>

<p>Several of the macros described in this section have the same name
 as
 IBM-supplied machine instructions. This is done on purpose: these
 macros
 replace the like-named instructions. Their syntax and semantics
 remain
 unchanged, guaranteeing both upward and downward compatability.</p>

<p>The macros mentioned in this section have been designed to conflict
 neither
 with SYS1.MACLIB nor with SYS1.MODGEN, so these macros may either be
 merged
 into one of your system macro libraries, or they can be concatenated
 with
 them in any order.</p>

<table class="maclib" border="0">
 <tr valign="top" align="left">
  <th>Macro Name</th>
  <th>Short Description</th>
 </tr>
/HTML

         HTMLDEF MACLIB.UK2
<!-- UK -->
<h2><a name="asmdir" id="asmdir">
  Overview of BIXOFT assembler directives and their function.</a></h2>

<h3>Purpose</h3>

<p>The purpose of these macros is to make sources more readable, and
 to render
 the life of the programmer somewhat easier. All macros mentioned
 generate
 reenterable and refreshable code.</p>

<p>Readability and maintainability of your programs are improved by
 taking some
 of the chores of programming out of the hands of the programmer. The
 error
 rate is further reduced by implementing stronger type checking than
 the
 assembler does itself, and by checking for violations of program
 structure
 logic.</p>

<p>By providing these powerful directives in an easy-to-understand
 intuitive
 format, mimicking that of the IBM-supplied directives, the
 productivity of
 programmers can be quickly boosted while reducing the error-rate by
 removing
 many low-level details from the source level of your programs.
 Due to compaction techniques the number of base registers required
 can be
 reduced, without a programming effort, freeing up registers for other
 uses.</p>

<p>Several of the macros described in this section have the same name
 as
 IBM-supplied assembler directives. This is done on purpose: these
 macros
 replace the like-named directives. Their syntax and semantics remain
 unchanged, guaranteeing both upward and downward compatability.</p>

<p>The macros mentioned in this section have been designed to conflict
 neither
 with SYS1.MACLIB nor with SYS1.MODGEN, so these macros may either be
 merged
 into one of your system macro libraries, or they can be concatenated
 with
 them in any order.</p>

<table class="maclib" border="0">
 <tr valign="top" align="left">
  <th>Macro Name</th>
  <th>Short Description</th>
 </tr>
/HTML

         HTMLDEF MACLIB.UK3
<!-- UK -->
<h2><a name="pgmmacs" id="pgmmacs">
  Overview of BIXOFT programming macros and their function.</a></h2>

<h3>Purpose</h3>

<p>The purpose of these macros is to make sources more readable, and
 to render
 the life of the programmer easier. All macros mentioned generate
 reenterable
 and refreshable code.</p>

<p>Readability and maintainability of your programs are improved by
 taking some
 of the chores of programming out of the hands of the programmer. The
 error
 rate is further reduced by implementing stronger type checking than
 the
 assembler does itself, and by checking for violations of program
 structure
 logic.</p>

<p>By providing these powerful macros in an easy-to-understand
 intuitive format,
 the productivity of programmers can be quickly boosted while reducing
 the
 error-rate by removing many low-level details from the source level
 of your
 programs. Due to compaction techniques the number of base registers
 required
 can be reduced, without a programming effort, freeing up registers
 for other
 uses.</p>

<p>The macros mentioned in this section have been designed to conflict
 neither
 with SYS1.MACLIB nor with SYS1.MODGEN, so these macros may either be
 merged
 into one of your system macro libraries, or they can be concatenated
 with
 them in any order.</p>

<table class="maclib" border="0">
 <tr valign="top" align="left">
  <th>Macro Name</th>
  <th>Short Description</th>
 </tr>
/HTML

         HTMLDEF MACLIB.UK4
<!-- UK -->
<h2><a name="mapmacs" id="mapmacs">
  Overview of BIXOFT mapping macros and their function.</a></h2>

<h3>Purpose</h3>

<p>The purpose of these macros is to make sources more readable, and
 to render
 the life of the programmer easier. All macros mentioned generate
 DSECTs only.</p>

<p>Readability and maintainability of your programs are improved by
 taking some
 of the chores of programming out of the hands of the programmer. The
 error
 the
 assembler does itself.</p>

<p>By providing these powerful macros in an easy-to-understand
 intuitive format,
 the productivity of programmers can be quickly boosted while reducing
 the
 error-rate by removing many low-level details from the source level
 of your
 programs.</p>

<p>The macros mentioned in this section have been designed to conflict
 neither
 with SYS1.MACLIB nor with SYS1.MODGEN, so these macros may either be
 merged
 into one of your system macro libraries, or they can be concatenated
 with
 them in any order.</p>

<p>The following table lists all control blocks that are currently
 mapped
 by Bixoft eXtended Assembly language. This means that named bits and
 values can be referenced in conditions without having to specify the
 base
 field name. Also these control blocks can be included into data
 areas
 using the DCL macro. It does <u>not</u> mean that the IBM-supplied
 mapping macros are being replaced, rather the macros in this section
 create a shell around them to add functionality as mentioned above.
</p>

<table class="maclib" border="0">
 <tr valign="top" align="left">
  <th>Control Block Acronym</th>
  <th>Mapping Macro</th>
  <th>Short Description</th>
 </tr>
/HTML

         HTMLDEF MACLIB.UKL
<!-- UK -->
<p>
 To <a href="#extmnem">Extended Mnemonics</a><br />
 To <a href="#asmdir">Assembler Directives</a><br />
 To <a href="#pgmmacs">Programming Macros</a><br />
 To <a href="#mapmacs">Mapping Macros</a><br />
</p>

/HTML

         HTMLDEF MACLIB.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/maclib.htm -->
<!-- -->
<title>Bixoft - Macro bibliotheek - Bixoft eXtended Assembly language
</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft introductie / sitemap" href="intro.htm" />
<link rel="Bixoft Public License voorstel" href="license.htm" />
<link rel="CPY macro" href="../asmplus/cpy.htm" />
<link rel="NTCR macro" href="../asmplus/ntcr.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe, Macro, Macros" />
<meta http-equiv="description"
      content="Uitleg over Bixoft's assembler uitbreidingen." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF MACLIB.NLT
<!-- NL -->
<h1 align="center">Bixoft eXtended Assembly language.</h1>

<p>Bixoft heeft een uitgebreide macro bibliotheek opgebouwd, waarmee
 gestructureerd programmeren, &quot;strong type checking&quot; en
 andere
 faciliteiten zoals het ontdekken van diverse soorten
 programmeer-fouten
 tijdens het assembleren worden ge&iuml;mplementeerd. Omdat de
 gerealiseerde
 faciliteiten tamelijk uitgebreid zijn, hebben we onze bibliotheek
 Bixoft eXtended Assembly language gedoopt.</p>

<p>Tot onze spijt is de volledige beschrijving van onze macro
 bibliotheek nog
 niet gereed voor publicatie. Wij werken thans aan een
 <a href="license.htm">public license</a>
 voor deze macro bibliotheek. Voorlopig werken wij nog met de volgende
 copyright notice:</p>

<!-- UK -->
<hr class="short" width="50%" />

<p>&copy; Copyright B.V. Bixoft 1999-2001. All rights reserved.</p>

<p>This document contains confidential material and is supplied to you
 as is,
 without any warranty whatsoever. All or any of the macros mentioned
 may or
 may not work on your particular system or installation. It remains
 your own
 responsibility to test the programs generated with them.</p>

<p>Copying - by whatever means - prohibited.</p>

<hr class="short" width="50%" />

<!-- NL -->
<p>Als voorproefje kunt u wel alvast kennis maken met een korte
 beschrijving
 van onze macro bibliotheek. De beschrijvingen zijn in het engels.
 De macro's zijn voor het gemak onderverdeeld in een viertal
 categorie&euml;n:</p>
<ul>
 <li><a href="#extmnem">Extended Mnemonics</a></li>
 <li><a href="#asmdir">Assembler Directieven</a></li>
 <li><a href="#pgmmacs">Macro's voor Gestructureerd Programmeren</a>
 </li>
 <li><a href="#mapmacs">Mapping Macro's</a></li>
</ul>

/HTML

         HTMLDEF MACLIB.NL1
<!-- NL -->
<h2><a name="extmnem" id="extmnem">Overzicht van BIXOFT extended
 mnemonics en
 hun functie.</a></h2>

<h3>Doelstelling</h3>

<p>Deze macro's hebben de bedoeling sources beter leesbaar te maken,
 en het
 leven van de programmeur ietwat te veraangenamen. Alle genoemde
 macro's
 genereren reenterable en refreshable code.</p>

<p>Leesbaarheid en onderhoudbaarheid van uw programma's worden
 verbeterd door
 het merendeel van de sprong-opdrachten op source-niveau weg te werken.
 Dit vermindert het aantal unieke labels dat de programmeur moet
 bedenken.
 We weten allemaal: hoe meer labels en sprong-opdrachten, hoe meer
 codeer-fouten en hoe meer problemen met onderhoud.</p>

<p>Door deze krachtinge instructies met makkelijk te begrijpen
 intu&iuml;tieve
 argumenten - die de door IBM geleverde instructies nabootsen - kan de
 productiviteit van programmeurs snel oplopen terwijl het aantal
 fouten
 vermindert, doordat veel details op source-niveau niet meer zichtbaar
 zijn.</p>

<p>Een aantal macro's in deze sectie hebben dezelfde naam als een door
 IBM vastgestelde machine-instructie. Dit is met opzet gedaan: de
 betreffende
 macro's vervangen de machine-instructie met dezelfde naam. De syntax
 en
 semantiek blijven ongewijzigd, waardoor compatibiliteit gewaarborgd
 is.</p>

<p>De namen van de macro's in deze sectie zijn zodanig gekozen, dat
 zij niet
 in conflict komen met bestaande macro's in SYS1.MACLIB of SYS1.MODGEN,
 zodat deze macro's opgenomen kunnen worden in &eacute;&eacute;n van
 uw
 systeem-bibliotheken, of zij kunnen in willekeurige volgorde worden
 geconcateneerd.</p>

<table class="maclib" border="0">
 <tr valign="top" align="left">
  <th>Macro Naam</th>
  <th>Korte Beschrijving</th>
 </tr>
/HTML

         HTMLDEF MACLIB.NL2
<!-- NL -->
<h2><a name="asmdir" id="asmdir">
  Overzicht van BIXOFT assembler directieven en hun functie.</a></h2>

<h3>Doelstelling</h3>

<p>Deze macro's hebben de bedoeling sources beter leesbaar te maken,
 en het
 leven van de programmeur ietwat te veraangenamen. Alle genoemde
 macro's
 genereren reenterable en refreshable code.</p>

<p>Leesbaarheid en onderhoudbaarheid van uw programma's worden
 verbeterd door
 de programmeur een aantal routine-klussen uit handen te nemen. Het
 aantal
 codeer-fouten wordt verder gereduceerd door een sterkere
 type-controle
 uit te voeren dan de assembler zelf pleegt te doen, en door te
 controleren
 of de logische programma-structuur niet wordt aangetast.</p>

<p>Door deze krachtinge directieven met makkelijk te begrijpen
 intu&iuml;tieve
 argumenten - die de door IBM geleverde directieven nabootsen - kan de
 productiviteit van programmeurs snel oplopen terwijl het aantal
 fouten
 vermindert, doordat veel details op source-niveau niet meer zichtbaar
 zijn.
 Door toepassing van een aantal compactie-technieken kan het aantal
 benodigde
 basis-registers worden gereduceerd, zonder programmeer-inspanning is
 vereist,
 waardoor meer registers beschikbaar komen voor andere toepassingen.
</p>

<p>Een aantal macro's in deze sectie hebben dezelfde naam als door
 IBM
 geleverde assembler directieven. Dit is met opzet gedaan: de
 betreffende
 macro's vervangen de overeenkomstige assembler directieven. De syntax
 en
 semantiek blijven ongewijzigd, waardoor compatibiliteit gewaarborgd
 is.</p>

<p>De namen van de macro's in deze sectie zijn zodanig gekozen, dat
 zij niet
 in conflict komen met bestaande macro's in SYS1.MACLIB of
 SYS1.MODGEN,
 zodat deze macro's opgenomen kunnen worden in &eacute;&eacute;n van
 uw
 systeem-bibliotheken, of zij kunnen in willekeurige volgorde worden
 geconcateneerd.</p>

<table class="maclib" border="0">
 <tr valign="top" align="left">
  <th>Macro Naam</th>
  <th>Korte Beschrijving</th>
 </tr>
/HTML

         HTMLDEF MACLIB.NL3
<!-- NL -->
<h2><a name="pgmmacs" id="pgmmacs">
 Overzicht van BIXOFT macro's voor gestructureerd programmeren en hun
 functie.</a></h2>

<h3>Doelstelling</h3>

<p>Deze macro's hebben de bedoeling sources beter leesbaar te maken,
 en het
 leven van de programmeur ietwat te veraangenamen. Alle genoemde
 macro's
 genereren reenterable en refreshable code.</p>

<p>Leesbaarheid en onderhoudbaarheid van uw programma's worden
 verbeterd door
 de programmeur een aantal routine-klussen uit handen te nemen. Het
 aantal
 codeer-fouten wordt verder gereduceerd door een sterkere
 type-controle
 uit te voeren dan de assembler zelf pleegt te doen, en door te
 controleren
 of de logische programma-structuur niet wordt aangetast.</p>

<p>Door deze krachtinge macro's met makkelijk te begrijpen
 intu&iuml;tieve
 argumenten kan de productiviteit van programmeurs snel oplopen
 terwijl het
 aantal fouten vermindert, doordat veel details op source-niveau niet
 meer
 zichtbaar zijn. Door toepassing van een aantal compactie-technieken
 kan het
 aantal benodigde registers worden gereduceerd, zonder
 programmeer-inspanning
 is vereist, waardoor meer registers beschikbaar komen voor andere
 toepassingen.</p>

<p>De namen van de macro's in deze sectie zijn zodanig gekozen, dat
 zij niet
 in conflict komen met bestaande macro's in SYS1.MACLIB of
 SYS1.MODGEN,
 zodat deze macro's opgenomen kunnen worden in &eacute;&eacute;n van
 uw
 systeem-bibliotheken, of zij kunnen in willekeurige volgorde worden
 geconcateneerd.</p>

<table class="maclib" border="0">
 <tr valign="top" align="left">
  <th>Macro Naam</th>
  <th>Korte Beschrijving</th>
 </tr>
/HTML

         HTMLDEF MACLIB.NL4
<!-- NL -->
<h2><a name="mapmacs" id="mapmacs">
  Overzicht van BIXOFT mapping macro's en hun functie.</a></h2>

<h3>Doelstelling</h3>

<p>Deze macro's hebben de bedoeling sources beter leesbaar te maken,
 en het
 leven van de programmeur ietwat te veraangenamen. Alle genoemde
 macro's
 genereren uitsluitend DSECTs.</p>

<p>Leesbaarheid en onderhoudbaarheid van uw programma's worden
 verbeterd door
 de programmeur een aantal routine-klussen uit handen te nemen. Het
 aantal
 codeer-fouten wordt verder gereduceerd door een sterkere
 type-controle
 uit te voeren dan de assembler zelf pleegt te doen.</p>

<p>Door deze krachtinge macro's met makkelijk te begrijpen
 intu&iuml;tieve
 argumenten kan de productiviteit van programmeurs snel oplopen
 terwijl het
 aantal fouten vermindert, doordat veel details op source-niveau niet
 meer
 zichtbaar zijn.</p>

<p>De namen van de macro's in deze sectie zijn zodanig gekozen, dat
 zij niet
 in conflict komen met bestaande macro's in SYS1.MACLIB of SYS1.MODGEN,
 zodat deze macro's opgenomen kunnen worden in &eacute;&eacute;n van
 uw
 systeem-bibliotheken, of zij kunnen in willekeurige volgorde worden
 geconcateneerd.</p>

<p>Onderstaande tabel geeft alle control blokken weer, welke op dit
 moment
 door Bixoft eXtended Assembly language ondersteund worden. Dit
 betekent
 dat benoemde bits en waarden gerefereerd kunnen worden in condities
 zonder dat het onderliggende veld benoemd hoeft te worden. Ook
 kunnen
 deze control blokken opgenomen worden in data areas met behulp van
 de
 DCL macro. Het betekent <u>niet</u> dat de door IBM geleverde
 mapping
 macro's vervangen worden, maar dat de macro's in deze sectie een
 schil
 daar omheen vormen om de bovengenoemde functionaliteit de realiseren.
</p>

<table class="maclib" border="0">
 <tr valign="top" align="left">
  <th>Control Blok Acroniem</th>
  <th>Mapping Macro</th>
  <th>Korte Beschrijving</th>
 </tr>
/HTML

         HTMLDEF MACLIB.NLL
<!-- NL -->
<p>
 Naar <a href="#extmnem">Extended Mnemonics</a><br />
 Naar <a href="#asmdir">Assembler Directieven</a><br />
 Naar <a href="#pgmmacs">Macro's voor Gestructureerd Programmeren</a>
<br />
 Naar <a href="#mapmacs">Mapping Macro's</a>
</p>

/HTML
