         HTMLDEF BOTLNECK.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/botlneck.htm -->
<!-- -->
<title>Bixoft - Solutions for 3GL-bottlenecks</title>
<link rel="shortcut icon"
      href="../images/bixoft.ico" type="image/x-icon" />
<link rev="Bixoft introduction / sitemap" href="intro.htm" />
<link rel="Bixoft design of assembler programs" href="design.htm" />
<meta http-equiv="keywords"    
      content="Assembler, Programming, Mainframe, 3GL-bottlenecks" />
<meta http-equiv="description" 
      content="About solutions for 3GL-bottlenecks on mainframes by
      Bixoft using assembler." />
<meta http-equiv="robots"      
      content="index,follow" />
/HTML

         HTMLDEF BOTLNECK.UKT
<!-- UK -->
<h1 align="center">Solutions for 3GL-bottlenecks.</h1>

<p>Bixoft can help you search for a solution for a diversity of
 problems with
 your 3GL or 4GL. For clarification some examples.</p>

<ul>
 <li>Locking problems.<br />
  Some applications suffer from deadlock or lockout. Bixoft is not
 only capable
  of tracing the cause and remedying it, we also can help you to
  formulate
  coding-standards to prevent these problems from recurring in the
  future.<br />
  &nbsp;<br /></li>
 <li><a name="concurrent" id="concurrent">Concurrent</a> access to
  several datasets.<br />
  It is very well possible to access records from different datasets
  (or from a
  single dataset) concurrently. Not all 3GLs, however, offer adequate
  facilities
  for such concurrent access. Bixoft can help you build the required
  programs.
  It is also possible to build a generator for programs that
  facilitate
  concurrent access on datasets.<br />
  &nbsp;<br /></li>
 <li>Speed up crucial parts.<br />
  Bixoft can help you to speed up your programs. Possible options to
  achieve
  this are:
  <ul>
   <li>Parallel execution of I/O.<br />
    See above: <a href="#concurrent">Concurrent access to several
    datasets</a>.</li>
   <li>Spawn subtasks.<br />
    By spawning subtasks more things can be done in parallel. This 
    may
    achieve
    considerable reduction in response times.</li>
   <li>Optimize code.<br />
    Heavily used routines can be rewritten such, that they run optimal
    under
    the most frequently occurring conditions.</li>
   <li>More efficient distribution of code over page frames.<br />
    Frequently used and infrequently used code segments should as much
    as possible
    be gathered into separate page frames. This helps to minimize the
    number of
    page faults.<br />
    &nbsp;<br />
   </li>
  </ul>
 </li>
 <li>Parry errors.<br />
  Your application should under no circumstance abend. Yet abends do
  happen.
  By applying an assembler-shell these abends can be prevented.<br />
  For more information please refer to the topic
  '<a href="design.htm">Design</a>'.
  Refer specifically to the subtopic
  '<a href="design.htm#failsafe">Failsafe mechanisms</a>'.<br />
  &nbsp;<br /></li>
 <li>Compatibility.<br />
  By applying compatibility-modules you can shield parts of your
  application
  from changes in other parts of the application. By building backward
  compatibility into the compatibility-module you can reduce your
  maintenance
  projects greatly in size.<br />
  For more information please refer to the topic
  '<a href="design.htm">Design</a>'.
  Refer specifically to the subtopic
  '<a href="design.htm#compatibility">Compatibility modules</a>'.</li>
</ul>

/HTML

         HTMLDEF BOTLNECK.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/botlneck.htm -->
<!-- -->
<title>Bixoft - Oplossen 3GL-problemen</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft introductie / sitemap" href="intro.htm" />
<link rel="Bixoft ontwerp van assembler programma's"
      href="design.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe, 3GL-problemen" />
<meta http-equiv="description"
      content="Uitleg over het oplossen van 3GL-problemen op
      mainframes mbv assembler." />
<meta http-equiv="robots"      content="index,follow" />
/HTML

         HTMLDEF BOTLNECK.NLT
<!-- NL -->
<h1 align="center">Oplossen 3GL-problemen.</h1>

<p>Bixoft kan u helpen met het zoeken naar een oplossing voor diverse
 problemen
 met uw 3GL of 4GL. Een aantal voorbeelden ter verduidelijking.</p>

<ul>
 <li>Locking problemen.<br />
  Met name deadlock en/of lockout kunnen nog wel eens voorkomen in
  applicaties.
  Bixoft kan u niet alleen helpen de oorzaak te traceren en te
  verhelpen, ook
  kunnen wij codeer-normen aandragen om herhaling in de toekomst te
  voorkomen.<br />
  &nbsp;<br /></li>
 <li><a name="concurrent" id="concurrent">Gelijktijdig</a>
  meerdere datasets.<br />
  Het is heel goed mogelijk om records uit diverse datasets (of uit
  een enkele
  dataset) gelijktijdig te benaderen. Echter, niet alle 3GLs bieden
  hiervoor
  voldoende faciliteiten. Bixoft kan u helpen de hiervoor benodigde
  programma's
  te bouwen. Ook is het mogelijk een generator te bouwen voor
  programma's die
  faciliteiten bieden voor het gelijktijdig benaderen van meerdere
  datasets.<br />
  &nbsp;<br /></li>
 <li>Versnellen van cruciale onderdelen.<br />
  Bixoft kan u helpen uw programmatuur te versnellen. Mogelijke opties
  hierbij
  zijn:
  <ul>
   <li>Parallel uitvoeren van I/O-handelingen.<br />
    Zie hierboven: <a href="#concurrent">Gelijktijdig benaderen
    meerdere
    datasets</a>.</li>
   <li>Subtaken afsplitsen.<br />
    Door subtaken af te splitsen kunnen meer zaken parallel worden
    uitgevoerd. Dit
    kan behoorlijk schelen in de doorlooptijd c.q. responstijd.</li>
   <li>Code optimaliseren.<br />
    Veel gebruikte routines zodanig herschrijven, dat
    geoptimaliseerd worden
    voor het meest voorkomende gebruik.</li>
   <li>Code effici&euml;nter verdelen over page frames.<br />
    Veel gebruikte en weinig gebruikte code zoveel mogelijk in
    gescheiden page
    frames onderbrengen, zodat het aantal page faults wordt
    geminimaliseerd.</li>
  </ul><br />
  &nbsp;<br /></li>
 <li>Fout-ondervanging.<br />
  Uw applicatie mag onder geen beding abenden. Toch gebeurt dat soms.
  Middels
  een assembler-schil kan dat voorkomen worden.<br />
  Meer hierover bij het onderwerp
  '<a href="design.htm">Ontwerp</a>'.
  Zie met name het punt
  '<a href="design.htm#failsafe">Failsafe mechanismen</a>'.<br />
  &nbsp;<br /></li>
 <li>Compatibility.<br />
  Door het gebruik van compatibility-modules schermt u delen van uw
  applicatie
  af van wijzigingen in andere delen van uw applicatie. Door backward
  compatibility in het compatibility-module in te bouwen, kunt u uw
  onderhoudsprojecten enorm in omvang reduceren.<br />
  Meer hierover bij het onderwerp
  '<a href="design.htm">Ontwerp</a>'.
  Zie met name het punt
  '<a href="design.htm#compatibiliteit">Compatibility-modules</a>'.
 </li>
</ul>

/HTML
