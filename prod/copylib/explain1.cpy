         HTMLDEF EXPLAIN1.UKH
<!-- UK -->
<!-- -->
<!-- Copied from http://www.bixoft.nl/english/explain1.htm -->
<!-- -->
<title>Bixoft - Use of extended explain tables</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft introduction / sitemap" href="intro.htm" />
<meta http-equiv="keywords"
      content="DB2, Explain, Extended Explain, Explain tables" />
<meta http-equiv="description"
      content="Samples of queries on extended explain tables." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF EXPLAIN1.UKT
<!-- UK -->
<h1 align="center">Queries on extended explain tables in DB2.</h1>

<p>At regular intervals <a href="http://www.abis.be">ABIS</a>
 publishes sets of articles relating to DB2. This series of
 publications is titled
 <a href="http://www.abis.be/html/nlExploreDB2.html">Exploring DB2</a>
 . Unfortunately for most readers, these publications are written
 entirely in the Dutch language.</p>

<p>In the Januari 2010 issue Peter Vanroose challenged us
 - the readers - to send in a query for presenting information
 from the extended explain tables. Of course, I could not resist
 such a challenge.</p>

<p>This document contains the following parts:</p>
<ul>
 <li><a href="#chap01">The query</a></li>
 <li><a href="#chap02">Explain with Range information</a></li>
 <li>
  <a href="#chap03">Explain with Range and Sort information.</a>
 </li>
</ul>
/HTML

         HTMLDEF EXPLAIN1.UK1
<!-- UK -->
<h2><a name="chap01" id="chap01">
 The Query</a></h2>

<p>For a bit of variety, I wanted to create a query using a Common
 Table Expression and at least one partitioned table.
 Therefore a catalog query seemed less appropriate. So I created
 a query on the IVP database in stead. After all, the IVP database
 contains a partitioned table and most installations do have the
 IVP database installed. Hopefully therefore everybody will be
 able to use the queries below.</p>

<p>It is entirely evident that this query is not very efficient.
 This time we're looking for explain data, not performance.
 Query optimization is outside this article's scope. The same
 holds true for creating the extended explain tables.<br/>
 (These are described in the Performance Monitoring and Tuning Guide
 and will be created for you by OSC. Alternatively, you can use
 member DSNTIJOS in the SDSNSAMP library.)</p>

/HTML

         HTMLDEF EXPLAIN1.UK2
<!-- UK -->
<h2><a name="chap02" id="chap02">
 Explain with Range information</a></h2>

<p>After executing</p>
<pre>
   EXPLAIN ALL SET QUERYNO=114 FOR
</pre>
<p>with the above query the various explain tables
 will be supplied with appropriate data.
</p>

<p>A basic query on just PLAN_TABLE tells us there are 7 steps
 (table rows) required for executing this query.
 From DSN_SORT_TABLE we learn there are 4 sorts:
 two for the order-by clause, 1 for the distinct clause in the
 Common Table Expression, and 1 for executing the join with
 the CTE's result-set.</p>

<p>As a first step I wanted to extend my standard query for PLAN_TABLE
 with data on a potential page-range scan.
 After all, that would make a tablespace scan (accesstype=R) slightly
 less expensive... To show this, we need to use data from the
 DSN_PGRANGE_TABLE. I have decided to add the number of partitions
 to the access column.</p>

<p>Some points of note regarding the below query and its results:</p>
<ul>
 <li>Formatting is not ideal - especially the leftmost 5 columns
  could use some leading spaces. However, presentation was not the
  primary purpose of this exercise.</li>
 <li>Result rows are sorted - within each query - descending on
  Parent Qblockno. I started out sorting them ascending, but that
  resulted in a - to my taste - illogical sequence.
  With descending sort the result more closely matches the actual
  order of processing by DB2.</li>
 <li>In column Access you may note the I(2) occurrence - accompanied
  by LST in the PREF column indicating List Prefetch - which means
  that DB2 will perform an Index Scan on 2 partitions. Quite a bit
  better than a full Index Scan which would have had to process all
  5 partitions.</li>
 <li>In the very same Access column you may also note the occurrence
  of T/R. This means the result set of the CTE will be materialized
  and subsequently accessed using a sparse index. This is the meaning
  of the T. Should this fail to work out, DB2 will perform a full scan
  of the CTE's result set; this alternative being indicated by the
  R.</li>
 <li>Information on locking is not shown. Anyone interested can easily
  add the relevant colums.</li>
</ul>

<p>The query and associated results are as follows:</p>
/HTML

         HTMLDEF EXPLAIN1.UK3
<!-- UK -->
<h2><a name="chap03" id="chap03">
 Explain with Range and Sort information</a></h2>

<p>Next I wished to see whether I could add information from
 DSN_SORT_TABLE to this query in order to get a more complete
 overview of explained queries. This means that rows from a different
 table will have to be added which implies a UNION ALL will have to be
 used. Not at all a problem in itself, but it does have a few
 complicating consequences:</p>

<p>First of all the ORDER BY clause needs to be changed. Column names
 can no longer be used, in stead we need to specify column numbers.
 This reduces the query's legibility and understandability,
 but so be it.</p>

<p>At the same time we now have two subqueries each having a WHERE
 clause that needs to select the correct query for explaining.
 I don't like such solutions; not just because it's redundant, but
 mainly because it happens all too often that these WHERE clauses
 get out of sync, rendering the end result of the complete query
 useless. Therefore I have added a CTE named QUERIES to hold the
 number(s) of the query/queries to be explained.</p>

<p>As it turned out I needed two more CTEs in order to find first
 the numbers and subsequently the names of the tables to be
 sorted.<br/>
 In order to limit the size of the result sets of these new CTE's,
 I reused the QUERIES CTE, which holds the relevant query numbers.
 Thus the QUERIES CTE now replaces a total of 4 WHERE clauses.</p>

<p>Thus I added three CTEs in order to extend my query.
 This, however, entailed a risk: when using three or more CTEs
 a CONCAT function in the SELECT clause may result in column values
 being prefixed with an extraneous byte containing a value of X'00',
 which can be quite ugly.<br/>
 Luckily, this query does not suffer from this problem because
 it does not comply with the &quot;requirement&quot; that a
 specific relation exist between the CTEs involved.</p>

<p>After verifying this I could start modifying the actual query.
 The first part remained almost the same.Only the WHERE clause
 needed to be changed. Selection on query-number had to be replaced
 by an inner join with relevant query numbers, as supplied by the
 CTE QUERIES. And - since data on sorting now will be obtained from
 DSN_SORT_TABLE - rows with METHOD=3 should now be skipped.</p>

<p>In order to add the data on sorting a second query is added to the
 existing one. Of course this second query has to create a result
 set with the same columns, although it obtains its data from
 DSN_SORT_TABLE in stead of PLAN_TABLE.</p>

<p>With this query and its result set, as with the previous one,
 some points of note are:</p>
<ul>
 <li>Columns PAR and CTEREF have been removed to make room.
  These columns were empty in this example anyway...</li>
 <li>Compared with the prior version two rows have disappeared.
  These are the rows indicating a sort (method = 3).
  I might have let them remain, but they'd have been redundant.
  It's a matter of preference.</li>
 <li>For the join-with-sort some of the information does appear double.
  I might have suppressed it, but I didn't feel it was worth the
  effort. Again: a matter of taste.</li>
 <li>4 new rows ahve been added, based on the content of
  DSN_SORT_TABLE. The net result being an increase of two rows.
  Thus we now have more information available than with the prior
  query.</li>
 <li>Results are sorted slightly awkward. For a JOIN requiring
  a sort, the JOIN is shown before the SORT, while of course DB2
  will perform the SORT before the JOIN, rather than afterwards.
  A solution for this sorting problem falls outside this article's
  scope.</li>
 <li>Column OPSQ (or MIXOPSEQ) now contains numbers for the rows
  originating from the PLAN_TABLE (not visible in our example)
  and characters for the various sort-steps (SORTNO) from the
  sorting table.<br/>
  This was done primarily to prevent numbers from being assigned
  and appearing more than once. As a secondary advantage we can now
  readily distinguish between the two types of rows.</li>
 <li>We can now more easily see what the Access T/R entails:
  the CTE's result-set is being sorted, creating an intermediate
  result set, which can be accessed efficiently using a sparse
  index.<br/>
  Should DB2, for whatever reason, be unable to perform the sort,
  DB2 will use a &quot;normal&quot; tablespace scan in stead.</li>
 <li>It looks like the Order by clause is being implemented using
  two sorts. If you look more closely, however, you'll notice that
  the first of these sorts is exactly identical to the sort for
  DISTINCT in the CTE. Further investigation by IBM-Belgium's
  Bart Steegmans has revealed that the first sort is not actually
  executed. The pertinent rows in DSN_SORT_TABLE and DSN_SORTKEY_TABLE
  have been created in error by explain. To amend this situation
  IBM have opened APAR PM16586.</li>
</ul>

<p>This query and associated results are as follows:</p>
/HTML

         HTMLDEF EXPLAIN1.UKL
<!-- UK -->
<p class="remark">Concluding remark:<br/>
 I only had a very limited set of explain data at my disposal.
 Therefore I cannot guarantee these queries will show explain data
 for &quot;real&quot; SQL from your development or production
 environments reliably.<br/>
 Should you find any defect or shortcoming, I would gladly hear
 from you.<br/>
 Any other remarks or shortcomings are equally welcome.</p>

<p>
 To <a href="#chap01">The query</a><br/>
 To <a href="#chap02">Explain with Range information</a><br/>
 To <a href="#chap03">Explain with Range and Sort information.</a>
</p>

/HTML

         HTMLDEF EXPLAIN1.UKF
<!-- UK -->
<h1 align="center">Queries on extended explain tables in DB2.</h1>

<p>At regular intervals <a href="http://www.abis.be">ABIS</a>
 publishes sets of articles relating to DB2. This series of
 publications is titled
 <a href="http://www.abis.be/html/nlExploreDB2.html">Exploring DB2</a>
 . Unfortunately for most readers, these publications are written
 entirely in the Dutch language.</p>

<p>In the Januari 2010 issue Peter Vanroose challenged us
 - the readers - to send in a query for presenting information
 from the extended explain tables. Of course, I could not resist
 such a challenge.</p>

<p>This document contains the following parts:</p>
<ul>
 <li><a href="#chap01">The query</a></li>
 <li><a href="#chap02">Explain with Range information</a></li>
 <li>
  <a href="#chap03">Explain with Range and Sort information.</a>
 </li>
</ul>
/HTML

         HTMLDEF EXPLAIN1.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/explain1.htm -->
<!-- -->
<title>Bixoft - Gebruik van extended explain tabellen</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft introductie / sitemap" href="intro.htm" />
<meta http-equiv="keywords"
      content="DB2, Explain, Extended Explain, Explain tabellen" />
<meta http-equiv="description"
      content="Voorbeelden van queries op extended explain tabellen."
      />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF EXPLAIN1.NLT
<!-- NL -->
<h1 align="center">Queries op extended explain tabellen in DB2.</h1>

<p>Met enige regelmaat brengt <a href="http://www.abis.be">ABIS</a>
 enkele artikelen over DB2 onder de titel
 <a href="http://www.abis.be/html/nlExploreDB2.html">Exploring DB2</a>
 .</p>

<p>In de Exploring DB2 van januari 2010 nodigde Peter Vanroose ons
 - de lezers - uit om een query in te sturen voor het presenteren van
 informatie uit de extended explain tabellen. Deze uitdaging heb ik
 natuurlijk graag aangenomen.</p>

<p>Dit document bevat de volgende onderdelen:</p>
<ul>
 <li><a href="#chap01">De query</a></li>
 <li><a href="#chap02">Explain met Range informatie</a></li>
 <li><a href="#chap03">Explain met Range en Sort informatie.</a></li>
</ul>
/HTML

         HTMLDEF EXPLAIN1.NL1
<!-- NL -->
<h2><a name="chap01" id="chap01">
 De Query</a></h2>

<p>Voor de broodnodige variatie wilde ik een query maken met een Common
 Table Expression en ten minste &eacute;&eacute;n gepartitioneerde
 tabel. Een catalog query was daardoor minder geschikt. Dus heb ik een
 query gebouwd op de IVP database, want deze bevat een gepartitioneerde
 tabel. Bovendien hebben de meeste installaties de IVP database
 ge&iuml;nstalleerd en hopelijk kan iedereen daardoor uit de voeten met
 onderstaande query.</p>

<p>Dat dit geen bijzonder effici&euml;nte query is, behoeft geen
 betoog.
 Deze keer gaat het immers alleen om de explain data, niet om de
 performance van de query. Optimalisatie van deze query valt dan ook
 buiten de scope van dit artikel, evenals het aanmaken van de extended
 explain tabellen.<br/>
 (Die staan overigens beschreven in de
 Performance Monitoring and Tuning Guide
 en worden aangemaakt door OSC. U kunt ook member DSNTIJOS uit de
 SDSNSAMP gebruiken.)</p>

/HTML

         HTMLDEF EXPLAIN1.NL2
<!-- NL -->
<h2><a name="chap02" id="chap02">
 Explain met Range informatie</a></h2>

<p>Na uitvoering van </p>
<pre>
   EXPLAIN ALL SET QUERYNO=114 FOR
</pre>
<p>met bovenstaande query hebben we de diverse explain tabellen
 voorzien van data.
</p>

<p>Een basis-query op alleen de PLAN_TABLE levert het inzicht op,
 dat er 7 stappen (tabelregels) zijn voor het uitvoeren van deze query.
 Uit de DSN_SORT_TABLE leren we dat er 4 sort-stappen zijn:
 twee voor de order-by clause, 1 voor de distinct clause in de
 Common Table Expression, en 1 voor het uitvoeren van de join met
 de resultaat-set van de CTE.</p>

<p>Als eerste stap wilde ik mijn standaard-query voor PLAN_TABLE
 uitbreiden met gegevens voor een eventuele page-range scan.
 Dat maakt immers een tablespace scan (accesstype=R) iets minder
 bezwaarlijk... Hiertoe dienen we de betreffende info uit de tabel
 DSN_PGRANGE_TABLE te gebruiken. Ik heb er voor gekozen om het aantal
 deelnemende partities toe te voegen aan de access kolom.</p>

<p>Bij onderstaande query en resultaten vallen de volgende zaken op:
</p>
<ul>
 <li>De formattering is niet ideaal - vooral de eerste 5 kolommen
  kunnen wel een paar voorloopspaties gebruiken. Echter, de presentatie
  was niet het doel van deze exercitie.</li>
 <li>De sortering is - binnen de query - aflopend op Parent Qblockno.
  Ik had hem eerst oplopend gedefinieerd, maar dat gaf een - naar mijn
  gevoel - onlogische volgorde. Met aflopende sort sluit de presentatie
  beter aan bij wat DB2 doet in volgordelijke zin tijdens de uitvoering
  van de query.</li>
 <li>In de kolom Access zien wij een I(2) - overigens met LST in de
  PREF kolom, oftewel met List Prefetch - hetgeen inhoudt dat DB2 een
  Index scan over 2 partities zal uitvoeren. Aanzienlijk beter dan een
  volledige Index scan, want die zou alle 5 partities hebben moeten
  doorlezen.</li>
 <li>In diezelfde kolom Access zien wij ook een T/R. Dit houdt in dat
  de resultaten van de CTE zijn gematerialiserd en nu benaderd worden
  via een sparse index. Dat is waar de T voor staat. Als dit niet lukt,
  dan zal DB2 terug vallen op een scan van de resultaat-set van de CTE;
  dit alternatief wordt weergegeven door de R.</li>
 <li>Informatie over locking wordt niet weergegeven. Wie hierin is
  ge&iuml;nteresseerd, kan de betreffende kolommen makkelijk zelf
  toevoegen.</li>
</ul>

<p>De query en bijbehorende resultaten zien er als volgt uit:</p>
/HTML

         HTMLDEF EXPLAIN1.NL3
<!-- NL -->
<h2><a name="chap03" id="chap03">
 Explain met Range en Sort informatie</a></h2>

<p>Vervolgens wilde ik zien, of ik ook de informatie uit
 DSN_SORT_TABLE in deze query kon opnemen om zo een beter totaal-beeld
 van de query te verkrijgen. Complicatie hierbij is, dat dit
 aanvullende rijen uit een andere tabel betreft, en dat er dus een
 UNION ALL moet worden toegepast. Op zich geen punt, maar het heeft wel
 enkele consequenties:</p>

<p>Allereerst dient de ORDER BY clausule aangepast te worden.
 Deze kan niet langer met kolom-namen werken, maar moet nu worden
 geformuleerd met gebruikmaking van kolom-nummers.
 Dat maakt de query minder leesbaar en begrijpelijk,
 maar het is niet anders.</p>

<p>Tevens ontstaat nu de situatie dat beide sub-queries een
 WHERE-clausule bevatten waarin de juiste query moet worden
 geselecteerd voor het ophalen van de explain data.
 Ik houd daar niet van; enerzijds omdat het redundant is, en anderzijds
 omdat het te vaak gebeurt dat de where
 clausules uit de pas gaan lopen, waardoor het eindresultaat niet meer
 bruikbaar is. Daarom heb ik de CTE QUERIES toegevoegd om het nummer
 (of de nummers) van de te explainen query/queries te defini&euml;ren.
</p>

<p>Verder bleek ik nog twee extra CTEs nodig te hebben om de te
 sorteren tabel-nummers en de bijbehorende tabel-namen te vinden.<br/>
 Om de resultaten van deze CTEs in omvang te beperken, heb ik opnieuw
 gebruik gemaakt van de CTE QUERIES die de relevante query-nummers
 bevat. Zodoende vervangt de CTE QUERIES nu in totaal 4 WHERE
 clausules.</p>

<p>Aldus heb ik drie CTEs aan mijn query toegevoegd om mijn query
 verder mee uit te bouwen. Dit hield echter een risico in:
 bij gebruik van drie of meer CTEs kan een CONCAT functie in de
 resultaat-set resulteren in kolom-waarden die een extra voorloop-byte
 krijgen met waarde X'00', wat erg storend kan zijn.<br/>
 In deze query komt dat gelukkig niet voor. Dat komt omdat niet
 voldaan is aan de &quot;eis&quot; voor het optreden van dit probleem
 dat er tussen de CTEs een specifieke relatie moet bestaan.</p>

<p>Nadat ik dat had geverifieerd kon ik de query daadwerkelijk verder
 uitwerken. Het eerste deel van de query bleef vrijwel ongewijzigd.
 Eigenlijk hoefde alleen de Where-clausule aangepast te worden.
 De selectie op query-nummer moest worden vervangen door een inner
 join met de relevante query-nummers (CTE queries).
 Maar omdat de SORT-gegevens nu uit een andere tabel gehaald gaan
 worden, kunnen de rijen met METHOD=3 worden overgeslagen.</p>

<p>Voor het toevoegen van de sorteer-gegevens is een tweede query aan
 de eerste toegevoegd. Deze levert natuurlijk een resultaat-set met
 dezelfde kolommen, maar haalt haar informatie uit DSN_SORT_TABLE
 in plaats van PLAN_TABLE.</p>

<p>Ook bij deze query zijn enkele kanttekeningen te plaatsen:</p>
<ul>
 <li>De kolommen PAR en CTEREF zijn verdwenen wegens plaatsgebrek.
  De kolommen waren in dit voorbeeld overigens leeg...</li>
 <li>Ten opzichte van de vorige query zijn twee rijen verdwenen.
  Dit zijn de rijen die een sort aangaven (method = 3).
  Ik had ze ook kunnen laten staan, maar dan zouden ze redundant
  aanwezig zijn geweest. Kwestie van voorkeur.</li>
 <li>Bij join-met-sort verschijnt een deel van de informatie wel
  dubbel. Dit zou te onderdrukken zijn, maar het stoorde mij niet.
  Opnieuw: kwestie van voorkeur.</li>
 <li>4 nieuwe rijen zijn toegevoegd op basis van de inhoud van
  DSN_SORT_TABLE. Netto dus twee rijen meer dan in de vorige query.
  Aldus hebben wij nu meer informatie tot onze beschikking dan uit
  de vorige query.</li>
 <li>De sortering is ietwat onhandig. Bij een JOIN die een sort
  vereist wordt de JOIN getoond v&oacute;&oacute;r de bijbehorende
  SORT, terwijl vanzelfsprekend de SORT altijd zal worden uitgevoerd
  v&oacute;&oacute;r de JOIN; niet erna.
  Dit is wel oplosbaar, maar valt buiten de scope van dit artikel.</li>
 <li>Kolom OPSQ oftewel MIXOPSEQ bevat nu nummers voor de rijen uit
  PLAN_TABLE (niet zichtbaar in ons voorbeeld) en letters voor de
  verschillende sort-steps (SORTNO) uit de sort-tabel.<br/>
  Dit is in de eerste plaats gedaan om te voorkomen dat er eventueel
  dubbele nummers zouden verschijnen, maar heeft als bijkomend voordeel
  dat het onderscheid tussen de beide rij-typen zichtbaar blijft.</li>
 <li>We kunnen nu ook beter zien hoe dat zit met die access T/R:
  de resultaat-set van de CTE wordt eerst gesorteerd, dat levert een
  tussenresultaat op die middels sparse index access efficient te
  benaderen valt.<br/>
  Mocht DB2 om wat voor reden ook de sort niet kunnen uitvoeren,
  dan valt DB2 terug op de &quot;gewone&quot; tablespace scan.</li>
 <li>Het lijkt net of de Order by clausule wordt gerealiseerd door een
  dubbele sort. Als we goed kijken, dan zien we echter dat de eerste
  sort exact identiek is aan de sort voor DISTINCT in de CTE. Nader
  onderzoek door Bart Steegmans van IBM Belgi&euml; heeft uitgewezen
  dat deze eerste sort niet wordt uitgevoerd. De betreffende rijen in
  DSN_SORT_TABLE en DSN_SORTKEY_TABLE zijn onterecht aangemaakt door
  explain. IBM heeft hiervoor APAR PM16586 geopend.</li>
</ul>

<p>Deze query en bijbehorende resultaten zien er als volgt uit:</p>
/HTML

         HTMLDEF EXPLAIN1.NLL
<!-- NL -->
<p class="remark">Ten slotte:<br/>
 ik had slechts een zeer beperkte set explain gegevens tot mijn
 beschikking. Ik kan dus niet garanderen dat deze queries de explain
 data ook bruikbaar weergeven voor &quot;echte&quot; SQL uit uw
 ontwikkel- of productie-omgevingen.<br/>
 Mocht u een defect vinden, dan hoor ik dat natuurlijk graag.<br/>
 Ook andere opmerkingen of vragen zijn van harte welkom.</p>

<p>
 Naar <a href="#chap01">De query</a><br/>
 Naar <a href="#chap02">Explain met Range informatie</a><br/>
 Naar <a href="#chap03">Explain met Range en Sort informatie.</a>
</p>

/HTML

         HTMLDEF EXPLAIN1.NLF
<hr class="short" width="50%" />
<p class="footer" align="center">
 &copy; Copyright B.V. Bixoft 2010. Alle rechten voorbehouden.
<br />
 Bixoft &reg; is een handelsmerk van B.V. Bixoft<br />
 <a href="mailto:bixoft@bixoft.nl">e-mail</a> Bixoft.</p>
/HTML
