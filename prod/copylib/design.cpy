         HTMLDEF DESIGN.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/design.htm -->
<!-- -->
<title>Bixoft - Design of assembler-programs</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft introduction / sitemap" href="intro.htm" />
<link rev="Bixoft solutions for 3GL-problems" href="botlneck.htm" />
<link rev="Bixoft migration of assembler programs" href="migrate.
 htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe, Program design" />
<meta http-equiv="description"
      content="About designing assembler-programs for mainframes by
      Bixoft." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF DESIGN.UKT
<!-- UK -->
<h1 align="center">Design of assembler-programs.</h1>

<p>When making technical designs we usually emphasize the structure of
 the
 data to be handled (control block structure), and the segmentation of
 the
 programs to be realized.</p>

<p>Depending upon the level of knowledge and experience of those who
 are
 eventually to build the program, the level of detail subsequently
 will be
 more or less extensive. For the experienced programmer it will
 suffice to
 summarize the desired functionality per module and CSECT. For the
 less
 experienced ones it may be necessary to explicitly design the
 structure of
 each subroutine.</p>

<p>For you Bixoft can make a technical design for any of the following
 kinds
 of programs:</p>
<ul>
 <li>Non-reusable programs.<br />
  The usual kind of &quot;vanilla&quot; applications. For each
  invocation a
  fresh copy has to be brought into storage.</li>
 <li>Reusable programs.<br />
  These programs can be executed repeatedly though not at the same
  time. The
  program needs to be loaded only once.</li>
 <li>Reenterable programs.<br />
  These programs can be executed by several callers at the same time.
  Think
  e.g. of common routines in a multi-tasking application. Mainly,
  however,
  these programs are heavily used routines, placed in common storage.
  Such as
  exits (both of the operating system and of installed products) and
  SVC-routines.</li>
 <li>Refreshable programs.<br />
  During execution these programs can be replaced by a fresh copy.
  Only a
  limited number of SVC-routines need be refreshable. You will
  therefore not
  likely ever have anything to do with this kind of program.<br />
  <br /></li>
 <li><a name="failsafe" id="failsafe">Failsafe mechanisms.</a><br />
  For programs that should never abend, we can build a shell to catch
  all
  abends, and - whenever possible - repair them. All incidents will
  be
  reported to the controller through the joblog or through a separate
  error
  log. Because this is a shell, the application need not be changed.
 <br />
  <br /></li>
 <li>Callable services.<br />
  These can be all kinds of helper routines for your application. The
  services
  are activated simply by calling them. Callable services usually
  offer access
  to system resources, shielding the application programmer from all
  the
  resource's technical details. Another name for callable services is
  API
  (Application Programmer Interface).</li>
 <li><a name="compatibility" id="compatibility">Compatibility modules.
  </a>
  <br />
  This is a variant of the callable service. Compatibility modules are
  implemented such, that changes in functionality or technical details
  will
  not hamper your application. The compatibility module will take care
  of all
  required backward compatibility. Thus, the extent of your
  maintenance
  projects may be reduced considerably.</li>
 <li>Transparent conversions.<br />
  This is a variant of the compatibility module. Transparent
  conversions give
  your applications the ability to carry on with their work while you
  are
  converting your database. These programs can also be used to enable
  you
  to make a back-up while your application is running.</li>
</ul>

<p>The last three categories (callable services, compatibility
 modules, and
 transparent conversions) can be implemented as non-reusable,
 reusable,
 re-entrant, or even refreshable modules.</p>

<p>You can realise all this and even more with the help of
 experienced
 assembler programmers. And without any requirements regarding your
 current
 staff of application programmers!</p>

<p>That's why we advocate the prudent application of
  programs.
 Keeping always in mind, that whenever the target can be achieved by
 other
 means that must always be considered thoughtfully.</p>

/HTML

         HTMLDEF DESIGN.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/design.htm -->
<!-- -->
<title>Bixoft - Ontwerp van assembler-programmatuur</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft introductie / sitemap" href="intro.htm" />
<link rev="Bixoft oplossingen voor 3GL-problemen"
      href="botlneck.htm" />
<link rev="Bixoft conversie van assembler programma's"
      href="migrate.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe, Ontwerp, Ontwerpen,
      Programma-ontwerp" />
<meta http-equiv="description"
      content="Uitleg over ontwerp-werkzaamheden Bixoft inzake
      assembler voor mainframes." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF DESIGN.NLT
<!-- NL -->
<h1 align="center">Ontwerp van assembler-programmatuur.</h1>

<p>Bij het maken van technische ontwerpen leggen wij meestal de nadruk
 op de
 structuur van de te hanteren gegevens (control block structure), en
 op de
 segmentering van de te realiseren programma's.</p>

<p>Afhankelijk van het kennis- en ervaringsniveau van de beoogde
 bouwers kan de
 detaillering vervolgens meer of minder uitgebreid zijn. Voor een
 ervaren
 programmeur zal het voldoende zijn om de functionaliteit per module
 en CSECT
 aan te geven. Voor een onervaren kracht zal per subroutine nog de
 opzet
 gespecificeerd moeten worden.</p>

<p>Bixoft kan voor u een technisch ontwerp maken voor onder meer de
 volgende
 categorie&euml;n programmatuur:</p>
<ul>
 <li>Non-reusable programma's.<br />
  Dit zijn de meeste &quot;gewone&quot; applicaties. Voor elke aanroep
  moet een
  verse kopie in het geheugen worden geladen.</li>
 <li>Reusable programma's.<br />
  Dit zijn programma's die meerdere keren achtereen uitgevoerd kunnen
  worden,
  zonder dat een versie kopie uit de loadlib hoeft te worden opgehaald.
 </li>
 <li>Reenterable programma's.<br />
  Dit zijn programma's die door meerdere taken tegelijkertijd
  uitgevoerd
  kunnen worden. U kunt hierbij denken aan gemeenschappelijke routines
  in een
  multitasking applicatie. Maar u moet hierbij vooral denken aan zeer
  veel
  gebruikte routines, die in common storage geplaatst worden. Hier
  vallen ook
  de meeste exits (zowel van het operating system als van ge&iuml;
  nstalleerde
  produkten) en SVC-routines onder.</li>
 <li>Refreshable programma's.<br />
  Deze programma's kunnen tijdens de executie vervangen worden door
  een vers
  exemplaar. Slechts een beperkte categorie SVC-programma's dient
  refreshable te
  zijn. U zult hier dus normaliter niet mee te maken krijgen.<br />
  <br /></li>
 <li><a name="failsafe" id="failsafe">Failsafe mechanismen.</a><br />
  Voor programma's die niet mogen abenden kunnen we een schil bouwen,
  die alle
  abends afvangt en zo mogelijk herstelt. Verslaglegging tbv de
  beheerder
  gebeurt via de joblog of via een aparte error log. Omdat het om een
  schil gaat,
  hoeft u aan de betreffende applicatie niets te veranderen.<br />
  <br /></li>
 <li>Callable services.<br />
  Dit kunnen allerlei hulpdiensten voor uw applicatie zijn. De
  betreffende
  services kunnen worden aangeroepen door middel van calls. Meestal
  gaat het
  hierbij om het beschikbaar stellen van systeem-resources, waarbij
  de
  applicatie-programmeur wordt afgeschermd van alle technische details
  van de
  betreffende service. Een andere veel gebruikte term voor dit soort
  programma's is API (Application Programmer Interface).</li>
 <li><a name="compatibiliteit" id="compatibiliteit">
  Compatibility-modules.</a>
  <br />
  Dit is een variant op de callable service. Compatibility modules
  zijn
  zodanig ge&iuml;mplementeerd, dat bij wijziging in de
  functionaliteit en/of
  de technische implementatie de applicatie daar niets van merkt. Het
  compatibility module zorgt voor de backward compatibility. Dit kan
  de omvang
  van onderhoudsprojecten enorm reduceren.</li>
 <li>Transparante conversies.<br />
  Dit is weer een variant op de compatibility-module. Bij transparante
  conversies zorgen we ervoor dat uw applicaties gewoon kunnen
  doordraaien
  tijdens de uitvoering van database-conversies. Deze programmatuur
  kan er ook
  voor zorgen dat uw applicaties door kunnen draaien tijdens het maken
  van een
  back-up.</li>
</ul>

<p>De laatste drie categorie&euml;n (callable services, compatibility
 modules,
 en transparante conversies) kunnen weer worden ge&iuml;mplementeerd
 als
 non-reusable, reusable, reentrant of zelfs als refreshable modules.
 </p>

<p>Dit alles dus en zelfs nog veel meer kunt u realiseren met behulp
 van
 ervaren assembler-programmeurs. En dat alles zonder dat uw
 applicatie-programmeurs er iets bijzonders voor hoeven te doen!</p>

<p>Daarom propageren wij het met beleid toepassen van
 assembler-programmatuur.
 Maar met dien verstande dat daar waar het beoogde doel ook op een
 andere
 manier kan worden gerealiseerd, dat ook zeker overwogen moet worden.
 </p>

/HTML
