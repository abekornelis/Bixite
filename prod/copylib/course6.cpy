         HTMLDEF COURSE6.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/course6.htm -->
<!-- -->
<title>Bixoft Course 6 - High Level Assembler: Macro Programming
</title><link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft courses" href="courses.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe, Course, Hlasm" />
<meta http-equiv="description"
      content="About Bixoft's course for OS/390 Assembler Language:
      Macro Programming" />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF COURSE6.UKT
<!-- UK -->
<h1 align="center">High Level Assembler: Macro Programming.</h1>

<p>This course covers the macro facilities available with the High
 Level
 Assembler. It also discusses advanced macro programming techniques,
 such as abstract data types, inheritance and function overlaying.</p>

<p>The course is intended for:</p>

<ul>
 <li>Experienced Assembler programmers needing to brush up on their
  macro
  programming skills.</li>
 <li>Assembler programmers with some experience needing to expand
  their
  understanding of macro facilities available.</li>
</ul>

<p>This overview comes in three parts, which are presented in sequence
 below:</p>
<ol>
 <li><a href="#part1">Course Description</a></li>
 <li><a href="#part2">Course Objectives</a></li>
 <li><a href="#part3">Topical Outline</a></li>
</ol>

/HTML

         HTMLDEF COURSE6.UK1
<!-- UK -->
<h2><a name="part1" id="part1">Course Description</a></h2>

<p>Recommended Duration: 2 Days</p>

<p>Benefits: Students who complete this course will be able to write
 or maintain macros
 for Assembler programs. The emphasis is on learning the relevant
 macro
 facilities available as well as learning to use them to implement an
 advanced programming environment.</p>

<p>Audience: Experienced Assembler programmers needing to acquire
 additional macro
 programming skills.</p>

<p>Prerequisites: At the very least the student entering this course
 should have background
 in using ISPF/PDF or a similar product used for creating programs
 and
 submitting jobs. Some experience in writing programs in Assembler.
</p>

<p>Related IBM Materials. With IBM's permission this course is based
 upon John Ehrman's SHARE
 presentation &quot;Assembler as a Higher Level Language: Macros and
 Conditional Assembly Techniques&quot;.<br />
 Access to the following IBM manual in the classroom is recommended
 (via hardcopy, BookManager, etc.):</p>
<ul>
 <li>SC26-4940 - High Level Assembler reference</li>
</ul>

<p>Major Topics Include:</p>
<ul>
 <li>Conditional Assembly Language</li>
 <li>Statement Selection</li>
 <li>Statement Generation and Substitution</li>
 <li>External Conditional Assembly Functions</li>
 <li>Debugging Conditional Assembly Language</li>
 <li>Macro Facility concepts</li>
 <li>Macro Definition</li>
 <li>Macro Comments and Readability</li>
 <li>Macro Parameters</li>
 <li>Macro Arguments Attributes</li>
 <li>Global Variables</li>
 <li>Macro Debugging Techniques</li>
 <li>Defining Symbols</li>
 <li>Generating a Sequence of Values</li>
 <li>MVC with Source Operand's Length</li>
 <li>Converting between Hex and Decimal</li>
 <li>Named Integer Constants</li>
 <li>AREAD and AINSERT</li>
 <li>Macro Recursion</li>
 <li>Bit handling</li>
 <li>Advanced Bit Handling</li>
 <li>Defining and Using Data Types</li>
 <li>Type Checking</li>
 <li>Encapsulated Abstract Data Types</li>
 <li>Front-ending Macros and Instructions</li>
</ul>

<p class="remark">Note 1:<br />
 This course is based on the most current version (V1R6) of the High
 Level Assembler.</p>

<p class="remark">Note 2:<br />
 The course treats object oriented concepts, but is not intended as
 in introduction to OO-concepts.</p>

<p class="remark">Note 3:<br />
 All course material is in American English. Oral explanation will be
 in
 English by default, but is also available in Dutch, German,
 and/or French.</p>

/HTML

         HTMLDEF COURSE6.UK2
<!-- UK -->
<h2><a name="part2" id="part2">Course Objectives</a></h2>

<p>On successful completion of this course, the student, with the aid
of the
appropriate reference materials, should be able to:</p>

<ol>
 <li>Enhance assembler programs with conditional assembly techniques
  to support program variations from a single source.<br /><br /></li>
 <li>Define and create assembler macros using the following
  techniques:<br /><br />
  <ol>
   <li>Source and/or macro library definitions<br /><br /></li>
   <li>Nested macro definitions<br /><br /></li>
   <li>Nested and/or recursive macro calls<br /><br /></li>
   <li>Keyword parameters and/or positional parameters<br /><br />
 </li>
   <li>Processing of sublists of parameters<br /><br /></li>
   <li>Inheritance and function overlaying (polymorphism)<br /><br />
 </li>
   <li>Abstract data types, encapsulation and type checking<br />
 <br /></li>
   <li>Front-ending or replacing existing macros and/or instructions
 </li>
  </ol><br />
 </li>
 <li>Document the programs and macros with comments to assist in
  maintenance
  and understanding of the code<br /><br /></li>
 <li>Debug the resulting code of errors</li>
</ol>

/HTML

         HTMLDEF COURSE6.UK3
<!-- UK -->
<h2><a name="part3" id="part3">Topical Outline</a></h2>

<h3>Day One</h3>

<h4>Conditional Assembly and Macro Overview</h4>


<h4>The Conditional Assembly Language</h4>

<ul>
 <li>Evaluation, Substitution, and Selection</li>
</ul>

<h4>Variable Symbols</h4>

<ul>
 <li>Declaring Variable Symbols</li>
 <li>Substitution</li>
 <li>Comments on Substitution, Evaluation, and Re-scanning</li>
</ul>

<h4>Assigning Values to Variable Symbols</h4>

<ul>
 <li>Evaluating Conditional-Assembly Expressions</li>
 <li>Evaluating and Assigning Arithmetic Expressions
  <ul>
   <li>Internal Arithmetic Functions</li>
   <li>SETA statements vs EQU Statements</li>
  </ul>
 </li>
 <li>Evaluating and Assigning Boolean Expressions</li>
 <li>Evaluating and Assigning Character Expressions
  <ul>
   <li>String Concatenation</li>
   <li>Substrings</li>
   <li>String Lengths</li>
   <li>Internal Character Functions</li>
  </ul>
 </li>
 <li>External Conditional-Assembly Functions</li>
 <li>Conditional Expressions with Mixed Operand Types</li>
</ul>

<h4>Displaying Variable Symbol Values</h4>

<h4>Statement Selection</h4>

<ul>
 <li>Sequence Symbols</li>
 <li>The ANOP Statement</li>
 <li>The AGO Statement</li>
 <li>The Extended AGO Statement</li>
 <li>The AIF Statement</li>
 <li>The Extended AIF Statement</li>
 <li>Logical Operators in SETx and AIF Statements</li>
</ul>

<h4>Examples of Conditional Assembly</h4>

<ul>
 <li>Example 1: Generate a Sequence of Byte Values</li>
 <li>Example 2: Generating System-Dependent I/O Statements</li>
</ul>

<h4>Conditional Assembly Language Eccentricities</h4>

<h4>Basic Macro Facility Concepts</h4>

<ul>
 <li>What is a Macro Facility</li>
 <li>Benefits of Macro Facilities</li>
</ul>

<h4>The Macro Concept: Fundamental Mechanisms</h4>

<ul>
 <li>Text Insertion</li>
 <li>Text Parameterization and Argument Association</li>
 <li>Text Selection</li>
 <li>Macro Call Nesting</li>
 <li>Macro Definition Nesting</li>
</ul>

<h4>The Assembler Language Macro Definition</h4>

<ul>
 <li>Macro Instruction Definition Example</li>
 <li>Macro Instruction Recognition Rules</li>
 <li>Macro Instruction REcognition Details</li>
 <li>Macro Definition Encoding</li>
 <li>Nested Macro Definition in High Level Assembler</li>
 <li>Macro Expansion, Generated Statements, MEXIT</li>
</ul>

<h4>Macro Comments and Readability Aids</h4>

<ul>
 <li>Example 1: Define Equated Symbols for Registers</li>
</ul>

<h4>Macro Parameters and Arguments</h4>

<ul>
 <li>Macro Definition Parameters</li>
 <li>Macro Instruction Arguments</li>
 <li>Macro Parameter-Argument Association</li>
 <li>Example 2: Generate a Sequence of Byte Values</li>
 <li>Macro Parameter Usage in Model Statements</li>
</ul>

<h4>Macro Argument Attributes and Structures</h4>

<ul>
 <li>Macro Instruction Argument Properties: Type Attribute</li>
 <li>Macro Instruction Argument Properties: Count Attribute</li>
 <li>Macro Instruction Argument Properties: Number Attribute</li>
 <li>Macro Instruction Argument Lists and Sublists</li>
 <li>Macro Instruction Argument Lists and &amp;SYSLIST Variable
  Symbol</li>
</ul>

<h4>Global Variable Symbols</h4>

<ul>
 <li>Variable Symbol Scope Rules: Summary</li>
</ul>

<h4>Macro Debugging Techniques</h4>

<ul>
 <li>Macro Debugging: The MNOTE statement</li>
 <li>Macro Debugging: The MHELP statement</li>
 <li>Macro Debugging: The ACTR statement</li>
 <li>Macro Debugging: The LIBMAC option</li>
 <li>Macro Debugging: The PRINT MCALL statement</li>
</ul>

<h4>IBM Macro Libraries</h4>

<h3>Day Two</h3>

<h4>Macro Techniques</h4>

<ul>
 <li>Macro Techniques Case Studies</li>
</ul>

<h4>Case Study 1: Defining Equated Symbols for Registers</h4>

<h4>Case Study 2: Generating a Sequence of Byte Values</h4>

<h4>Case Study 3: 'MVC2' Macro Uses Source Operand Length</h4>

<h4>Case Study 4: Conversion Between Hex and Decimal</h4>

<ul>
 <li>Macro-time Conversion from Hex to Decimal</li>
 <li>Macro-time Conversion from Decimal to Hex</li>
</ul>

<h4>Case Study 5: Generate a List of Named Integer Constants</h4>

<h4>Case Study 6: Using the AREAD Statement</h4>

<ul>
 <li>Case Study 6a: Creating Length-Prefixed Message Texts
  <ul>
   <li>Simple Prefixed Message Text</li>
   <li>More General Prefixed Message Text</li>
   <li>Prefixed Message Text with the AREAD Statement</li>
  </ul>
 </li>
 <li>Case Study 6b: Block Comments</li>
</ul>

<h4>Case Study 7: Macro Recursion</h4>

<ul>
 <li>Recursion Example 1: Indirect Addressing</li>
 <li>Recursion Example 2: Factorial Function Values</li>
 <li>Recursion Example 3: Fibonacci Numbers</li>
</ul>

<h4>Case Study 8: Defining Macros for Bit-Handling Operations</h4>

<ul>
 <li>Basic Bit-Handling Techniques</li>
 <li>Case Study 8a: Bit-Handling Macros - Simple Forms
  <ul>
   <li>Simple Bit-Manipulation Macros</li>
   <li>Simple Bit-Manipulation Macros: Setting Bits ON</li>
   <li>Simple Bit-Manipulation Macros: Setting Bits OFF</li>
   <li>Simple Bit-Testing Macros</li>
  </ul></li>
 <li>Case Study 8b: Bit-Handling Macros - Advanced Forms
  <ul>
   <li>Bit-Handling 'Micro Language' and 'Micro Compiler'</li>
   <li>Declaring Bit Names</li>
   <li>Improved Bit-Manipulation Macros</li>
   <li>Using Declared Bit Names in a BITON Macro</li>
   <li>Using Declared Bit Names in a BBITON Macro</li>
  </ul>
 </li>
</ul>

<h4>Case Study 9: Defining and Using Data Types</h4>

<ul>
 <li>Case Study 9a: Type Sensitivity - Simple Polymorphism</li>
 <li>Shortcomings of Assembler-Assigned Types</li>
 <li>Symbol Attributes and Lookahead Mode
  <ul>
   <li>The LOCTR Statement</li>
  </ul>
 </li>
 <li>Case Study 9b: Type Checking
  <ul>
   <li>Instruction-Operand Type Checking</li>
   <li>Instruction-Operand Type Checking (Generalized)</li>
  </ul>
 </li>
 <li>The AINSERT Statement</li>
 <li>User-Defined Assembler Type Attributes
  <ul>
   <li>Instruction-Operand-Register Type Checking</li>
  </ul>
 </li>
 <li>Case Study 9c: Encapsulated Abstract Data Types
  <ul>
   <li>Calculating with Date Variables</li>
   <li>Calculating with Interval Variables</li>
  </ul>
 </li>
 <li>Comparison Operators for Dates and Intervals</li>
</ul>

<h4>Case Study 10: Front-Ending a Macro</h4>

<ul>
 <li>Summary</li>
</ul>

<h4>External Conditional Assembly Functions</h4>

<ul>
 <li>SETAF External Function Interface
  <ul>
   <li>Arithmetic-Valued Function Example: LOG2</li>
  </ul>
 </li>
 <li>SETCF External Function Interface
  <ul>
   <li>String-Valued Function Example: REVERSE</li>
  </ul>
 </li>
 <li>Installing the LOG2 and REVERSE Functions</li>
</ul>

/HTML

         HTMLDEF COURSE6.UKL
<!-- UK -->
<p>
 To the <a href="#part1">Course Description</a><br />
 To the <a href="#part2">Course Objectives</a><br />
 To the <a href="#part3">Topical Outline</a>
</p>
/HTML

         HTMLDEF COURSE6.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/course6.htm -->
<!-- -->
<title>Bixoft Cursus 6: High Level Assembler: Macro Programming
</title>
<link rel="shortcut icon" href="../images/bixoft.ico"
      type="image/x-icon" />
<link rev="Bixoft Cursus Assembler" href="courses.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe, Cursus, Hlasm" />
<meta http-equiv="description"
      content="Uitleg over Bixoft's cursus voor High Level
      Assembler." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF COURSE6.NLT
<!-- NL -->
<h1 align="center">High Level Assembler: Macro Programming.</h1>

<p>Deze cursus behandelt de macro faciliteiten welke beschikbaar zijn
 in de
 High Level Assembler. Tevens worden geavanceerde technieken voor het
 programmeren van macro's behandeld, waaronder abstracte data typen,
 overerving, en functie overlaying.</p>

<p>De cursus is bedoeld voor:</p>
<ul>
 <li>Ervaren Assembler programmeurs die hun vaardigheden in het
  schrijven van
  macro's willen verbeteren.</li>
 <li>Assembler programmeurs met enige ervaring die hun begrip van de
  macro
  faciliteit willen verbeteren.</li>
</ul>

<p>De cursus presentatie hieronder bestaat uit de volgende drie
   onderdelen:</p>
<ol>
 <li><a href="#part1">Cursus beschrijving</a></li>
 <li><a href="#part2">Cursus doelstellingen</a></li>
 <li><a href="#part3">Lijst van onderwerpen</a></li>
</ol>

/HTML

         HTMLDEF COURSE6.NL1
<!-- NL -->
<h2><a name="part1" id="part1">Cursus beschrijving</a></h2>

<p>Verwachte duur: 2 dagen</p>

<p>Voordelen: Na afronding van deze cursus kunnen de deelnemers
 macro's voor Assembler
 programma's ontwerpen, bouwen, documenteren, en onderhouden. De
 nadruk
 ligt op het aanleren van de beschikbare macro faciliteiten, alsmede
 hun
 gebruik en implementatie in een geavanceerde programmeer-omgeving.
</p>

<p>Doelgroep: Ervaren Assembler programmeurs die hun vaardigheid in
 het bouwen van
 macro's willen uitbreiden.</p>

<p>Voorwaarden: Deelnemers dienen ten minste ervaring te hebben met
 ISPF/PDF of een
 vergelijkbaar produkt voor het aanmaken van programma's en het
 submitten van jobs. Enige ervaring in het schrijven van Assembler
 programma's is aanbevolen.</p>

<p>IBM Materiaal. Met toestemming van IBM is deze cursus afgeleid
 van John Ehrman's SHARE
 presentatie &quot;Assembler as a Higher Level Language: Macros and
 Conditional Assembly Techniques&quot;.<br />
 Het wordt aanbevolen de volgende IBM handboeken onder handbereik te
 hebben
 tijdens de cursus (op papier, via BookManager, etc.):</p>
<ul>
 <li>SC26-4940 - High Level Assembler reference</li>
</ul>

<p>De belangrijkste onderwerpen:</p>
<ul>
 <li>Conditional Assembly Language</li>
 <li>Statement Selection</li>
 <li>Statement Generation and Substitution</li>
 <li>External Conditonal Assembly Functions</li>
 <li>Debugging Conditional Assembly Language</li>
 <li>Macro Facility concepts</li>
 <li>Macro Definition</li>
 <li>Macro Comments and Readability</li>
 <li>Macro Parameters</li>
 <li>Macro Arguments Attributes</li>
 <li>Global Variables</li>
 <li>Macro Debugging Techniques</li>
 <li>Defining Symbols</li>
 <li>Generating a Sequence of Values</li>
 <li>MVC with Source Operand's Length</li>
 <li>Converting between Hex and Decimal</li>
 <li>Named Integer Constants</li>
 <li>AREAD and AINSERT</li>
 <li>Macro Recursion</li>
 <li>Bit handling</li>
 <li>Advanced Bit Handling</li>
 <li>Defining and Using Data Types</li>
 <li>Type Checking</li>
 <li>Encapsulated Abstract Data Types</li>
 <li>Front-ending Macros and Instructions</li>
</ul>

<p class="remark">Opmerking 1:<br />
 Deze cursus is gebaseerd op de meest recente versie (V1R6) van de
 High
 Level Assembler.</p>

<p class="remark">Opmerking 2:<br />
 De cursus behandelt object oriented concepten, maar is niet bedoeld
 als
 een introductie in OO-concepten.</p>

<p class="remark">Opmerking 3:<br />
 Al het cursus materiaal is in amerikaans engels. Mondelinge
 toelichting
 zal worden gegeven in het engels, maar is eventueel ook beschikbaar in
 het nederlands, duits, en/of frans.</p>

/HTML

         HTMLDEF COURSE6.NL2
<!-- NL -->
<h2><a name="part2" id="part2">Cursus doelstellingen</a></h2>

<p>Na succesvolle voltooiing van de cursus kan de deelnemer, aan de
 hand
 van de toepasselijke handboeken:</p>

<ol>
 <li>Assembler programma's voorzien van conditionele assembly
  technieken
  om programma-varianten te ondersteunen vanuit het single-source
  concept.<br /><br /></li>
 <li>Assembler macro's defini&euml;ren en aanmaken met gebruikmaking
  van de
  volgende technieken:<br /><br />
  <ol>
   <li>Source en/of macro library definities<br /><br /></li>
   <li>Geneste macro definities<br /><br /></li>
   <li>Geneste en/of recursieve macro aanroepen<br /><br /></li>
   <li>Keyword parameters en/of positionele parameters<br /><br />
 </li>
   <li>Sublijsten van parameters verwerken<br /><br /></li>
   <li>Overerving en functie overlaying (polymorphisme)<br /><br />
 </li>
   <li>Abstracte data typen, encapsulatie en type checking<br /><br />
 </li>
   <li>Front-ending of vervanging van bestaande macro's en/of
    instructies</li>
  </ol><br />
 </li>
 <li>Programma's en macro's documenteren met commentaar om de
  leesbaarheid en
  de onderhoudbaarheid van de code te verbeteren<br /><br /></li>
 <li>Fouten in de gemaakte code opsporen en verhelpen</li>
</ol>

/HTML

         HTMLDEF COURSE6.NL3
<!-- NL -->
<h2><a name="part3" id="part3">Lijst van onderwerpen</a></h2>

<h3>Dag een</h3>
<!-- UK -->

<h4>Conditional Assembly and Macro Overview</h4>

<h4>The Conditional Assembly Language</h4>

<ul>
 <li>Evaluation, Substitution, and Selection</li>
</ul>

<h4>Variable Symbols</h4>

<ul>
 <li>Declaring Variable Symbols</li>
 <li>Substitution</li>
 <li>Comments on Substitution, Evaluation, and Re-scanning</li>
</ul>

<h4>Assigning Values to Variable Symbols</h4>

<ul>
 <li>Evaluating Conditional-Assembly Expressions</li>
 <li>Evaluating and Assigning Arithmetic Expressions
  <ul>
   <li>Internal Arithmetic Functions</li>
   <li>SETA statements vs EQU Statements</li>
  </ul>
 </li>
 <li>Evaluating and Assigning Boolean Expressions</li>
 <li>Evaluating and Assigning Character Expressions
  <ul>
   <li>String Concatenation</li>
   <li>Substrings</li>
   <li>String Lengths</li>
   <li>Internal Character Functions</li>
  </ul>
 </li>
 <li>External Conditional-Assembly Functions</li>
 <li>Conditional Expressions with Mixed Operand Types</li>
</ul>

<h4>Displaying Variable Symbol Values</h4>

<h4>Statement Selection</h4>

<ul>
 <li>Sequence Symbols</li>
 <li>The ANOP Statement</li>
 <li>The AGO Statement</li>
 <li>The Extended AGO Statement</li>
 <li>The AIF Statement</li>
 <li>The Extended AIF Statement</li>
 <li>Logical Operators in SETx and AIF Statements</li>
</ul>

<h4>Examples of Conditional Assembly</h4>

<ul>
 <li>Example 1: Generate a Sequence of Byte Values</li>
 <li>Example 2: Generating System-Dependent I/O Statements</li>
</ul>

<h4>Conditional Assembly Language Eccentricities</h4>

<h4>Basic Macro Facility Concepts</h4>

<ul>
 <li>What is a Macro Facility</li>
 <li>Benefits of Macro Facilities</li>
</ul>

<h4>The Macro Concept: Fundamental Mechanisms</h4>

<ul>
 <li>Text Insertion</li>
 <li>Text Parameterization and Argument Association</li>
 <li>Text Selection</li>
 <li>Macro Call Nesting</li>
 <li>Macro Definition Nesting</li>
</ul>

<h4>The Assembler Language Macro Definition</h4>

<ul>
 <li>Macro Instruction Definition Example</li>
 <li>Macro Instruction Recognition Rules</li>
 <li>Macro Instruction REcognition Details</li>
 <li>Macro Definition Encoding</li>
 <li>Nested Macro Definition in High Level Assembler</li>
 <li>Macro Expansion, Generated Statements, MEXIT</li>
</ul>

<h4>Macro Comments and Readability Aids</h4>

<ul>
 <li>Example 1: Define Equated Symbols for Registers</li>
</ul>

<h4>Macro Parameters and Arguments</h4>

<ul>
 <li>Macro Definition Parameters</li>
 <li>Macro Instruction Arguments</li>
 <li>Macro Parameter-Argument Association</li>
 <li>Example 2: Generate a Sequence of Byte Values</li>
 <li>Macro Parameter Usage in Model Statements</li>
</ul>

<h4>Macro Argument Attributes and Structures</h4>

<ul>
 <li>Macro Instruction Argument Properties: Type Attribute</li>
 <li>Macro Instruction Argument Properties: Count Attribute</li>
 <li>Macro Instruction Argument Properties: Number Attribute</li>
 <li>Macro Instruction Argument Lists and Sublists</li>
 <li>Macro Instruction Argument Lists and &amp;SYSLIST Variable
 Symbol</li>
</ul>

<h4>Global Variable Symbols</h4>

<ul>
 <li>Variable Symbol Scope Rules: Summary</li>
</ul>

<h4>Macro Debugging Techniques</h4>

<ul>
 <li>Macro Debugging: The MNOTE statement</li>
 <li>Macro Debugging: The MHELP statement</li>
 <li>Macro Debugging: The ACTR statement</li>
 <li>Macro Debugging: The LIBMAC option</li>
 <li>Macro Debugging: The PRINT MCALL statement</li>
</ul>

<h4>IBM Macro Libraries</h4>

<h3>Dag twee</h3>

<h4>Macro Techniques</h4>

<ul>
 <li>Macro Techniques Case Studies</li>
</ul>

<h4>Case Study 1: Defining Equated Symbols for Registers</h4>

<h4>Case Study 2: Generating a Sequence of Byte Values</h4>

<h4>Case Study 3: 'MVC2' Macro Uses Source Operand Length</h4>

<h4>Case Study 4: Conversion Between Hex and Decimal</h4>

<ul>
 <li>Macro-time Conversion from Hex to Decimal</li>
 <li>Macro-time Conversion from Decimal to Hex</li>
</ul>

<h4>Case Study 5: Generate a List of Named Integer Constants</h4>

<h4>Case Study 6: Using the AREAD Statement</h4>

<ul>
 <li>Case Study 6a: Creating Length-Prefixed Message Texts
  <ul>
   <li>Simple Prefixed Message Text</li>
   <li>More General Prefixed Message Text</li>
   <li>Prefixed Message Text with the AREAD Statement</li>
  </ul>
 </li>
 <li>Case Study 6b: Block Comments</li>
</ul>

<h4>Case Study 7: Macro Recursion</h4>

<ul>
 <li>Recursion Example 1: Indirect Addressing</li>
 <li>Recursion Example 2: Factorial Function Values</li>
 <li>Recursion Example 3: Fibonacci Numbers</li>
</ul>

<h4>Case Study 8: Defining Macros for Bit-Handling Operations</h4>

<ul>
 <li>Basic Bit-Handling Techniques</li>
 <li>Case Study 8a: Bit-Handling Macros - Simple Forms
  <ul>
   <li>Simple Bit-Manipulation Macros</li>
   <li>Simple Bit-Manipulation Macros: Setting Bits ON</li>
   <li>Simple Bit-Manipulation Macros: Setting Bits OFF</li>
   <li>Simple Bit-Testing Macros</li>
  </ul>
 </li>
 <li>Case Study 8b: Bit-Handling Macros - Advanced Forms
  <ul>
   <li>Bit-Handling 'Micro Language' and 'Micro Compiler'</li>
   <li>Declaring Bit Names</li>
   <li>Improved Bit-Manipulation Macros</li>
   <li>Using Declared Bit Names in a BITON Macro</li>
   <li>Using Declared Bit Names in a BBITON Macro</li>
  </ul>
 </li>
</ul>

<h4>Case Study 9: Defining and Using Data Types</h4>

<ul>
 <li>Case Study 9a: Type Sensitivity - Simple Polymorphism</li>
 <li>Shortcomings of Assembler-Assigned Types</li>
 <li>Symbol Attributes and Lookahead Mode
  <ul>
   <li>The LOCTR Statement</li>
  </ul>
 </li>
 <li>Case Study 9b: Type Checking
  <ul>
   <li>Instruction-Operand Type Checking</li>
   <li>Instruction-Operand Type Checking (Generalized)</li>
  </ul>
 </li>
 <li>The AINSERT Statement</li>
 <li>User-Defined Assembler Type Attributes
  <ul>
   <li>Instruction-Operand-Register Type Checking</li>
  </ul>
 </li>
 <li>Case Study 9c: Encapsulated Abstract Data Types
  <ul>
   <li>Calculating with Date Variables</li>
   <li>Calculating with Interval Variables</li>
  </ul>
 </li>
 <li>Comparison Operators for Dates and Intervals</li>
</ul>

<h4>Case Study 10: Front-Ending a Macro</h4>

<ul>
 <li>Summary</li>
</ul>

<h4>External Conditional Assembly Functions</h4>

<ul>
 <li>SETAF External Function Interface
  <ul>
   <li>Arithmetic-Valued Function Example: LOG2</li>
  </ul>
 </li>
 <li>SETCF External Function Interface
  <ul>
   <li>String-Valued Function Example: REVERSE</li>
  </ul>
 </li>
 <li>Installing the LOG2 and REVERSE Functions</li>
</ul>

/HTML

         HTMLDEF COURSE6.NLL
<!-- NL -->
<p>
 Naar de <a href="#part1">Cursus beschrijving</a><br />
 Naar de <a href="#part2">Cursus doelstellingen</a><br />
 Naar de <a href="#part3">Lijst van onderwerpen</a><br />
</p>
/HTML
