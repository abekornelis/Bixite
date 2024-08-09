         HTMLDEF WHY.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/why.htm -->
<!-- -->
<title>HLASM - Why assembler?</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<link rev="Bixoft introduction / sitemap" href="intro.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe" />
<meta http-equiv="description"
      content="About the pros and cons of using assembler for
      mainframes." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF WHY.UKT
<!-- UK -->
<h1 align="center">Why assembler?</h1>

<p>Using assembler as a programming language is not so popular any
 more.
 As a rule people prefer to use a third or fourth generation language.
 </p>

<p>Usually - for &quot;vanilla&quot; applications - this is absolutely
 right.
 There are however situations in which it is prudent to thoroughly
 weigh both
 the arguments for and against using assembler.</p>

<p>On the one hand are the arguments against the use of assembler in
 large part
 prejudicial, on the other hand are the arguments for the use of
 assembler
 relatively unknown. When you do know the
 <strong>prejudices</strong>
 against assembler without knowing the
 <strong>advantages</strong>,
 it becomes very hard
 indeed to take any objective decisions concerning the choice of
 programming
 language.</p>

<p>One rule remains important - as it does for
 <em>any</em>
 programming language:
 without well-trained people you'll never get anywhere, without proper
 documentation you'll end up not even knowing where you are.</p>

<p>Below you will find an overview of the most important
 <a href="#advantage">advantages</a>
 of assembler. Thereafter we will try to shade the
 <a href="#prejudice">prejudices</a>.
 We then end with a short
 <a href="#summary">summary</a>.</p>

/HTML

         HTMLDEF WHY.UK1
<!-- UK -->
<h3><a name="advantage" id="advantage">
  The advantages of assembler.</a></h3>

<p>Working with assembler offers you a range of capabilities, which
 are not (all)
 available for 3GL- of 4GL-programmers.</p>

<ul>
 <li>Parry errors.<br />
  How often does it happen your application falters over something
  ever so
  simple? A S0C7-abend because there were spaces, where zeros were
  expected?
  An intermediate dataset that was allocated just a little too small?
  With the
  help of a relatively simple assembler-routine these problems can be
  parried
  and solved. Your application no longer falters, it just keeps on
  running.
  All problems encountered are reported either in the joblog or in a
  separate
  error log, enabling the controller in command to take any required
  actions.</li>
 <li>Usage of memory above the 16MB-line.<br />
  Enterprises still can be found, that (are forced to) compile with
  Amode=24.
  By adding small assembler modules you can have your application
  programs run
  above the 16MB-line, easing the pressure on memory below the
  16MB-line where
  it is most severely felt.</li>
 <li>Dynamic memory management.<br />
  Programs that maintain data in tables, lists, or trees often do not
  know in
  advance how large these objects will have to grow. In assembler
  storage can be
  allocated and de-allocated dynamically, enabling you to grow or
  shrink your
  in-storage objects to the required size.</li>
 <li>Optimization.<br />
  State-of-the-art compilers certainly do generate efficient code.
  They cannot,
  however, decide which optimizing criterion is of primary importance
  in any
  one of your specific programs. Because a programmer does have
  knowledge of the
  structure of your application, he can make that decision. He may
  for example
  choose to reduce the risk of page-steal, making the program run
  faster and
  reducing the pressure on the paging subsystem.</li>
 <li>Usage of operating system facilities. Many such
  services are not available from high-level languages, or when they
  are available,
  the overhead incurred by the high-level language's invocation of
  these services
  largely overshadows the performance benefits one would otherwise
  enjoy.<br />
  Amongst others one might think of:
  <ul>
   <li>Data spaces.<br />
    Programs that need large amounts of working storage might well
    make use of data
    spaces. This reduces the need for allocating work datasets (which
    in turn
    reduces I/O) and at the same time saves on virtual storage within
    your own
    address space, reducing the risk of out-of-storage abends.</li>
   <li>Virtual look-aside facility.<br />
    VLF enables you to keep named data in virtual storage, outside of
    your own
    address space. For heavily used data that can be named
    (eg PDS-members in
    certain datasets) this can substantially reduce I/O-delays for
    your
    application.</li>
   <li>Concurrent access to several datasets.<br />
    When an application needs access to records from two or more
     datasets, these
    records can be read and/or written at the same time. It is even
    possible to
    access several records within a single dataset at the same time.
    This
    concurrency can save considerably on I/O-wait time, especially
    when the
    datasets involved are on different volumes.</li>
   <li>Subtasks.<br />
    By splitting one or subtasks off a task, that task can be sped up
    considerably.
    E.g. by eliminating the need to write data to a work-dataset. Or
    by leaving it
    to a subtask to create the required financial journal records,
    meaning that the
    sales-transaction itself can be handled that much faster.</li>
   <li>Reenterability.<br />
    By making heavily used program segments reenterable they can be
    placed in
    common storage (by preference above the 16MB-line of course).
    This means that
    all programs using that code can be executed more efficiently,
    because the
    chance of a page fault in such a piece of code is minimal.</li>
  </ul>
 </li>
</ul>

/HTML

         HTMLDEF WHY.UK2
<!-- UK -->
<h3><a name="prejudice" id="prejudice">
  The prejudices against assembler.</a></h3>

<p>There are several prejudices against working with assembler.
 The most
 important ones are:</p>
<ol>
 <li>In assembler structured programming is impossible.<br />
  This is untrue. In this area assembler actually offers more
  facilities than
  most 3GLs.</li>
 <li>Maintaining assembler programs is vastly more costly than
  maintaining 3GLs.<br />
  When 3GLs were introduced this may have been true. Now however,
  this statement
  is highly debatable.</li>
 <li>Assembler is a cumbrous language, and hard to learn.<br />
  Assembler is indeed a little less readable to the layman than e.g.
  Cobol.
  Such languages as C and C++ on the other hand are more difficult to
  master.</li>
</ol>

<dl compact="compact">
 <dt>Ad 1.</dt>
 <dd>In assembler structured programming is impossible.<br />
  Bringing structure into programs is first and foremost a matter
  of style and
  craftsmanship. If the programming language in use offers good
  facilities in
  this area, that can be an aid, but no more than that.
  <ul>
   <li>In the area of program segmentation assembler offers more
    possibilities
    than 3GLs: next to the usual making of subroutines or functions it
    is also
    possible in assembler to divide programs up into CSECTs, which in
    turn can be
    subdivided again into subroutines and/or functions.<br />
    On top of that, one can choose from a diversity of calling
    mechanisms. Amongst
    them are standard MVS-linkage through register 14, the linkage
    stack, or other
    calling mechanisms, with or without use of a jump-table.<br />
    For passing parameters finally, one can choose between pass by
    value, pass by
    reference, or a mixture of these.</li>
   <li>As far as loop-control is concerned, assembler offers
    facilities comparable
    with 3GLs: these are the so called branch on index and branch on
    count
    instructions. With the help of macros the facilities can be
    extended with
    more powerful instructions.</li>
   <li>Just like most 3GLs assembler features copying standard code
    from a
    library member into your programs.</li>
   <li>The macro-facility finally offers a wide variety for bringing
    structure
    into programs and for standardizing routinely occurring program
    constructs.
    By using conditional assembly it is always possible to optimize
    the code
    to be generated. Most 3GLs offer no comparable functionality.
   <br />
    &nbsp;<br />
   </li>
  </ul>
 </dd>
 <dt>Ad 2.</dt>
 <dd>Maintaining assembler programs is vastly more costly than
  maintaining 3GLs.<br />
  When 3GLs were first introduced there was a vast base of existing
  assembler programs. Because structured programming was a relatively
  new
  phenomenon in those days, these programs often left a lot to wish
  for as far
  as structure was concerned. In assembler - as in any other
  language - you can
  create as much or as little structure as you want. With all the
  usual
  consequences for their maintainability.<br />
  In assembler you do have more opportunities than in most 3GLs to
  make a mess
  of things. Thanks to the macro-facilities, however, you also do have
  a
  considerable number of extra options for bringing structure into
  your
  programs, as compared to other languages.<br />
  &nbsp;<br />
  Furthermore the matter of craftsmanship is of primary importance. A
  3GL-programmer also &quot;doing some assembler&quot; can never
  measure up to
  the professional assembler-programmer. The effects are measurable
  not only in
  the time required to get the job done, but also in the quality of
  the code
  produced. The main problem, then, is how to get experienced
  professionals
  on your team. A problem you will encounter anyhow, whichever the
  programming
  language of your choice may be, especially under current conditions.
 <br />
  &nbsp;<br />
  So, if we do want to make a fair comparison for required manpower
  between
  assembler and 3GLs, we will have to compare craftsmen with
  craftsmen, and we
  will also have to take the age of the programs (read: measure of
  structure)
  into account, as well as the quality of the available documentation.
 <br />
  &nbsp;<br />
  Our experience for new programs is, that you will need some 10 to
  20 percent
  extra manpower for working with assembler. When maintenance is
  concerned,
  the differences are too dependent on the availability of
  documentation and
  on the amount of structure in the programs to give any meaningful
  figure.<br />
  &nbsp;<br />
  An example: one of our customers owns both an assembler module,
  which was
  created by us, and a Cobol module. They both do exactly the same
  thing. For
  the last few modifications the assembler-programmer was ready in one
  day,
  whereas the Cobol-programmer needed a three days. Though this may
  seem
  exceptional, it proves that maintenance on assembler programs is not
  by
  definition more costly than maintenance on 3GL-programs.<br />
  &nbsp;<br /></dd>
 <dt>Ad 3.</dt>
 <dd>Assembler is a cumbrous language, and hard to learn.<br />
  If you are dependent on &quot;laymen&quot; you should certainly not
  choose to
  use assembler. As with any other language you would only be creating
  your own
  difficulties.<br />
  Of course there also are skilled craftsmen around. These do not
  only master
  the skills of assembler-programming, they also have a thorough
  knowledge of
  the macro-facilities the assembler-language offers. This enables us
  to code
  swiftly, efficiently, and neatly.</dd>
</dl>

/HTML

         HTMLDEF WHY.UK3
<!-- UK -->
<h3><a name="summary" id="summary">Summary.</a></h3>

<p>The arguments for and against the use of assembler can be
 summarized as
 follows:</p>
<ul>
 <li>Working with assembler takes a little more time, though not as
  much as
  people are wont to think.</li>
 <li>Assembler offers more facilities for structuring, even though
  lacking
  craftsmanship will bring on maintenance problems more easily.</li>
 <li>In assembler one has more possibilities for solving or preventing
  performance problems.</li>
 <li>It takes some extra effort to find or train professionals.</li>
</ul>

<p>Taking it all together, our standard advise is: do not use
 assembler when
 there is no need to. On the other hand, if you have good reasons to
 do so,
 don't shy away from it; assembler is not frightening. And if you do
 choose
 to use assembler, use it only for those modules that will benefit
 from it.
 The largest part of your application is probably best built in your
 favourite
 3GL of 4GL.</p>

<p>Lastly, for some applications it simply is impossible to use
 any language but assembler. This holds specifically for most exits.
<br />
 Not only the operating system, but also a good many standard products
 are
 endowed with exit points, to enable installations to adapt the
 software to
 their own requirements. For most exits coding in assembler is simply
 unavoidable. With the arguments given above this should (no longer)
 raise
 any insurmountable problems.</p>

/HTML

         HTMLDEF WHY.UKL
<!-- UK -->
<p>
 To <a href="#advantage">the advantages of assembler</a>.<br />
 To <a href="#prejudice">the prejudices against assembler</a>.<br />
 To the <a href="#summary">summary</a>.<br />
</p>

<p>
 To the <a href="hlasm.htm">English Homepage</a>.<br />
 To the <a href="../hlasm.htm">general Homepage</a>.
</p>

/HTML

         HTMLDEF WHY.UKF
<!-- UK -->
<p class="footer" align="center">
 This text was written by A.F. Kornelis<br/>
 &copy; Copyright: A.F. Kornelis, 1997-2003. All rights reserved.<br />
 <a href="mailto:abe@bixoft.nl">e-mail</a> the author.</p>

/HTML

         HTMLDEF WHY.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/why.htm -->
<!-- -->
<title>HLASM - Waarom assembler?</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<link rev="Bixoft introductie / sitemap" href="intro.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe" />
<meta http-equiv="description"
      content="Uiteenzetting van de voors en tegens van
      assembler-gebruik op mainframes." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF WHY.NLT
<!-- NL -->
<h1 align="center">Waarom assembler?</h1>

<p>Het gebruik van assembler als programmeertaal is niet populair
   meer. Over het
   algemeen geeft men de voorkeur aan derde of vierde generatie talen.
</p>

<p>Meestal - voor &quot;gewone&quot; applicaties - is dit volkomen
 terecht. Er zijn echter
 wel degelijk situaties, waarin het wijs is om de argumenten voor en
 tegen eens
 goed op een rij te zetten.</p>

<p>Niet alleen berusten de argumenten tegen het gebruik van assembler
 grotendeels
 op vooroordelen, ook zijn de argumenten voor het gebruik van
 assembler relatief
 onbekend. Wie de <strong>vooroordelen</strong> tegen assembler wel
 kent, maar
 de <strong>voordelen</strong> ervan niet, kan moeilijk een
 objectieve
 beslissing nemen ten aanzien van de taalkeuze.</p>

<p>Wel blijft natuurlijk altijd gelden wat voor <em>elke</em>
 programmeertaal
 geldt: zonder goed opgeleide mensen kom je nergens. Zonder
 documentatie blijf
 je nergens.</p>

<p>Hieronder volgt eerst een overzicht van de belangrijkste
 <a href="#voordeel">voordelen</a>
 van assembler. Vervolgens een poging om de
 <a href="#vooroordeel">vooroordelen</a>
 te nuanceren. We eindigen met een korte
 <a href="#samenvatting">samenvatting</a>.</p>

/HTML

         HTMLDEF WHY.NL1
<!-- NL -->
<h3><a name="voordeel" id="voordeel">De voordelen van assembler.</a>
</h3>

<p>Het werken met assembler biedt u een aantal mogelijkheden, die
 3GL- en
 4GL-programmeurs niet (altijd) tot hun beschikking hebben.</p>

<ul>
 <li>Fouten ondervangen.<br />
  Hoe vaak gebeurt het dat een applicatie struikelt over een onnozel
  probleempje? Een S0C7-abend doordat er spaties stonden waar nullen
 verwacht
  werden? Een hulpdataset die net iets te klein gealloceerd is? Met
  behulp van
  een relatief eenvoudige assembler-routine zijn dit soort problemen
  af te
  vangen en op te lossen. Uw applicatie struikelt niet, maar loopt
  gewoon door.
  Het geconstateerde probleem wordt gemeld in de joblog of in een
  aparte error
  log, zodat de verantwoordelijke beheerder de benodigde acties kan
  ondernemen.</li>
 <li>Gebruik van geheugen boven de 16MB-lijn.<br />
  Er zijn nog steeds bedrijven die hun compiler (moeten) instellen op
  Amode=24.
  Door het toevoegen van kleine assembler-modules kunt u uw
  programma's wel
  boven de 16MB-lijn laten draaien, waardoor op cruciale punten de
  druk op het
  geheugen onder de 16MB-lijn wordt verlicht.</li>
 <li>Dynamisch geheugenbeheer.<br />
  Programma's die gegevens bijhouden in tabellen, lijsten, of bomen
  weten vaak
  van te voren niet hoe groot die tabellen etc. zullen moeten worden.
  In
  assembler kan geheugen dynamisch worden aangevraagd en weer
  vrijgegeven,
  waardoor tabellen etc. gemakkelijk zijn uit te breiden en/of in te
  krimpen tot
  het benodigde formaat.</li>
 <li>Optimalisatie.<br />
  De moderne compilers maken zeker effici&euml;nte code aan. Zij
  kunnen echter
  niet bepalen welk optimalisatie-criterium voor u in een bepaald
  programma van
  cruciaal belang is. Door de kennis die de programmeur heeft van de
  structuur
  van de applicatie kan hij dit wel. Hierdoor kan bijvoorbeeld
  geanticipeerd
  worden op page-steal, waardoor het aantal page faults gereduceerd
  kan worden.
  Resultaat: uw programma loopt sneller, en het systeem krijgt meer
  lucht.</li>
 <li>Het gebruik van faciliteiten die het operating system biedt.
  Veel van dit
  soort services zijn niet beschikbaar in
  'hogere' programmeertalen, en wanneer ze dat wel zijn, dan is vaak
  de overhead
  van het aanroepen vauit die taal zo groot, dat het het performance
  voordeel
  al gauw te niet doet.<br />
  U kunt hierbij onder meer denken aan:
  <ul>
   <li>Data spaces.<br />
    Programma's die behoefte hebben aan grote hoeveelheden
    werk-geheugen kunnen
    hiervan gebruik maken. U hoeft hierdoor minder gauw hulpdatasets
    te alloceren
    (scheelt I/O), en u bespaart virtual storage in uw eigen address
    space,
    waardoor u minder gauw een out-of-storage-abend zult krijgen.</li>
   <li>Virtual lookaside facility.<br />
    VLF biedt u de gelegenheid om benoemde gegevens in virtual storage
    te bewaren,
    buiten uw eigen address space. Voor benoembare gegevens die
    veelvuldig worden
    geraadpleegd (bv PDS-members uit bepaalde datasets) kan dit
    behoorlijk wat
    I/O-vertraging besparen.</li>
   <li>Gelijktijdig benaderen van meerdere datasets.<br />
    Wanneer een applicatie records uit twee of meer datasets nodig
    heeft, kunnen
    deze gelijktijdig worden gelezen en/of geschreven. Het is zelfs
    mogelijk
    meerdere records uit een enkele dataset gelijktijdig te benaderen.
    Deze
    gelijktijdigheid kan heel wat I/O-wachttijd schelen, vooral als de
    betreffende
    datasets niet op hetzelfde volume staan.</li>
   <li>Subtaken.<br />
    Door van een taak een of meer subtaken af te splitsen kan de
    verwerkingstijd
    enorm bekort worden. B.v. door het schrijven en lezen van
    tussenbestanden
    overbodig te maken. Of door het aanmaken van de journaalpost aan
    een subtaak
    over te laten, waardoor de verkoop-transactie zelf sneller
    afgehandeld kan
    worden.</li>
   <li>Reenterability.<br />
    Door veel-gebruikte programma-segmenten reenterable te maken
    kunnen ze in
    common storage geplaatst worden (liefst boven de 16MB-lijn
    natuurlijk).
    Hierdoor kan het betreffende programma effici&euml;nter worden
    uitgevoerd: de
    kans op een page-fault in zo'n code-segment is relatief klein.
  </li>
  </ul>
 </li>
</ul>

/HTML

         HTMLDEF WHY.NL2
<!-- NL -->
<h3><a name="vooroordeel" id="vooroordeel">De vooroordelen tegen
 assembler.</a></h3>

<p>Over het werken met assembler bestaan een aantal vooroordelen.
 De belangrijkste daarvan zijn wel:</p>
<ol>
 <li>Gestructureerd programmeren kan niet in assembler.<br />
  Onjuist, in feite biedt assembler op dit terrein zelfs meer
  faciliteiten dan
  de meeste 3GLs.</li>
 <li>Onderhoud aan assembler-programmatuur kost veel meer tijd dan
  bij een
  3GL.<br />
  In de tijd dat 3GLs werden ge&iuml;ntroduceerd, was dit wellicht
  waar. Nu nog
  maar zeer ten dele.</li>
 <li>Assembler is een omslachtige taal en moeilijk te leren.<br />
  Assembler is inderdaad iets minder doorzichtig voor de leek dan een
  taal als
  Cobol. Een taal als C of C++ daarentegen is weer veel moeilijker te
  leren.</li>
</ol>

<dl compact="compact">
 <dt>Ad 1.</dt>
 <dd>Gestructureerd programmeren kan niet in assembler.<br />
  Het aanbrengen van structuur in programma's is in de eerste plaats
  een kwestie
  van stijl en vakmanschap. Als de gebruikte taal goede faciliteiten
  biedt is dat
  mooi meegenomen.
  <ul>
   <li>Op het gebied van segmentatie biedt assembler meer
    mogelijkheden dan 3GLs:
    niet alleen kun je in assembler subroutines en functies maken, ook
    is het
    mogelijk om programma's op te delen in CSECTS, die natuurlijk weer
    in
    subroutines en/of functies kunnen worden opgedeeld.<br />
    Bovendien kan voor het calling mechanisme gekozen worden tussen
    een aantal
    alternatieven, waaronder standaard MVS-linkage via register 14, de
    linkage
    stack, of een ander calling mechanisme, al dan niet via een
    jump-table.<br />
    Voor het doorgeven van argumenten ten slotte kan gekozen worden
    tussen
    pass-by-value en pass-by-reference, of een mengsel van die twee.
   </li>
   <li>Op het gebied van loop-control biedt assembler met 3GLs
    vergelijkbare
    mogelijkheden: naast de branch-on-count zij er de branch-on-index
    instructies.
    Met behulp van macro's kunnen deze mogelijkheden nog worden
    uitgebreid met
    krachtiger instructies.</li>
   <li>Net als in de meeste 3GLs biedt assembler de mogelijkheid om
    standaard-code vanuit een copy-member in uw programma's op te
    nemen.</li>
   <li>De macro-faciliteit ten slotte biedt diverse mogelijkheden voor
    het
    aanbrengen van structuur en het standaardiseren van regelmatig
    weerkerende
    programma-structuren. Door het gebruik van conditional assembly
    kan altijd
    optimale code worden aangemaakt. De meeste 3GLs beschikken niet
    over
    vergelijkbare functionaliteit.<br />
    &nbsp;</li>
  </ul>
 </dd>
 <dt>Ad 2.</dt>
 <dd>Onderhoud aan assembler-programmatuur kost veel meer tijd dan bij
  een 3GL.<br />
  Toen 3GLs ge&iuml;ntroduceerd werden, was er een grote basis van
  assembler-programma's. Doordat gestructureerd programmeren toen nog
  een nieuwe
  ontwikkeling was lieten deze programma's vaak te wensen over aan
  structuur. In
  assembler kunt u - net als in andere talen - zo veel of zo weinig
  structuur
  aanbrengen als u zelf wilt. Met alle consequenties voor de
  onderhoudbaarheid.<br />
  In assembler heeft u wel meer mogelijkheden dan in de meeste 3GLs om
  er een
  rommeltje van te maken. Maar dank zij de macro-taal heeft u in
  assembler ook
  weer aanzienlijk meer mogelijkheden voor het aanbrengen van
  structuur dan in
  enige andere taal.<br />
  &nbsp;<br />
  Verder geldt natuurlijk de kwestie van vakmanschap.
  De 3GL-programmeur die
  assembler &quot;er bij doet&quot; kan zich niet meten met de vakman.
  Dat vertaalt zich
  niet alleen in de benodigde tijd, maar ook in de kwaliteit van de
  geproduceerde
  code. Probleem is dan natuurlijk wel, hoe u aan ervaren vakmensen
  komt. Maar
  dat geldt - zeker op dit moment - voor elke taal.<br />
  &nbsp;<br />
  Als we voor de benodigde mankracht een eerlijke vergelijking willen
  maken
  tussen assembler en 3GLs dan moeten we dus niet alleen vakman naast
  vakman
  zetten, maar ook de ouderdom van de programmatuur (lees: mate van
  structuur)
  in ogenschouw nemen, alsmede de kwaliteit van de beschikbare
  documentatie.<br />
  &nbsp;<br />
  Onze ervaring is dat u in de nieuwbouw dan zo'n 10 tot 20 procent
  extra
  mankracht moet rekenen voor assembler. Bij onderhoud is het verschil
  te zeer
  afhankelijk van de mate waarin de programmatuur gedocumenteerd en
  gestructureerd is om enig cijfer te kunnen geven.<br />
  &nbsp;<br />
  Een voorbeeld: een van onze klanten draait naast een door ons
  ontwikkeld
  assembler-module een Cobol-variant met dezelfde functionaliteit. Bij
  de laatste
  paar modificaties was de assembler-programmeur in &eacute;&eacute;
  n dag klaar;
  de Cobol-programmeur had er drie dagen voor nodig. Hoewel dit een
  bijzonder
  voorval zou kunnen zijn, toont het wel aan dat onderhoud aan
  assembler
  programmatuur niet per definitie meer tijd vergt dan onderhoud aan
  3GL-programmatuur.<br />
  &nbsp;<br /></dd>
 <dt>Ad 3.</dt>
 <dd>Assembler is een omslachtige taal en moeilijk te leren.<br />
  Als u van &quot;leken&quot; afhankelijk bent, dan moet u zeker niet
  voor
  assembler kiezen. Zoals met elke andere taal cre&euml;ert u dan uw
  eigen
  moeilijkheden.<br />
  Maar er zijn natuurlijk ook vakmensen beschikbaar. Die beheersen
  niet alleen
  de kunst van het assembleren, die hebben ook grondige kennis van de
  macro-faciliteiten van de assembler, waarmee snel, effici&euml;nt en
  netjes
  coderen binnen handbereik komt.</dd>
</dl>

/HTML

         HTMLDEF WHY.NL3
<!-- NL -->
<h3><a name="samenvatting" id="samenvatting">Samenvatting.</a></h3>

<p>De argumenten voor en tegen kunnen als volgt worden samengevat:</p>
<ul>
 <li>Werken met assembler kost iets meer tijd, maar niet zo veel als
  men pleegt
  te denken.</li>
 <li>Assembler biedt meer mogelijkheden tot structureren, maar bij
  gebrek aan
  vakmanschap zullen er ook sneller onderhoudsproblemen kunnen
  ontstaan.</li>
 <li>In assembler heeft u meer mogelijkheden voor het oplossen of
  voorkomen van
  performance-problemen.</li>
 <li>Het kost iets meer moeite om aan vakmensen te komen of ze op te
  leiden.</li>
</ul>

<p>Alles bij elkaar luidt ons standaard-advies: gebruik geen assembler
 als het
 niet nodig is. Maar als er wel aanleiding toe is, loop er dan niet
 voor weg;
 assembler is niet eng. En als u dan voor assembler kiest, bouw dan
 alleen die
 modules in assembler, die daar baat bij hebben. Het grootste deel van
 uw
 project kunt u prima in uw vertrouwde 3GL of 4GL bouwen.</p>

<p>Ten slotte is het voor sommige zaken domweg niet mogelijk een
 andere taal te
 gebruiken dan assembler. Dit geldt met name voor veel exits.<br />
 Niet alleen het operating system, maar ook een groot aantal
 standaard produkten
 zijn voorzien van de mogelijkheid om exits te installeren, teneinde
 e.e.a. op
 uw eigen behoeften/specificaties af te stemmen. Voor de meeste exits
 geldt, dat
 coderen in assembler domweg onvermijdelijk is. Met de hierboven
 gegeven
 argumenten hoeft dat dus geen onoverkomelijk probleem (meer) te zijn.
</p>

/HTML

         HTMLDEF WHY.NLL
<!-- NL -->
<p>
 Naar <a href="#voordeel">de voordelen van assembler</a>.<br />
 Naar <a href="#vooroordeel">de vooroordelen tegen assembler</a>.<br />
 Naar de <a href="#samenvatting">samenvatting</a>.
</p>

<p>
 Naar de <a href="hlasm.htm">nederlandse homepage</a>.<br />
 Naar de <a href="../hlasm.htm">algemene homepage</a>.
</p>

/HTML

         HTMLDEF WHY.NLF
<!-- NL -->
<p class="footer" align="center">
 Deze tekst is geschreven door A.F. Kornelis, vertaald door
 A.F. Kornelis.<br/>
 Tekst en vertaling: &copy; Copyright A.F. Kornelis, 1997-2003.
 Alle rechten voorbehouden.<br />
 <a href="mailto:abe@bixoft.nl">e-mail</a> de auteur.</p>

/HTML

         HTMLDEF WHY.DEH
<!-- DE -->
<!-- -->
<!-- Saved from http://www.bixoft.com/deutsch/why.htm -->
<!-- -->
<title>HLASM - Warum Assembler Benutzen?</title>
<link rev="Bixoft introduction / sitemap" href="intro.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe" />
<meta http-equiv="description"
      content="&Uuml;ber das f&uuml;r und wieder der Benutzung des
      Assemblers f&uuml;r Mainframes." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF WHY.DET
<!-- DE -->
<h1 align="center">Warum Assembler benutzen?</h1>

<p>Assembler als Programmiersprache ist nicht mehr sehr popul&auml;r
 heutzutage. Normalerweise wird eine dritte oder vierte
 Generationssprache benutzt.</p>

<p>Normalerweise - f&uuml;r "08/15" Anwendungen - ist dies genau
 richtig. Es gibt aber Situtationen in denen es n&ouml;tig ist die
 Argumente f&uuml;r und gegen Assembler genau zu betrachten.</p>

<p>Auf der einen Seite sind die Argumente gegen die Benutzung von
 Assembler zum grossen Teil Vorurteile, auf der anderen Seite sind die
 Argumente f&uuml;r die Benutzung relativ unbekannt. Wenn man die
 <strong>Vorurteile</strong> gegen Assembler kennt und die
 <strong>Vorteile</strong> nicht kennt, wird es sehr schwer eine
 objektive Entscheidung bei der Wahl der Programmiersprache zu treffen.
</p>

<p>Eine Regel bleibt wichtig - wie f&uuml;r
 <em>jede</em>
 Programmiersprache: ohne gut ausgebildete Leute kommt man nirgendwo
 hin, ohne gute Dokumentation enden Sie gar an einer unbekannten
 Position.</p>

<p>Unten finden Sie eine &Uuml;bersicht &uuml;ber die wichtigsten
 <a href="#advantage">Vorteile</a>
 von assembler. Dannach werden wir versuchen die
 <a href="#prejudice">Vorurteile</a> zu beseitigen.
 Wir beenden mit einer kurzen
 <a href="#summary">Zusammenfassung</a>.</p>

/HTML

         HTMLDEF WHY.DE1
<!-- DE -->
<h3><a name="advantage" id="advantage">
  Die Vorteile von Assembler.</a></h3>

<p>Das Arbeiten mit Assembler bietet eine Reihe von M&ouml;glichkeiten,
 welche nicht (in dieser Gesamtheit) verf&uuml;gbar sind f&uuml;r 3GL-
 oder 4GL-Programmierer.</p>

<ul>
 <li>Abwehrfehler.<br />
  Wie oft passiert es das Ihre Anwendungen &uuml;ber etwas so simples
  wie einen S0C7 stolpern, oder &uuml;ber eine zu kleine Zwischendatei.
  Mit der Hilfe einer relativ einfachen Assemblerroutine k&ouml;nnen
  diese Probleme gehandhabt und gel&ouml;st werden. Ihre Anwendungen
  st&uuml;rzen nicht einfach ab, sondern laufen weiter. Alle
  aufgetretenen Probleme werden protokolliert, und erlauben es dem
  Kontroller die n&ouml;tigen Aktionen durchzuf&uuml;hren.</li>
 <li>Benutzung von Speicher &uuml;ber der 16MB-Linie.<br />
  Es gibt immer noch viele Unternehmen die (gezwungenermassen) mit
  AMODE=24 umwandeln. Durch Erg&auml;nzung um kleine Assemblermodule
  k&ouml;nnen Ihre Anwendungsprogramme &uuml;ber der 16MB-Linie laufen
  und so den Druck unter der 16MB-Linie reduzieren.</li>
 <li>Dynamische Speicherverwaltung.<br />
  Programme die Daten in Tabellen, Listen oder B&auml;umen pflegen,
  wissen oft nicht im Voraus wie gro&szlig; der Speicherbedarf sein
  wird. In Assembler kann Speicher dynamisch zugeordnet und freigegeben
  werden. Dies erlaubt es nur den wirklich ben&ouml;tigten Speicher
  anzufordern und zu nutzen.</li>
 <li>Optimierung.<br />
  State-of-the-art Compiler generieren sicher effizienten Kode. Sie
  k&ouml;nnen aber nicht entscheiden, welches Ihre speziellen
  Optimierungsziele sind. Da ein Programmierer die Struktur Ihrer
  Anwendung kennt, kann er diese Entscheidung treffen. Er kann zum
  Beispiel das Risiko einer page-steal Operation verringern, um so das
  Programm schneller zu machen und die Last auf dem paging Subsystem zu
  reduzieren.</li>
 <li>Benutzung von Betriebssystemm&ouml;glichkeiten.<br />
  Viele dieser M&ouml;glichkeiten sind nicht nutzbar von h&ouml;heren
  Programmiersprachen. Wenn sie nutzbar sind, ist z.T. der
  zus&auml;tzliche Aufwand erheblich, soda&szlig; ein m&ouml;glicher
  Performancegewinn von diesem Aufwand &uuml;berlagert wird.<br />
  Unter anderem sind zu nennen:
  <ul>
   <li>Data spaces.<br />
    Programme die gro&szlig;e Mengen Speicher ben&ouml;tigen,
    k&ouml;nnen Data Spaces benutzen. Dies veringert den Zwang
    Arbeitsdateien anzulegen (welches wiederum I/Os spart) und zur
    selben Zeit wird der Bedarf an Speicher reduziert (welches
    out-of-storage abends vermeidet).</li>
   <li>Virtual look-aside facility.<br />
    VLF erm&ouml;glicht es benannte Daten in Speicher ausserhalb des
    eigenen Addre&szlig;raumes zu halten. F&uuml;r intensiv benutzte
    Daten (z.B. Member in bestimmten PDS-Dateien) kann dies die Zeit
    f&uuml;r I/Os f&uuml;r Ihre Anwendungen erheblich verk&uuml;rzen.
   </li>
   <li>Gleichzeitiger Zugriff auf verschiedene Dateien.<br />
    Wenn eine Anwendung S&auml;tze aus zwei oder mehr Dateien lesen
    und/oder schreiben will, kann dies zur selben Zeit passieren. Dies
    ist sogar f&uuml;r S&auml;tze der gleichen Datei m&ouml;glich.
    Diese &Uuml;berlappung kann erhebliche I/O-Wait Zeiten einsparen,
    besonders wenn die S&auml;tze auf unterschiedlichen Volumes liegen.
   </li>
   <li>Subtasks.<br />
    Durch Aufteilung auf mehrere Subtasks kann eine Task erheblich
    beschleunigt werden. Z.B. durch Verlagerung der n&ouml;tigen
    Anlegung von Journals&auml;tzen in eine zweite Task kann die
    Verkaufstransaktion beschleunigt werden.</li>
   <li>Reenterability.<br />
    Indem h&auml;ufig benutzte Programme reentrant gemacht werden,
    k&ouml;nnen diese in gemeinsam genutzten Speicher (bevorzugt
    &uuml;ber der 16MB Linie) gelegt werden. Dies bedeutet, das alle
    Programme, die diesen Kode benutzen, beschleunigt werden, weil die
    Wahrscheinlichkeit f&uuml;r einen Page Fault minimal wird.</li>
  </ul>
 </li>
</ul>

/HTML

         HTMLDEF WHY.DE2
<!-- DE -->
<h3><a name="prejudice" id="prejudice">
 Die Vorurteile gegen Assembler.</a></h3>

<p>Es gibt verschiedene Vorurteile gegen das Arbeiten mit Assembler.
 Die Wichtigsten sind:</p>
<ol>
 <li>In Assembler ist strukturierte Programmierung unm&ouml;glich.
  <br />
  Dies ist nicht wahr. In diesem Bereich bietet Assembler
  tats&auml;chlich mehr M&ouml;glichkeiten als viele 3GLs.</li>
 <li>Pflege von Assemblerprogrammen ist viel teurer als die Pflege von
  3GLs.<br />
  Als 3GLs eingef&uuml;hrt wurden mag dies gestimmt haben. Aber heute
  ist diese Aussage durchaus debatierbar.</li>
 <li>Assembler ist eine umst&auml;ndliche Sprache, und schwer zu
  lernen.<br />
  Assembler ist in der Tat ein bischen weniger lesbar f&uuml;r den
  Laien als z.B. COBOL. Sprachen wie C und C++ auf der anderen Seite
  sind viel schwerer zu beherschen.</li>
</ol>

<dl compact="compact">
 <dt>Zu 1.</dt>
 <dd>In Assembler ist strukturierte Programmierung unm&ouml;glich.
  <br />
  Struktur in Programme zu bringen ist zu Allererst eine Frage des
  Stils und der Arbeitsmethode. Wenn die benutzte Programmiersprache
  gute M&ouml;glichkeiten in diesem Bereich bietet, kann das eine Hilfe
  sein, aber nicht mehr.
  <ul>
   <li>Im Bereich Segmentierung bietet Assembler mehr
    M&ouml;glichkeiten als 3GLs: Neben dem &uuml;blichen
    Unterprogrammen und Funktionen, kann man Programme in CSECTs
    unterteilen, welche wiederum in Unterprogramme und Funktionen
    aufgeteilt sein k&ouml;nnen.<br />
    Als Zusatz kann man zwischen verschiedenen Arten des Aufrufs
    w&auml;hlen. Unter anderem: Standard 360-Linkage Konventionen, dem
    Linkage-Stack oder andere Aufrufmethoden, mit oder ohne
    Verzweigetabelle.<br />
    F&uuml;r die Weitergabe von Parametern schlie&szlig;lich besteht
    die Wahl zwischen Weitergabe des Wertes, der Referenz oder eine
    Mischung hiervon.</li>
   <li>Bei der Schleifenkontrolle gibt es in Assembler mit 3GLs
    vergleichbaren M&ouml;glichkeiten. Dies sind die so genannten
    &quot;branch on index&quot; und &quot;branch on count&quot;
    Instruktionen mit ihren relativen Br&uuml;dern. Mit Hilfe von
    Macros kann man diese Intruktionen um weitere m&auml;chtige
    M&ouml;glichkeiten erweitern.</li>
   <li>Genau wie viele 3GLs hat Assembler ein Copyfeature um
    Standardkode von einem Bibliotheksmember in das Programm zu
    kopieren.</li>
   <li>Die Macro-M&ouml;glichkeit schlie&szlig;lich bietet ein breites
    Spektrum um Struktur in Programme zu bringen und wiederkehrende
    Programmkonstrukte zu standardisieren. Bei Benutzung von
    conditional assembly ist es immer m&ouml;glich den generierten Kode
    zu optimieren. Die meisten 3GLs bieten keine vergleichbare
    Funktion.<br />
    <br />
   </li>
  </ul>
 </dd>
 <dt>Zu 2.</dt>
 <dd>Die Pflege von Assembler Programmen ist weit teurer als die Pflege
  von 3GLs.<br />
  Als 3GLs zuerst eingef&uuml;hrt wurden, gab es eine breite Basis
  existierender Assembler Programme. Weil strukturierte Programmierung
  relativ neu in jenen Tagen war, liesen diese Programme vieles zu
  w&uuml;nschen &uuml;brig, wenn es um Struktur ging. In Assembler -
  wie in jeder anderen Sprache auch - kann man beliebig viel oder wenig
  Struktur erzeugen. Mit allen Konsequenzen f&uuml;r die sp&auml;tere
  Pflegbarkeit.<br />
  In Assembler gibt es mehr M&ouml;glichkeiten, als in vielen 3GLs ein
  Chaos anzurichten. Dank der Macro-M&ouml;glichkeit gibt es aber
  mehrere wichtige Optionen mehr Struktur zu erzeugen als in anderen
  Sprachen.<br />
  <br />
  Eine sehr wichtige Frage ist die Frage des Stils. Ein
  3GL-Programmierer der nebenher &quot;ein bischen Assembler&quot;
  macht, kann sich niemals mit einem professionellem
  Assembler-Programmierer messen. Die Resultate sind me&szlig;bar und
  zwar nicht nur in der Zeit in der eine gegebene Arbeit erledigt wird,
  sondern auch in der Qualit&auml;t des produzierten Kodes. Das
  Hauptproblem ist demnach: wie finde ich den erfahrenen Profi. Ein
  Problem das Sie aber immer haben, egal welche Sprache Sie
  w&auml;hlen.<br />
  <br />
  Um also einen fairen Vergleich f&uuml;r ben&ouml;tigte Mannpower
  zwischen Assembler und 3GLs durzuf&uuml;hren, mu&szlig; man
  Handwerker mit Handwerker vergleichen und man mu&szlig; das Alter der
  Programme (lies: Grad der Strukturierung) ber&uuml;cksichtigen und
  die Qualit&auml;t der vorhandenen Dokumentation.<br />
  <br />
  Unsere Erfahrung mit neuen Programmen ist ein ca. 10 bis
  20-prozentiger Mehrbedarf f&uuml;r Entwicklung in Assembler. Wenn es
  um Pflege geht, ist der Unterschied zu abh&auml;ngig von der
  Verf&uuml;gbarkeit von Dokumentation und der Struktur der Programme
  um sinnvolle Zahlen zu liefern.<br />
  <br />
  Ein Beispiel: Einer unserer Kunden besitzt ein Assembler Modul (von
  uns) und ein COBOL-Modul. Beide tun exakt dasselbe. Die letzten paar
  &Auml;nderungen wurden von einem Assembler-Programmierer an einem Tag
  durchgef&uuml;hrt, wohingegen der Cobol-Programmierer 3 Tage
  brauchte. Obwohl dies au&szlig;ergew&ouml;hnlich klingt, zeigt es
  doch das Pflege eines Assembler Programmes nicht automatisch
  aufwendiger ist als Pflege eines 3GL Programmes.<br />
  <br /></dd>
 <dt>Zu 3.</dt>
 <dd>Assembler ist eine umst&auml;ndliche Sprache, und schwer zu
  lernen.<br />
  Wenn Sie von &quot;Laien&quot; abh&auml;ngig sind, sollten Sie
  sicher nicht Assembler w&auml;hlen. Wie mit jeder anderen Sprache
  werden Sie nur Ihre eigenen Probleme erzeugen.<br />
  Nat&uuml;rlich gibt es auch Profies. Diese k&ouml;nnen nicht nur
  Assembler programmieren, sondern beherrschen auch die verschiedenen
  Optionen, die Assembler bietet. Dies erm&ouml;glicht eine
  z&uuml;gige, effiziente und saubere Arbeit.</dd>
</dl>

/HTML

         HTMLDEF WHY.DE3
<!-- DE -->
<h3><a name="summary" id="summary">Zusammenfassung.</a></h3>

<p>Die Argumente f&uuml;r und gegen den Gebrauch von Assembler
 k&ouml;nnen wie folgt zusammen gefa&szlig;t werden:</p>
<ul>
 <li>Arbeiten mit Assembler braucht ein kleines bischen mehr Zeit. Aber
  bei Weitem nicht soviel, wie man gemeinhin denkt.</li>
 <li>Assembler bietet mehr M&ouml;glichkeiten zur Strukturierung,
  obwohl fehlender Professionalismus produziert leichter
  Pflegeprobleme.</li>
 <li>In Assembler gibt es mehr M&ouml;glichkeiten Durchsatzprobleme zu
  l&ouml;sen oder zu verhindern.</li>
 <li>Man ben&ouml;tigt mehr Zeit einen Profi zu finden.</li>
</ul>

<p>Zusammenfassend unser Tipp: Kein Assembler wenn es nicht sein
 mu&szlig;. Auf der anderen Seite, wenn es Gr&uuml;nde gibt, nur nicht
 genieren; Assembler ist nicht furchteinfl&ouml;ssend. Und wenn Sie
 Assembler einsetzen, bitte nur f&uuml;r die Module die davon
 profitieren. Der gr&ouml;&szlig;ere Teil Ihrer Anwendung wird
 wahrscheinlich am besten in Ihrer Lieblings-3GL oder 4GL geschrieben.
</p>

<p>Schlie&szlig;lich, f&uuml;r manche Anwendungen gibt es keine
 Alternative zu Assembler. Dies gilt insbesondere f&uuml;r viele Exits.
 <br />
 Nicht nur das Betriebssystem, sondern auch viele Standard Produkte
 sind mit Exitpunkten ausgestattet, damit Installationen diese Software
 an ihre Bed&uuml;rfnisse anpassen k&ouml;nnen. F&uuml;r viele Exits
 ist Assembler die einzige Sprache. Mit obigen Argumenten sollte dies
 (ab jetzt hoffentlich) kein un&uuml;berwindbares Problem sein.</p>

/HTML

         HTMLDEF WHY.DEL
<!-- DE -->
<p>
 Nach <a href="#advantage">die Vorteile von Assembler</a>.<br />
 Nach <a href="#prejudice">die Vorurteile gegen Assembler</a>.<br />
 Nach <a href="#summary">die Zusammenfassung</a>.<br />
</p>

<p>
 Nach <a href="hlasm.htm">die deutsche Homepage</a>.<br />
 Nach <a href="../hlasm.htm">die allgemeine Homepage</a>.
</p>

/HTML

         HTMLDEF WHY.DEF
<!-- DE -->
<p class="footer" align="center">
 Diese Text wurde geschrieben von A.F. Kornelis,
 &Uuml;bersetzt durch Martin Tr&uuml;bner.<br/>
 &copy; Copyright: A.F. Kornelis, 1997-2003. All rights reserved.<br />
 Diese &Uuml;bersetzung: &copy; Copyright: Martin Tr&uuml;bner, 2003.
 All rights reserved.<br />
 E-mail an <a href="mailto:abe@bixoft.nl">den Autor</a> oder an
 <a href="mailto:martin@pi-sysprog.de">den &Uuml;bersetzer</a>.</p>

/HTML

         HTMLDEF WHY.FRH
<!-- FR -->
<!-- -->
<!-- Sur le site http://www.bixoft.com/francais/why.htm -->
<!-- -->
<title>Bixoft - Pourquoi &eacute;crire en Assembleur?</title>
<link rev="Bixoft introduction / sitemap" href="introalt.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe" />
<meta http-equiv="description"
      content="A propos des pour et des contre l'Assembleur sur les
      gros ordinateurs." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF WHY.FRT
<!-- FR -->
<h1 align="center">Pourquoi &eacute;crire en Assembleur?</h1>

<p>Utiliser l'assembleur comme langage de programmation n'est pas si
 populaire de nos jours. Comme si c'&eacute;tait une r&egrave;gle les
 gens pr&eacute;f&egrave;rent utiliser des langages de troisi&egrave;me
 (3GL) ou quatri&egrave;me g&eacute;n&eacute;ration (4GL).</p>

<p>D'habitude - pour des applications simples - ceci est absolument
 vrai. Il y a cependant des situations o&ugrave; il est prudent de
 peser tous les arguments pour et contre l'utilisation de l'assembleur.
</p>

<p>D'un c&ocirc;t&eacute; il y a les arguments contre l'utilisation de
 l'assembleur en large partie bas&eacute;s sur des
 pr&eacute;jug&eacute;s, et de l'autre c&ocirc;t&eacute; il y a les
 arguments pour l'utilisation de l'assembleur comme langage
 relativement inconnu. Quand vous vous basez sur les
 <strong>pr&eacute;jug&eacute;s</strong>
 de l'assembleur sans conna&icirc;tre les
 <strong>avantages</strong>,
 il devient tr&egrave;s difficile de prendre des d&eacute;cisions
 objectives concernant le choix de ce langage de programmation.</p>

<p>Une r&egrave;gle reste importante comme c'est le cas pour tout les
 langages de programmation: sans personnel bien entra&icirc;n&eacute;
 vous ne pourrez jamais aboutir, sans bonne documentation vous finirez
 par faire n'importe quoi.</p>

<p>Ci-dessous vous trouverez une vue d'ensemble des plus importants
 <a href="#advantage">avantages</a>
 de l'assembleur. Ensuite nous essayerons de r&eacute;&eacute;valuer
 les
 <a href="#prejudice">pr&eacute;jug&eacute;s</a>.
 Nous terminerons par un petit
 <a href="#summary">r&eacute;sum&eacute;</a>.</p>

/HTML

         HTMLDEF WHY.FR1
<!-- FR -->
<h3><a name="advantage" id="advantage">
  Les avantages de l'assembleur.</a></h3>

<p>Travailler avec l'assembleur vous offre une palette de
 possibilit&eacute;s, qui ne sont pas (toutes) disponibles avec les
 langages 3GL et 4GL.</p>

<ul>
 <li>Les erreurs corrigeables.<br />
  Combien de fois arrive-t-il &agrave; votre application de tomber en
  panne si facilement? Un abend S0C7 parce qu'il y a des blancs,
  o&ugrave; on attendait des z&eacute;ros? Un fichier
  interm&eacute;diaire qui &eacute;tait allou&eacute; juste un peu trop
  court? Avec l'aide d'une routine assembleur relativement assez simple
  ces probl&egrave;mes peuvent &ecirc;tre &eacute;vit&eacute;s et
  r&eacute;solus. Votre application ne tombera plus en panne, elle
  continuera juste &agrave; tourner. Tous les probl&egrave;mes
  rencontr&eacute;s sont report&eacute;s soit dans le joblog ou dans un
  log s&eacute;par&eacute;, laissant la possibilit&eacute; au
  contr&ocirc;leur des commandes de faire les actions
  n&eacute;cessaires.</li>
 <li>Utilisation de la m&eacute;moire au-dessus des 16MB.<br />
  Il y a encore des entreprises qui sont oblig&eacute;es de compiler
  avec Amode=24. En ajoutant de simples modules en assembleur vous
  pouvez avoir votre application qui tourne au-dessus des 16MB,
  r&eacute;duisant les besoins de m&eacute;moire en dessous des 16MB
  o&ugrave; il en manque le plus facilement.</li>
 <li>Gestion dynamique de la m&eacute;moire.<br />
  Les programmes qui maintiennent des donn&eacute;es en tables ou
  listes, ne savent souvent pas &agrave; l'avance de quelle
  quantit&eacute; de m&eacute;moire ces objets vont avoir besoin. En
  assembleur l'espace m&eacute;moire peut &ecirc;tre allou&eacute; et
  d&eacute;sallou&eacute; dynamiquement, vous laissant agrandir ou
  diminuer votre espace m&eacute;moire.</li>
 <li>Optimisation..<br />
  Les derniers compilateurs g&eacute;n&egrave;rent un code tr&egrave;s
  efficient. Mais ils ne peuvent cependant pas d&eacute;cider quels
  crit&egrave;res d'optimisation sont d'importance primordiale dans vos
  programmes sp&eacute;cifiques. Parce que le programmeur a la
  connaissance de la structure de votre application, il peut prendre
  cette d&eacute;cision. Il peut par exemple choisir de r&eacute;duire
  le risque de page vol&eacute;e, rendant le programme plus rapide et
  r&eacute;duisant la pagination du syst&egrave;me.</li>
 <li>Utilisation des facilit&eacute;s du syst&egrave;me d'exploitation.
  De tels services ne sont pas disponibles dans les langages de haut
  niveau ou, s'ils sont disponibles, la consommation
  suppl&eacute;mentaire induite par l'appel des langages de haut niveau
  &agrave; ces services d&eacute;passe largement les
  b&eacute;n&eacute;fices de performance que l'on peut attendre.<br />
  Parmi d'autres:
  <ul>
   <li>Data spaces.<br />
    Les programmes qui ont besoin d'un espace de travail important
    pourraient bien utiliser les data spaces. Ceci r&eacute;duit le
    besoin d'allouer des fichiers de travail (qui &agrave; son tour
    r&eacute;duit les I/Os) et dans le m&ecirc;me temps diminue les
    besoins dans votre espace m&eacute;moire, r&eacute;duisant le
    risque de d&eacute;bordement.</li>
   <li>Virtual look-aside facility.<br />
    VLF vous donne la possibilit&eacute; de garder vos donn&eacute;es
    dans un espace m&eacute;moire virtuel, en dehors de votre espace
    m&eacute;moire, dans le cas d'utilisation importante les
    donn&eacute;es qui peuvent &ecirc;tre reconnues (par exemple: des
    membres de PDS de certaines librairies) ceci peut substantiellement
    r&eacute;duire les temps d'I/O de votre application.</li>
   <li>Acc&egrave;s concurrents sur plusieurs fichiers.<br />
    Quand une application a besoin d'acc&eacute;der &agrave; des
    enregistrements de deux fichiers ou plus, ces enregistrements
    peuvent &ecirc;tre lus et/ou &eacute;crits en m&ecirc;me temps. Il
    est m&ecirc;me possible d'acc&eacute;der &agrave; plusieurs
    enregistrements dans un m&ecirc;me fichier en m&ecirc;me temps.
    Cette concurrence peut faire gagner consid&eacute;rablement de
    temps d'attente sur les I/Os, sp&eacute;cialement quand les
    fichiers sont sur des volumes diff&eacute;rents.</li>
   <li>Sous-t&acirc;ches.<br />
    En d&eacute;coupant une t&acirc;che en sous-t&acirc;ches, cette
    t&acirc;che peut tourner consid&eacute;rablement plus vite. Par
    exemple: en &eacute;liminant le besoin d'&eacute;crire des
    donn&eacute;es sur un fichier de travail. Ou en laissant &agrave;
    une sous-t&acirc;che le soin de cr&eacute;er les enregistrements
    n&eacute;cessaires &agrave; un journal financier, rendant la
    transaction des ventes plus rapide.</li>
   <li>R&eacute;entrance.<br />
    En rendant r&eacute;entrant les segments de programmes tr&egrave;s
    utilis&eacute;s, ils peuvent &ecirc;tre plac&eacute;s dans une
    m&eacute;moire commune (de pr&eacute;f&eacute;rence au dessus des
    16MB bien s&ucirc;r). Ceci veut dire que les programmes qui
    utilisent ce code peuvent &ecirc;tre ex&eacute;cut&eacute;s plus
    efficacement, parce que les chances d'une faute de page dans ce
    genre de code sont minimes.</li>
  </ul>
 </li>
</ul>

/HTML

         HTMLDEF WHY.FR2
<!-- FR -->
<h3><a name="prejudice" id="prejudice">
  Les pr&eacute;jug&eacute;s contre l'assembleur.</a></h3>

<p>Il y a plusieurs pr&eacute;jug&eacute;s contre la programmation
 en assembleur. Les plus importants sont:</p>
<ol>
 <li>En assembleur la programmation structur&eacute;e est impossible.
  <br />
  Ceci est faux. Sur ce point l'assembleur offre actuellement plus de
  facilit&eacute;s que la plupart des 3GLs.</li>
 <li>Maintenir les programmes en assembleur co&ucirc;te beaucoup plus
  cher que les 3GLs.<br />
  Quand les programmes de 3GLs ont &eacute;t&eacute;
  cr&eacute;&eacute;s ceci &eacute;tait vrai! Depuis cette
  v&eacute;rit&eacute; est hautement discutable.</li>
 <li>L'Assembleur est un langage o&ugrave; tout est permis, et
  difficile &agrave; apprendre.<br />
  L'Assembleur est certainement un peu moins lisible au profane qu'un
  programme Cobol. D'autres langages comme C et C++ sont plus difficile
  &agrave; ma&icirc;triser.</li>
</ol>

<dl compact="compact">
 <dt>Ad 1.</dt>
 <dd>En assembleur la programmation structur&eacute;e est impossible.
  <br />
  En amenant une structure dans les programmes c'est d'abord et surtout
  une question de style et de qualit&eacute;. Si le langage de
  programmation utilis&eacute; offre de bonnes facilit&eacute;s, ce
  peut &ecirc;tre une aide, mais pas plus que cela.
  <ul>
   <li>Dans le monde des programmes la segmentation de l'assembleur
    offre plus de possibilit&eacute;s que les 3GLs: proche des
    sous-routines ou des fonctions il est aussi possible en assembleur
    de diviser les programmes en CSECTs, qui &agrave; leur tour peuvent
    &ecirc;tre subdiviser en sous-routines et/ou fonctions.<br />
    En plus de cela, on peut choisir diverses fa&ccedil;ons d'appeler
    ces routines. Parmi elles il y a l'appel standard MVS avec le
    registre 14, la pile de linkage ou les autres m&eacute;canismes
    d'appel, avec ou sans utilisation d'une table de branchement.<br />
    Enfin, pour passer des param&egrave;tres, on peut choisir entre
    passer par valeur, passer par r&eacute;f&eacute;rence ou un
    m&eacute;lange des deux.</li>
   <li>Quand on est concern&eacute; par des contr&ocirc;les de boucles,
    l'assembleur offre des facilit&eacute;s comparables aux 3GLs: ce
    sont les branchements sur index et les branchements sur compteurs.
    Avec l'aide des macros ces facilit&eacute;s peuvent &ecirc;tre
    &eacute;tendues avec des instructions plus puissantes.</li>
   <li>Comme la plupart des 3GLs,
    l'assembleur permet de copier du code standard de librairies dans
    vos programmes.</li>
   <li>Pour finir l'utilisation des macros offre de larges
    possibilit&eacute;s pour structurer les programmes et pour
    standardiser les routines pendant l'&eacute;criture des programmes.
    En param&egrave;trant l'assemblage il est possible en plus
    d'optimiser le code qui sera g&eacute;n&eacute;r&eacute;. La
    plupart des 3GLs n'offrent pas de fonctionnalit&eacute;s
    comparables.<br />
    &nbsp;<br />
   </li>
  </ul>
 </dd>
 <dt>Ad 2.</dt>
 <dd>Maintenir les programmes en assembleur co&ucirc;te beaucoup plus
  cher que les 3GLs.<br />
  Quand les 3GLs ont &eacute;t&eacute; lanc&eacute;s il y avait un
  grand nombre de programmes en assembleur. Parce que la programmation
  structur&eacute;e &eacute;tait une nouvelle m&eacute;thode, ces
  programmes ont perdu beaucoup d'int&eacute;r&ecirc;t. En assembleur -
  comme dans les autres langages - vous pouvez mettre une structure ou
  ne pas le faire. Avec toutes les cons&eacute;quences habituelles pour
  leur maintenance.<br />
  En assembleur vous avez plus d'opportunit&eacute;s que dans les 3GLs
  pour faire n'importe quoi. Mais gr&acirc;ce aux macros, vous avez un
  nombre consid&eacute;rable d'options pour mettre une structure dans
  vos programmes, bien plus que dans d'en d'autres langages.<br />
  &nbsp;<br />
  L'habilet&eacute; &agrave; manier un langage est d'une importance
  primordiale. Un programmeur 3GL qui utilise aussi lassembleur ne peut
  jamais se mesurer &agrave; un professionnel de l'assembleur. Les
  effets sont mesurables non seulement en terme de temps
  n&eacute;cessaire pour que le travail soit fait, mais aussi en terme
  de qualit&eacute; du code produit. Le probl&egrave;me majeur,
  ensuite, est d'avoir des programmeurs exp&eacute;riment&eacute;s dans
  votre &eacute;quipe. Un probl&egrave;me que vous rencontrerez quel
  que soit votre choix de langage de programmation, sp&eacute;cialement
  dans ces conditions.<br />
  &nbsp;<br />
  Donc, si nous voulons faire une comparaison valable du personnel
  entre assembleur et 3GLs, nous devons comparer des hommes de
  m&eacute;tier avec des hommes de m&eacute;tier, et nous devons aussi
  prendre en compte la vieillesse des programmes (en terme de mesure de
  structure), ainsi que la qualit&eacute; de la documentation
  disponible.<br />
  &nbsp;<br />
  Notre exp&eacute;rience, pour les nouveaux programmes, montre que
  vous avez besoin de 10 &agrave; 20 pour cent de main d'&oelig;uvre en
  plus pour programmer en assembleur. Quand la maintenance est
  concern&eacute;e, les diff&eacute;rences sont trop d&eacute;pendantes
  de la disponibilit&eacute; de la documentation et de l'importance de
  la structure dans les programmes pour donner une estimation valable.
  <br />
  &nbsp;<br />
  Un exemple: un de nos clients a un module assembleur, &eacute;crit
  par nous, et un module Cobol, les deux faisant exactement la
  m&ecirc;me chose. Pour les derni&egrave;res modifications le
  programmeur assembleur &eacute;tait pr&ecirc;t en un jour, alors que
  le programmeur Cobol avait besoin de trois jours. Bien que ceci
  semble exceptionnel, cela prouve que la maintenance de programmes
  assembleur n'est, par d&eacute;finition, pas plus co&ucirc;teux que
  la maintenance des programmes 3GL.<br />
  &nbsp;<br /></dd>
 <dt>Ad 3.</dt>
 <dd>L'Assembleur est un langage difficile &agrave; apprendre.<br />
  Si vous d&eacute;pendez de &quot;profanes&quot; vous ne choisirez
  certainement pas l'assembleur. Comme pour les autres langages vous ne
  ferez que cr&eacute;er vos propres difficult&eacute;s!<br />
  Bien s&ucirc;r, il y a de vrais professionnels. Ils ne
  ma&icirc;trisent pas seulement l'habilit&eacute; de la programmation
  en assembleur mais ils ont aussi une connaissance approfondie des
  macros que l'assembleur offre. Ceci nous permet de coder rapidement,
  efficacement et avec soin.</dd>
</dl>

/HTML

         HTMLDEF WHY.FR3
<!-- FR -->
<h3><a name="summary" id="summary">R&eacute;sum&eacute;.</a></h3>

<p>Les arguments pour et contre l'assembleur sont r&eacute;sum&eacute;s
 ici:</p>
<ul>
 <li>Ecrire en assembleur prend plus de temps,
  mais moins que ce que les gens en pensent.</li>
 <li>L'assembleur offre plus de facilit&eacute;s pour
  structurer un programme, m&ecirc;me si le manque de professionnels
  apporte plus facilement des probl&egrave;mes de maintenance.</li>
 <li>En assembleur on a plus de possibilit&eacute;s pour
  r&eacute;soudre ou pr&eacute;venir des probl&egrave;mes de
  performance.</li>
 <li>Cela prend plus d'effort pour trouver ou former des
  professionnels.</li>
</ul>

<p>En prenant tout cela en compte, notre devise est: ne pas
 &eacute;crire en assembleur quand ce n'est pas utile. De l'autre
 c&ocirc;t&eacute;, si vous avez de bonnes raisons de le faire, ne vous
 en privez pas; l'assembleur n'est pas un monstre. Et si vous
 choisissez l'assembleur, utilisez le seulement pour les modules qui en
 tireront profit. La plus grande partie de vos applications est
 probablement mieux ma&icirc;tris&eacute;e dans des langages 3GLs ou
 4GLs.</p>

<p>Pour terminer, pour certaines applications il n'est tout simplement
 pas possible d'utiliser un autre langage que l'assembleur. Ceci est
 particuli&egrave;rement vrai pour la plupart des exits.<br />
 Non seulement le syst&egrave;me d'exploitation, mais aussi un bon
 nombre de produits standards est programm&eacute; avec des exits, pour
 permettre une installation du logiciel adapt&eacute; &agrave; vos
 besoins. Pour la majorit&eacute; des exits l'assembleur est simplement
 in&eacute;vitable. Avec tous ces arguments il ne devrait plus y avoir
 de probl&egrave;mes insurmontables.</p>

/HTML

         HTMLDEF WHY.FRL
<!-- UK -->
<p>
 Pour <a href="#advantage">les avantages de l'assembleur</a>.<br />
 Pour
 <a href="#prejudice">
  les pr&eacute;jug&eacute;s contre l'assembleur
 </a>.<br />
 Pour <a href="#summary">le r&eacute;sum&eacute;</a>.
</p>

<p>
 Pour <a href="hlasm.htm">la page d'accueil fran&ccedil;aise</a>.<br />
 Pour
 <a href="../hlasm.htm">la page d'accueil g&eacute;n&eacute;rale</a>.
</p>

/HTML

         HTMLDEF WHY.FRF
<!-- FR -->
<p class="footer" align="center">
 Ce texte est &eacute;crit par A.F. Kornelis,
 traduit par Ren&eacute; Brandt.<br/>
 &copy; Copyright: A.F. Kornelis, 1997-2003.
 Tous droits r&eacute;serv&eacute;s.<br />
 La traduction: &copy; Copyright: Ren&eacute; Brandt, 2003.
 Tous droits r&eacute;serv&eacute;s.<br />
 E-mail <a href="mailto:abe@bixoft.nl">l'auteur</a>
 ou <a href="mailto:rene.brandt1@libertysurf.fr">le traducteur</a>.</p>

/HTML

         HTMLDEF WHY.ITH
<!-- IT -->
<!-- -->
<!-- Saved from http://www.bixoft.com/italiano/why.htm -->
<!-- -->
<title>HLASM - Perch&eacute; usare l'Assembler?</title>
<link rev="Bixoft introduction / sitemap" href="intro.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe" />
<meta http-equiv="description"
      content="About the pros and cons of using assembler for
      mainframes." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF WHY.ITT
<!-- IT -->
<h1 align="center">Perch&eacute; usare l'Assembler?</h1>

<p>L'utilizzo dell'Assembler come linguaggio di programmazione non
 &egrave; pi&ugrave; cos&igrave; diffuso. Di norma i programmatori
 preferiscono usare linguaggi di terza o di quarta generazione (di
 seguito: 3GLs o 4GLs).</p>

<p>Normalmente - per applicazioni ordinarie - questo &egrave;
 assolutamente vero. Tuttavia ci sono casi in cui sarebbe consigliabile
 valutare bene sia gli argomenti a favore sia gli argomenti contro
 l'utilizzo di questo linguaggio.</p>

<p>Se da un lato gli argomenti contro l'uso dell'Assembler sono in
 larga parte frutto di pregiudizi, dall'altro i motivi a favore di
 questo linguaggio sono relativamente poco conosciuti. Quando si
 conoscono i <strong>pregiudizi</strong> contro l'Assembler senza
 conoscerne i <strong>vantaggi</strong>, diventa difficile scegliere
 obiettivamente il linguaggio di programmazione adatto.</p>

<p>Una regola importante - cos&igrave; come per <em>qualsiasi</em>
 linguaggio di programmazione - &egrave; la seguente: senza personale
 qualificato non si raggiunger&agrave; alcun obiettivo, senza
 un'adeguata documentazione si rischier&agrave; di non sapere
 pi&ugrave; a che punto si &egrave; arrivati.</p>

<p>Di seguito troverai una panoramica dei pi&ugrave; importanti
 <a href="#advantage">vantaggi</a>
 dell'Assembler. Proseguendo, proveremo a smontarne i
 <a href="#prejudice">pregiudizi</a>.
 Alla fine cercheremo di trarre le
 <a href="#summary">conclusioni</a>.</p>

/HTML

         HTMLDEF WHY.IT1
<!-- IT -->
<h3>
 <a name="advantage" id="advantage">I vantaggi dell'Assembler.</a>
</h3>

<p>Lavorare con l'Assembler offre una gamma di possibilit&agrave;, non
 (tutte) disponibili nei 3GLs o 4GLs.</p>

<ul>
 <li>Errori evitabili.<br />
  Quante volte capita che l'applicazione si &quot;inceppi&quot; su una
  cosa cos&igrave; banale? Un Abend-0C7 a causa di una serie di spazi
  (blank), anzich&egrave; di zero? Oppure un dataset temporaneo
  allocato un po' troppo piccolo? Con l'aiuto di una semplice routine
  Assembler questo tipo di problemi possono essere risolti.
  La tua applicazione non si interrompe pi&ugrave;, continuando a
  funzionare. Tutti i problemi riscontrati verranno documentati nel
  joblog o in un error log separato, consentendo al controllore dei
  comandi a prendere le dovute contromisure.</li>
 <li>Utilizzo della memoria sopra la linea dei 16 MB.<br />
  Ancora oggi ci sono aziende che compilano i loro applicativi in
  Amode=24. Con l'aggiunta di piccoli moduli in Assembler si potranno
  far girare programmi applicativi sopra la linea dei 16 MB, liberando
  cos&igrave; spazio per quei programmi che girano sotto la 16MB-line.
 </li>
 <li>Gestione dinamica della memoria.<br />
  I programmi che mantengono dati in tabelle, liste o strutture ad
  albero non conoscono in anticipo di quanto cresceranno le dimensioni
  di questi oggetti. In Assembler la memoria pu&ograve; essere allocata
  o deallocata dinamicamente, consentendo di allargare o diminuire la
  grandezza di tali oggetti nella dimensione richiesta.</li>
 <li>Ottimizzazione.<br />
  I compilatori di ultima generazione creano certamente dei programmi
  efficienti. Tuttavia, essi non sono in grado di decidere quale
  criterio di ottimizzazione si adatta meglio ad un programma
  specifico. Dal momento che il programmatore conosce la struttura
  della sua applicazione, solo lui &egrave; in grado di prendere una
  tale decisione. Per esempio potrebbe decidere di ridurre il rischio
  di page-steal, facendo in modo che il suo programma giri pi&ugrave;
  velocemente e diminuendo quindi il carico del sottosistema di
  paginazione.</li>
 <li>Uso dei servizi del sistema operativo. Molti di questi servizi non
  sono disponibili per i linguaggi ad alto livello, e quando lo sono le
  linee di codice in pi&ugrave; richieste da questo linguaggio per
  servirsi di questa o quella facility mette molto spesso in secondo
  piano i vantaggi che ne sarebbero derivati in termini di prestazione.
  <br />
  Tra i diversi servizi, ricordiamo:
  <ul>
   <li>Data space.<br />
    Quei programmi che utilizzano grandi quantit&agrave; di memoria
    potrebbero giovarsi dell'uso dei data space. Questo riduce il
    bisogno di allocare dei work dataset (che a sua volta riduce l'I/O)
    e al tempo stesso riduce l'uso di memoria virtuale all'interno del
    tuo address space, diminuendo il rischio di abend per
    out-of-storage.</li>
   <li>Virtual look-aside facility.<br />
    Il VLF permette di mantenere dati in memoria virtuale, fuori dal
    proprio address space. Per quei dati usati frequentemente (ad
    esempio membri di alcuni dataset partitioned) questa servizio
    pu&ograve; ridurre i tempi di I/O della tua applicazione.</li>
   <li>Accesso contemporaneo a pi&ugrave; dataset.<br />
    Quando un'applicazione necessita di accedere ai record di due o
    pi&ugrave; dataset, questi record possono essere scritti e/o letti
    contemporaneamente. &Egrave; perfino possibile accedere a diversi
    record di un singolo dataset nello stesso momento. Questa
    contemporaneit&agrave; pu&ograve; diminuire considerevolmente il
    tempo di attesa dell'I/O, specialmente quando i dataset interessati
    risiedono su volumi diversi.</li>
   <li>Subtasks.<br />
    Separando uno o pi&ugrave; subtask da un task principale,
    quest'ultimo pu&ograve; aumentare considerevolemente la sua
    velocit&agrave; d'esecuzione. Per esempio eliminando il bisogno di
    scrivere dati su un work-dataset. Oppure lasciando il compito di
    scrivere i necessari record cronologici ad un subtask, facendo
    cos&igrave; in modo che la transazione vendite possa essere gestita
    pi&ugrave; velocemente.</li>
   <li>Reenterability.<br />
    Rendendo rientrabili quei segmenti di programmi molto spesso
    utilizzati, questi stessi possono essere piazzati in common storage
    (preferibilmente sopra la linea dei 16MB). Questo significa che
    tutti quei programmi che usano quel codice possono essere eseguiti
    pi&ugrave; efficientemente, perch&eacute; l'eventualit&agrave; di
    una condizione di page fault in questo tipo di codice &egrave;
    minima.</li>
  </ul>
 </li>
</ul>

/HTML

         HTMLDEF WHY.IT2
<!-- IT -->
<h3>
 <a name="prejudice" id="prejudice">
  I pregiudizi contro l'Assembler.
 </a>
</h3>

<p>Esistono diversi pregiudizi contro l'utilizzo dell'Assembler. Tra
 questi ricordiamo i pi&ugrave; ricorrenti:</p>
<ol>
 <li>In Assembler la programmazione strutturata &egrave; impossibile.
  <br />
  Questo non &egrave; vero. Al contrario, l'Assembler offre in
  proposito molte pi&ugrave; possibilit&agrave; rispetto alla maggior
  parte dei 3GLs.</li>
 <li>La manutenzione dei programmi in Assembler &egrave; di gran lunga
  pi&ugrave; costosa rispetto a quella dei 3GLs.<br />
  Al tempo in cui i 3GLs furono introdotti, quest'affermazione poteva
  essere vera. Al presente questa posizione &egrave; certamente
  opinabile.</li>
 <li>L'Assembler &egrave; un linguaggio scomodo e difficile da
  imparare.<br />
  L'Assembler &egrave;, certamente agli occhi di un profano, meno
  leggibile rispetto al Cobol. D'altra parte &egrave; molto pi&ugrave;
  difficile avere la completa padronanza di linguaggi come il C e il
  C++.</li>
</ol>

<dl compact="compact">
 <dt>Punto 1.</dt>
 <dd>In Assembler la programmazione strutturata &egrave; impossibile.
  <br />
  Scrivere programmi in modo strutturato &egrave; essenzialmente una
  questione di stile e di abilit&agrave;. Se il linguaggio di
  programmazione offre diverse possibilit&agrave; in questo senso,
  questo rappresenta certamente un aiuto, ma niente di pi&ugrave;.
  <ul>
   <li>Quando parliamo di segmentazione dei programmi teniamo presente
    che l'Assembler offre pi&ugrave; possibilit&agrave; rispetto ai
    3GLs: oltre al normale uso di subroutine o funzioni, in Assembler
    &egrave; anche possibile dividere i programmi in Control Section
    (CSECTs), che a loro volta potranno essere sottodivisi
    ulteriormente in subroutines e/o funzioni.<br />
    Inoltre &egrave; possibile scegliere diversi meccanismi di
    chiamata. Tra gli altri ricordiamo lo standard MVS-linkage tramite
    il registro 14, il linkage stack, od altri meccanismi di chiamata
    con o senza l'uso della jump-table.<br />
    Il passaggio dei parametri pu&ograve; alla fine essere scelto in
    base al valore, al riferimento, o a un insieme di questi due.</li>
   <li>Per ci&ograve; che riguarda il controllo dei loop, l'Assembler
    offre possibilit&agrave; comparabili con i 3GLs: sono le cosiddette
    istruzioni branch on index e branch on instructions. Con l'ausilio
    di macro queste facility possono essere estese con istruzioni
    pi&ugrave; complesse.</li>
   <li>Cos&igrave; come la maggior parte dei 3GLs, l'Assembler &egrave;
    in grado di copiare codice standard da un membro di una libreria
    direttamente nel tuo programma.</li>
   <li>Le macro consentono quindi un'ampia scelta per strutturare i
    propri programmi, e per standardizzare la creazione di programmi
    ricorrenti. Mediante l'uso di conditional assembly &egrave; sempre
    possibile ottimizzare il codice da generare. La maggior parte dei
    3GLs non offre funzionalit&agrave; comparabili.<br />
    &nbsp;<br />
   </li>
  </ul>
 </dd>
 <dt>Punto 2.</dt>
 <dd>La manutenzione dei programmi Assembler &egrave; pi&ugrave;
  costosa rispetto ai 3GLs.<br />
  Quando i 3GLs furono introdotti, esisteva gi&agrave; una vasta base
  di programmi Assembler. Siccome la programmazione strutturata era un
  principio relativamente nuovo per quei tempi, questi programmi
  lasciavano sotto questo aspetto molto a desiderare. In Assembler -
  cos&igrave; come per altri linguaggi - si pu&ograve; strutturare i
  propri programmi tanto quanto se ne desideri. Con conseguenze per la
  loro successiva manutenzione.<br />
  In Assembler, pi&ugrave; che con i 3GLs, si hanno pi&ugrave;
  possibilit&agrave; di fare molta confusione. Tuttavia, grazie alle
  macro, si ha un considerevole numero di opzioni supplementari per
  strutturare i propri programmi rispetto agli altri linguaggi.<br />
  &nbsp;<br />
  La questione dell'abilit&agrave; &egrave; di primaria importanza. Un
  programmatore Cobol che &quot;se la cava un po' con l'Assembler&quot;
  non pu&ograve; certamente misurarsi con un programmatore Assembler
  senior. Gli effetti sono verificabili non solo per ci&ograve; che
  rigurda il tempo necessario per finire un determinato lavoro, ma
  anche per quello che riguarda la qualit&agrave; del codice prodotto.
  Il principale problema quindi &egrave; come riuscire a trovare
  personale qualificato per il proprio team. Un problema che si pone
  comunque, a prescindere dal linguaggio scelto.<br />
  &nbsp;<br />
  Cos&igrave;, se vogliamo fare un giusto paragone per il personale
  richiesto tra Assembler e 3GLs, dovremo paragonare professionisti con
  professionisti, prendendo anche in considerazione l'et&agrave; dei
  programmi (leggi: grado di strutturazione), cos&igrave; come la
  documentazione disponibile.<br />
  &nbsp;<br />
  La nostra esperienza ci dice che quando si lavora con l'Assembler per
  sviluppare nuovi programmi, si necessita un 10, 20 percento in
  pi&ugrave; di personale. Per la manutenzione di programmi gi&agrave;
  esistenti la documentazione disponibile o il grado di strutturazione
  dei programmi stessi possono differire di molto da caso a caso, per
  cui diventa difficile fornire stime attendibili.<br />
  &nbsp;<br />
  Un esempio: uno dei nostri clienti possiede un modulo in Assembler,
  creato da noi, e uno in Cobol. Entrambi i moduli fanno esattamente la
  stessa cosa. Per implementare alcune modifiche il programmatore
  Assembler ha avuto bisogno di una giornata, mentre il programmatore
  Cobol ha lavorato tre giorni. Anche se questo pu&ograve; sembrare
  un'eccezione, l'esempio ci mostra come l'aggiornamento di programmi
  Assembler non &egrave; necessariamente pi&ugrave; oneroso rispetto ai
  3GLs.<br />
  &nbsp;<br /></dd>
 <dt>Punto 3.</dt>
 <dd>L'Assembler &egrave; un linguaggio scomodo e difficile da
  imparare.<br />
  Se siete in mano a dei dilettanti sarebbe meglio evitare di scegliere
  l'Assembler. Cos&igrave; come per altri linguaggi, riuscireste solo a
  mettervi in difficolt&agrave; da soli.<br />
  Certamente esistono anche professionisti qualificati in giro. Non
  solo hanno la padronanza del linguaggio, ma posseggono una vasta
  conoscenza delle macro che questo linguaggio &egrave; in grado di
  offrire. Questo ci permette di scrivere programmi pi&ugrave;
  rapidamente, efficienti e chiari.</dd>
</dl>

/HTML

         HTMLDEF WHY.IT3
<!-- IT -->
<h3><a name="summary" id="summary">Conclusioni.</a></h3>

<p>Gli argomenti a favore e contro l'uso dell'Assembler possono essere
 riassunti come segue:</p>
<ul>
 <li>Lavorare con l'Assembler necessita di pi&ugrave; tempo, anche se
  non cos&igrave; tanto quanto si possa pensare.</li>
 <li>L'Assembler offre pi&ugrave; possibilit&agrave; per strutturare i
  programmi, anche se la mancanza di abilit&agrave; potrebbe far
  emergere problemi in fase di aggiornamento.</li>
 <li>Con l'Assembler si hanno pi&ugrave; possibilit&agrave; di
  risolvere o prevenire problemi di prestazione.</li>
 <li>Ci vogliono pi&ugrave; tempo e risorse per trovare o formare dei
  professionisti.</li>
</ul>

<p>Concludendo, il nostro consiglio &egrave; il seguente: non usate
 l'Assembler quando non &egrave; necessario. D'altra parte, in presenza
 di buone ragioni, non scartatelo a priori; l'Assembler non deve
 spaventare. E in caso si &egrave; scelto di farne uso, utilizzatelo
 per quei moduli che ne trarranno vantaggio. La fetta pi&ugrave; grande
 del vostro applicativo sar&agrave; probabilmente scritta in un 3GLs o
 4GLs.</p>

<p>Un ultima considerazione: per alcuni applicativi &egrave;
 semplicente impossibile non usare l'Assembler. Questo vale soprattutto
 per la maggior parte delle exit. Non solo il sistema operativo, ma
 anche molti prodotti se ne servono per adattarne le
 funzionalit&agrave; alle proprie esigenze. Per molte di queste exit la
 codifica in Assembler &egrave; inevitabile. E con gli argomenti
 discussi fin qui, quest'ultima non dovrebbe (pi&ugrave;) rappresentare
 un problema insormontabile.</p>

/HTML

         HTMLDEF WHY.ITL
<!-- IT -->
<p>
 Vai a <a href="#advantage">I vantaggi dell'Assembler</a>.<br />
 Vai a <a href="#prejudice">I pregiudizi contro l'Assembler</a>.<br />
 Vai alle <a href="#summary">Conclusioni</a>.<br />
</p>

<p>
 Alla <a href="hlasm.htm">Home Page italiana</a>.<br />
 Alla <a href="../hlasm.htm">Home Page generale</a>.
</p>

/HTML

         HTMLDEF WHY.ITF
<!-- IT -->
<p class="footer" align="center">
 Il testo di questa pagina &egrave; a cura di A.F. Kornelis,
 tradotto da Walter Marguccio.<br/>
 &copy; Copyright: A.F. Kornelis, 1997-2004. Tutti i diritti riservati.
 <br />
 La traduzione: &copy; Copyright: Walter Marguccio, 2004.
 Tutti i diritti riservati.<br />
 Scrivi al<a href="mailto:abe@bixoft.nl">l'autore</a>
 oppure <a href="mailto:walter_marguccio@yahoo.com">al traduttore</a>.
</p>

/HTML
