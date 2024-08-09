         HTMLDEF NIELSEN.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/nielsen.htm -->
<!-- -->
<title>Redesigning Assembler Language Development</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<link rev="Bixoft - books and sites" href="links.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe" />
<meta http-equiv="description"
      content="About coding techniques for assembler." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF NIELSEN.UKT
<!-- UK -->
<h1 align="center">Redesigning Assembler Language Development.</h1>

<p class="header" align="center">By Don V Nielsen, May 19, 2000</p>

<p class="remark">
 Disclaimer:<br />
 Bixoft converted "Redesigning Assembler Language Development" into a
 web-document with permission of the original author for
 re-publication.
 We also applied several minor changes. Nevertheless, the copyrights
 of
 Mr. Nielsen still apply to the document below.<br />
 All samples in this document are no more than examples, and are in no
 way
 guaranteed to be free of errors or omissions. You may use (parts of)
 these
 code-samples, but it remains in all aspects your own responsibility
 to
 test your programs.</p>

<p class="remark">
 Contact:<br />
 Mr. Nielsen will gladly accept your comments, remarks etc.
 <a href="mailto:DonN@cmscms.com">e-mail Don Nielsen</a>.</p>

/HTML

         HTMLDEF NIELSEN.UK1
<!-- UK -->
<p>This document contains the following chapters:</p>
<ul>
 <li><a href="#chap01">Introduction.</a></li>
 <li><a href="#chap02">Background Terminology.</a>
  <ul>
   <li><a href="#chap03">Abstraction.</a></li>
   <li><a href="#chap04">Reuse.</a></li>
   <li><a href="#chap05">Derivation.</a></li>
  </ul>
 </li>
 <li><a href="#chap06">Building Blocks.</a>
  <ul>
   <li><a href="#chap07">The Field.</a></li>
   <li><a href="#chap08">The Lay-out of a Record or Table Entry.</a>
 </li>
   <li><a href="#chap09">The Table.</a></li>
  </ul>
 </li>
 <li><a href="#chap10">Step 1, Map the Data.</a>
  <ul>
   <li><a href="#chap11">Adding the Census Table.</a></li>
  </ul>
 </li>
 <li><a href="#chap12">Step 2, Build the Program.</a>
  <ul>
   <li>
    <a href="#chap13">Accessing the Fields in the Record and the
 Table.</a>
   </li>
   <li><a href="#chap14">Adding Gender Counts to the Table.</a></li>
  </ul>
 </li>
 <li><a href="#chap15">Using the Same Lay-out Twice.</a></li>
 <li><a href="#chap16">Placing DSECTs at the Top of the Program.</a>
  <ul>
   <li><a href="#chap17">Why Place DSECTs at the Top of the Program?
 </a></li>
   <li><a href="#chap18">Additional Housekeeping Required.</a></li>
  </ul>
 </li>
 <li><a href="#chap19">In Conclusion.</a></li>
 <li><a href="#chap20">Appendix A: Sample Program Using Table.</a>
 </li>
 <li>
  <a href="#chap21">Appendix B: Sample Program Using Change in State
  Abbreviation.</a>
 </li>
</ul>

<h3><a name="chap01" id="chap01">Introduction.</a></h3>

<p>The purpose of this paper is to bring to light coding methods and
 techniques
 using Assembler Language and the HLASM Assembler. The HLASM Assembler
 has
 evolved with much more power than many people realize. Knowledge of
 this
 power and understanding how to utilize it may save you many hours of
 coding
 and development, as well as reduce your maintenance efforts.</p>

<p>Programming concepts such as abstraction, reuse, derivation, and
 qualification
 can be implemented in assembler language just as they are in higher
 level
 languages, like C, COBOL, and Basic. Expanded use of copybooks is
 encouraged.
 New methods of implementing copybooks with the USING statement will
 be
 introduced. In addition, how and why DSECTs should be defined at the
 top of
 the source code will be explained.</p>

<p>Two simple applications are used to demonstrate how to work with
 the new
 concepts. The first application is a simple census program that reads
 records
 from a dataset, and then stores state abbreviations and their
 quantity in a
 table. The application demonstrates all the new coding techniques
 for
 building tables. It also demonstrates how these techniques can
 reduce or
 eliminate coding changes when the elements of the table change.</p>

<p>The second application is also a census program. This application
 does not
 use a table. Instead, it uses a dataset sorted by state
 abbreviation.
 It tallies state quantities as records are read by comparing the
 state
 abbreviation of the current record to the state abbreviation with
 the
 previous record. This application demonstrates how one DSECT can be
 used
 to simultaneously map two different records.</p>

<p>At first, learning these techniques might seem like a lot of work.
 Implementing them might appear to be a lot of typing. However, as
 time passes
 and the techniques are employed more frequently, their use will
 become second
 nature, and you will find the improvement in readability a great
 bonus.
 Your maintenance efforts will be dramatically reduced.
 In some instances, maintenance may even be eliminated.</p>

<p>The sample programs in Appendix A and Appendix B use HLASM Toolkit
 macros.
 These macros add programming structures found in other languages,
 such as
 IF/ELSE/ENDIF, DO loops, and others. The macros simplify coding and
 increase
 readability of the code.</p>

<p class="remark">
 Bixoft Remark:<br />
 In stead of the toolkit, the macros employed in Bixoft's eXtended
 Assembly
 language may be used for structure and even better readability.</p>

<h3><a name="chap02" id="chap02">Background Terminology.</a></h3>

<h4><a name="chap03" id="chap03">Abstraction.</a></h4>

<p>Webster defines abstraction as:
 "the act or process of separating or removing." Applying the term
 abstraction
 to computer programming means to separate the programmer from the
 underlying
 details of the process. Calling a function is one example of
 abstraction.
 A function is called to complete a task and return a result. We do
 not need
 to know how the function performs its task. We simply trust that it
 is going
 to perform that task correctly and return the correct result.</p>

<p>This trust is the most difficult concept that we assembler
 programmers need
 to exercise. Most of us assembler programmers want to know all the
 details.
 However, implementing abstraction will simplify our coding. This
 requires
 trusting that some things are simply because they are, and that it is
 not
 necessary for us to know why they are. This concept takes effort to
 accept.
 You should realize that the concept has been applied
 and accepted for a long time with regard to system routines.</p>

<h4><a name="chap04" id="chap04">Reuse.</a></h4>

<p>Reuse is the concept of implementing the past effort of others in
 order to
 save development time and effort. A called module is one form of
 reuse.
 A macro is another example. When a standard set of logic can be
 coded as a
 called module or a macro, then others in the future can implement
 that logic
 without having to develop it (redeveloping the wheel, so to say).
 Yet another form of reuse is the copybook. The copybook is the
 definition
 of some structure. Others will not have to expend time and effort
 coding
 a structure if that structure is already available as a copybook -
 or a macro.</p>

<h4><a name="chap05" id="chap05">Derivation.</a></h4>

<p>Derivation is receiving or obtaining something from a source. In
 the
 definition of a field, we may derive an attribute of the field from
 a
 previously defined field. For example, a program needs to save a
 copy
 of the ZIP code from an input record. The program utilizes a macro
 or
 a copybook that has already defined the attributes of the ZIP code.
 The existing attributes from the existing definition in the macro or
 copybook can be derived and used in the definition of the new field.
</p>

<h3><a name="chap06" id="chap06">Building Blocks.</a></h3>

<h4><a name="chap07" id="chap07">The Field.</a></h4>

<p>A field is the simplest of structures. It represents one piece of
 data.
 To the assembler, a field represents a number of bytes in storage
 and not much
 else. Some may consider the type of data to be important. However,
 to the
 assembler, the definition of a field as packed, hexadecimal, or
 character is
 for the convenience of the programmer. The most meaningful
 attribute of a
 field is the amount of storage it occupies.</p>

<h4><a name="chap08" id="chap08">The Lay-out of a Record or Table
 Entry.</a></h4>

<p>All records and table entries can be described with a lay-out. A
 lay-out is a
 structure that maps data. It defines the locations and lengths of
 fields, and
 enforces structure. The length of a lay-out is the cumulative value
 of the
 field lengths plus any padding caused by field alignment. Records
 and table
 entries are functionally the same.</p>

<p>Always code lay-outs for table entries and records. This is the
 first, most
 important step when beginning to code. Coding lay-outs simplify the
 development
 and maintenance of programs. If a lay-out is to be shared across
 multiple
 programs, then save the lay-out as a macro or a copybook. This will
 reduce
 coding time and effort on future projects.</p>

<h4><a name="chap09" id="chap09">The Table.</a></h4>

<p>A table is an area of storage dedicated to holding a series of
 related data.
 A table consists of one or more entries, where the lay-out of each
 entry is
 identical. Visually, a two-dimensional table may be thought of as a
 piece of
 lined paper; the paper represents the table, and each of the lines
 represents
 an entry.</p>

<p>Tables, like fields, have attributes. A table has a starting
 address, which is
 the first byte of the first entry. It has an ending address, which is
 the
 last byte of the last entry. The space that the table occupies can
 be divided
 evenly by the entry length, yielding the maximum number of entries
 that the
 table can hold.</p>

<p>A simple census table application is used to demonstrate the
 concepts
 presented. The table will consist of two fields: state abbreviation
 and census
 count. Later, counts by gender will be added to the table entry
 lay-out.
 This will demonstrate how a table and program can be constructed
 such that a
 change in a lay-out's definition will not incur any coding changes.
 Maintenance to the program's code will have been eliminated.</p>

<h3><a name="chap10" id="chap10">Step 1, Map the Data.</a></h3>

<p>The first step in developing the program is mapping the input
 dataset.
 The program reads input data through a DD name INFILE. It uses a DCB
 by the
 same name to read the input data. The data is read directly into a
 record
 structure defined by a copybook named CMS0001A. The copybook
 contains all
 the field definitions, and is implemented as a DSECT. The base
 structures
 (record lay-out and DCB) are coded as follows:</p>
<pre>
         ...
INPUT_LAYOUT DSECT
         COPY  CMS0001A                * Standard record lay-out
L_INPUT_LAYOUT EQU *-INPUT_LAYOUT      * Calculate length of lay-out
         ...
INREC    DS    CL(L_INPUT_LAYOUT)      * Define storage for input
         ...
INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GM,EODAD=EOFINFIL
         ...
</pre>

<p>When using a macro in stead of a copybook (or a macro using a
 copybook),
 the sample above could be recoded as:</p>
<pre>
         ...
INPUT_LAYOUT CMS0001A DSECT=YES        * Lay-out and length of input
         ...
INREC    DS    CL(L_INPUT_LAYOUT)      * Define storage for input
         ...
INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GM,EODAD=EOFINFIL
         ...
</pre>

<p>The concepts of reuse, abstraction, and derivation have all been
 applied
 in the above example. The use of the macro or copybook CMS0001A is
 an example
 of reuse and abstraction. First, an existing lay-out is being
 reused rather
 than redeveloping it. Always try to use an existing macro or
 copybook when
 available. The benefits of using a macro or copybook are:</p>
<ol>
 <li>a macro or copybook enforces standardized field names across
  many
  programs</li>
 <li>only one definition of the record's lay-out exists</li>
 <li>a change in the lay-out is applied to only the copybook, not
  many
  programs</li>
 <li>time and effort re-coding the lay-out
  for each program is eliminated</li>
</ol>

<p>Use of the macro or copybook implements abstraction, too. The
 macro or
 copybook hides the details of the record lay-out. Yes, it is
 important to know
 the record lay-out that one is working with. However, detailed
 knowledge of
 the lay-out's structure is seldom required. Abstraction is also
 applied with
 the definition of L_INPUT_LAYOUT. This statement uses the assembler
 to
 calculate the length of the defined lay-out. It is abstract because
 you do not
 need to know the length; you trust that the length has been
 calculated for
 your use.</p>

<p>Derivation is used in the definition of the INREC field. The
 assembler sets
 the length of INREC using the calculated record length,
 L_INPUT_LAYOUT. This
 is also an example of how to implicitly define a field's length.
 With HLASM,
 the length attribute of a field can be assigned from a previously
 defined
 field. Deriving the length attribute allows HLASM to allocate
 storage based
 on the existing length value.</p>

<p>HLASM allows you to define a field's length explicitly or
 implicitly.
 An explicit definition of a field's length has the actual length
 coded. For
 example, the above INREC definition could have been coded
 explicitly using
 &quot;INREC&nbsp;DS&nbsp;CL200&quot; This is a simpler method of
 defining INREC.
 However, there are two reasons for discouraging the use of explicit
 lengths:</p>
<ol>
 <li>doing so requires prior knowledge of a structure's length</li>
 <li>the length of the structure may change</li>
</ol>

<p>In order to allocate storage explicitly, one must have prior
 knowledge of the
 space required. One would have to research the macro or copybook,
 determine
 its length, and code that length in the explicit definition. In
 addition, much
 effort is required to update programs when the length of the lay-out
 changes.
 All programs that implement the lay-out will require research in
 order to
 update its explicit storage allocations.</p>

<p>An implicit definition means that a symbol is used to define the
 field's
 length. L_INPUT_LAYOUT is an example of an implicit length because
 the symbol
 is a representation of the required length. L_INPUT_LAYOUT is the
 length of
 CMS0001A as calculated by the assembler. Broad implementation of
 this concept
 can reduce maintenance efforts from hours to minutes. Should the
 actual
 length of CMS0001A change, the assembler will calculate the new
 length,
 assign the length value to L_INPUT_LAYOUT, which is then used to
 set the
 length of INREC. Thus, updating the macro or copybook also updates
 all programs - automatically.</p>

<h4><a name="chap11" id="chap11">Adding the Census Table.</a></h4>

<pre>
         ...
INPUT_LAYOUT CMS0001A DSECT=YES        * Lay-out and length of input
         ...
TABLE_ENTRY DSECT
STATE    DS    CL(L'CMSTATE)           * State abbreviation
TOTAL    DS    F                       * Total quantity
L_TABLE_ENTRY EQU *-TABLE_ENTRY        * Calculate length of entry
         ...
MAX_ENTRIES EQU 100                    * Maximum nr of entries in
                                         table
         ...
INREC    DS    CL(L_INPUT_LAYOUT)      * Define storage for input
...
INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GM,EODAD=EOFINFIL
         ...
* Define table storage
STATE_CENSUS_TABLE DC (MAX_ENTRIES)XL(L_TABLE_ENTRY)'00'
E_STATE_CENSUS_TABLE EQU *             * End of table
         ...
</pre>

<p>Two structures and a constant have been added to our code example.
 The TABLE_ENTRY structure provides a map of the fields used in the
 table
 entry. The first field, STATE, is for the state abbreviation and it
 is the
 key field for searching the table. Notice that STATE is the second
 example
 of derivation. STATE derives its length from CMSTATE. You are not
 required
 to know how long CMSTATE is. You trust that STATE will be defined
 for an
 equal number of bytes.</p>

<p>The second field, TOTAL is the counter field. It is defined as F,
 a signed
 binary fullword, or 32 bits. As each input record is processed, the
 state
 abbreviation is located in the table. If the abbreviation is not
 found,
 then it is added. The TOTAL field is then incremented.</p>

<p>The assembler must be used to calculate L_TABLE_ENTRY. This is
 required
 because the length of STATE is derived. There is no way to know,
 without
 research, the actual length of CMSTATE. So, we trust that the
 assembler
 derives the length of CMSTATE and assigns it to STATE. The result is
 the
 length of STATE being equal to the length of CMSTATE. L_TABLE_ENTRY
 is equal
 to L'STATE+L'TOTAL plus any padding bytes required for alignment.
 Once again, the actual length value is not important. It is important
 to
 realize that the length exists and that it has been computed
 correctly
 by the assembler.</p>

<p>MAX_ENTRIES is a constant that represents the maximum number of
 entries that
 can be stored in the table. It is used in the definition of
 STATE_CENSUS_TABLE. The table's size is controlled by this constant.
 A table, as defined earlier, is the space used by all the table
 entries.
 Thus, the size of the table is equal to the table's entry length
 times the
 maximum number of entries. The actual definition of
 STATE_CENSUS_TABLE is an
 example of this calculation. Using MAX_ENTRIES and L_TABLE_ENTRY to
 implicitly
 define the attributes of the table, the assembler calculates the
 space
 required and allocates that space to the symbol STATE_CENSUS_TABLE
</p>

<p>The real power of this implicit definition is realized when the
 table requires
 maintenance. All it takes to expand the number of entries that
 STATE_CENSUS_TABLE may contain is to change the MAX_ENTRIES value.
 In addition, if the table's entry definition changes, the assembler
 uses
 the resulting entry length in establishing the size of
 STATE_CENSUS_TABLE.
 This will be demonstrated later when the gender counters are added to
 TABLE_ENTRY.</p>

<h3><a name="chap12" id="chap12">Step 2, Build the Program.</a></h3>

<h4><a name="chap13" id="chap13">Accessing the Fields in the Record
 and the Table.</a></h4>

<pre>
         ...
         USING INPUT_LAYOUT,INREC      * Assign DSECT to INREC
         USING TABLE_ENTRY,R3          * Assign DSECT to REGISTER
         ...
FILELOOP GET   INFILE,INREC            * Read record into storage
         LA    R3,STATE_CENSUS_TABLE   * Load ptr to table entry
TBLLOOP  C     R3,=A(E_STATE_CENSUS_TABLE) * If end of table
         BNL   ERRTABLE                * branch to error routine
         CLI   STATE,X'00'             * If state is null
                                         (empty entry)
         BE    ADDSTATE                * then add state to table
         CLC   CMSTATE,STATE           * Input matches table record?
         BE    STFOUND                 * Yes: entry located
         LA    R3,L_TABLE_ENTRY(R3)    * Point next entry in table
         B     TBLLOOP                 * and go check this entry
ADDSTATE MVC   STATE,CMSTATE           * Init new state in table
STFOUND  LA    R1,1                    * Load increment value
         A     R1,TOTAL                * Add quantity for state
         ST    R1,TOTAL                * Save incremented value
         B     FILELOOP                * And go get next record
         ...
</pre>

<p>After an input record has been read, it is necessary to locate the
 state
 abbreviation in the table. Before we can access any data, both the
 input
 record and the table entry must be mapped. This is accomplished with
 the USING
 statement. USING is not an instruction that is processed like a
 compare
 instruction or a branch instruction. It is a directive used by the
 assembler
 to determine how and where storage is being mapped. DSECTS are used
 to
 describe the storage. A DSECT can map storage as referenced by a
 symbol,
 or it can map storage as referenced by the contents of a register.
 Both
 implementations are used in the example.</p>

<p>USING&nbsp;INPUT_LAYOUT,INREC applies the CMS0001A lay-out to the
 storage
 defined as INREC. Whenever a field from the CMS0001A copybook is
 referenced
 by an instruction, the data from that field is pulled from the INREC
 storage
 space. CMSTATE is located at position 147 of the CMS0001A lay-out.
 Whenever CMSTATE is referenced in the program, position 147 of INREC
 (or INREC+146) is the source of the data.</p>

<p>USING&nbsp;TABLE_ENTRY,R3 applies the TABLE_ENTRY lay-out to the
 storage being
 pointed to by register 3. Whenever a field from the TABLE_ENTRY
 lay-out is
 referenced by an instruction, the data from that field is located
 within
 storage pointed at with R3. STATE is located at position 1 of the
 table entry
 lay-out. Whenever STATE is referenced in the program, then the first
 byte
 pointed to by R3 [or 0(R3)] is the location of the state abbreviation
 in the
 table entry.</p>

<p>The flow of the programming loop is as follows:</p>
<ul>
 <li>An input record is read and it is put into INREC.</li>
 <li>The address of STATE_CENSUS_TABLE is loaded into R3.
  R3 is used as a pointer to each table entry.</li>
 <li>The address in R3 is compared to the address of
  E_STATE_CENSUS_TABLE.
  If R3 reaches this address, that is an indication that the table is
  full,
  yet more records need to be added. This is an error that requires
  handling.</li>
 <li>The state abbreviation from the table is compared to null. The
  assembler
  pre-filled the entire table with nulls, a value that we chose
  because it
  does not occur in the
  input dataset. If the state abbreviation is null, this indicates
  that the
  state abbreviation from the input record was not located in the
  table.
  The abbreviation is added to the current table entry, the counter
  is
  incremented, and processing is continued.</li>
 <li>The state abbreviation from the input record is compared to the
  state
  abbreviation from the current table entry. If they are equal, a
  branch is
  taken to increment the current state counter and to continue with
  the READ
  loop.</li>
 <li>If the state abbreviation from the input record is not located
  and the
  state abbreviation from the current table entry is not equal to
  null, then
  the table search is to continue. The calculated entry length is
  added to the
  current entry pointer, R3, and the search loop continues.</li>
</ul>

<p>Let's go over some key concepts at this point. The first point is
 the
 relationship between INPUT_LAYOUT and INREC. INREC was defined
 using the
 calculated length of the input record lay-out, or L_INPUT_LAYOUT.
 While INREC
 has the proper amount of storage defined, it does not have fields
 assigned to
 it. References to fields within INREC are assigned by the
 USING&nbsp;INPUT_LAYOUT,INREC statement. Thus, whenever a field from
 INPUT_LAYOUT is referenced, it is the storage from INREC that is
 accessed.</p>

<p>The symbol L_TABLE_ENTRY is used to increment the table pointer,
 R3.
 The assembler uses the calculated value. A change in the table entry
 length
 will not affect this code.</p>

<h4><a name="chap14" id="chap14">Adding Gender Counts to the Table.
</a></h4>

<pre>
         ...
INPUT_LAYOUT CMS0001A DSECT=YES        * Lay-out and length of input
         ...
TABLE_ENTRY DSECT
STATE    DS    CL(L'CMSTATE)           * State abbreviation
TOTAL    DS    F                       * Total quantity
FEMALE   DS    F                       * Female quantity
MALE     DS    F                       * Male quantity
UNKNOWN  DS    F                       * Unknown gender
L_TABLE_ENTRY EQU *-TABLE_ENTRY        * Calculate length of entry
         ...
MAX_ENTRIES EQU 100                    * Max.nr of entries in table
         ...
INREC    DS    CL(L_INPUT_LAYOUT)      * Define storage for input
         ...
INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GM,EODAD=EOFINFIL
         ...
* Define table storage
STATE_CENSUS_TABLE DC (MAX_ENTRIES)XL(L_TABLE_ENTRY)'00'
E_STATE_CENSUS_TABLE EQU *             * End of table
         ...
</pre>

<p>Now that we have the basic program developed, new counters are
 going to be
 added to the table. In adding these counters, you are going to
 realize the
 effort and time saving qualities provided by these programming
 techniques.</p>

<p>The only change required for the entire program is to add the
 fields FEMALE,
 MALE, and UNKNOWN. That's it. The program can be reassembled with
 no other
 changes.</p>

<p>Let's go through what has happened and how the assembler resolves
 the changes.
 Three fields were added to TABLE_ENTRY. These fields have increased
 the
 table entry length by twelve bytes. The calculated value
 L_TABLE_ENTRY is
 used throughout the program. The assembler calculates the required
 table
 storage using the implicit values of L_TABLE_ENTRY and MAX_ENTRIES
 and assigns
 that amount of storage to STATE_CENSUS_TABLE.</p>

<p>No changes are necessary in the processing code. The statements
 affected by
 the changes are as follows:</p>
<ul>
 <li>If end of table: C&nbsp;R3,=A(E_STATE_CENSUS_TABLE).<br />
  The location of
  E_STATE_CENSUS_TABLE has changed. It is located further down in the
  program
  as the result of the larger table. However, that does not affect
  the coding
  of the instruction.</li>
 <li>Comparing state abbreviations: CLC&nbsp;CMSTATE,STATE.<br />
  This instruction does not change because the field locations are
  mapped.</li>
 <li>Incrementing the table entry pointer: LA&nbsp;R3,
  L_TABLE_ENTRY(R3).<br />
  This instruction does not change because the calculated field
  length is used
  as the increment value.</li>
 <li>Incrementing the quantity: A&nbsp;R1,TOTAL.<br />
  Once again, the field is mapped and does not require alteration.
</li>
</ul>

<p class="remark">
 Note:<br />
 if the size of CMSTATE is altered in the CMS0001A macro or copybook,
 this application can be reassembled, error free, with no
 modifications,
 whatsoever.</p>

<h3><a name="chap15" id="chap15">Using the Same Lay-out Twice.
</a></h3>

<p>Many programs need to compare the contents of one record to the
 contents of
 another record. In this case, we have two instances of the same
 structure. In
 the past, this meant coding two separate lay-outs with field names
 that are
 mildly different. An example might be ZIP1 and ZIP2.</p>

<p>HLASM provides a feature called the Labelled Using statement to
 resolve this
 problem. A Labelled Using statement allows us to assign one DSECT
 to multiple
 locations at the same time. The locations may be referenced by a
 register,
 or may be assigned to a symbol defined in core.</p>

<p>To demonstrate this power, a new census program will be developed.
 We will
 assume the input dataset is sorted into state abbreviation sequence.
 The program
 will read records and increment a counter. When the state
 abbreviation
 changes, the counter will contain the number of records for the
 previous state
 abbreviation.</p>

<p>To accomplish this, the program is going to read a record, compare
 the state
 abbreviation on the record just read to the previous record's state
 abbreviation. If there is a change, then a count will be produced.
 The record just read will be moved to the storage assigned for the
 previous
 record.</p>

<pre>
         ...
COUNTER  DC    PL4'1'                  * State counter
PREVREC  DS    CL(L_INPUT_LAYOUT)      * Storage for input record
         ...
INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GL,EODAD=EOFINFIL
         ...
</pre>

<p>The above code establishes a save area for the previous record
 processed.
 Once an input record has been processed, it will be moved to PREVREC.
 In
 addition, the MACRF on the DCB has been changed from GM to GL. This
 informs
 the program that the input record is not moved to a defined storage
 area with
 each get. The record read by the system is considered the current
 record, and
 it remains in its buffer where it can be referenced with R1.</p>

<p class="remark">
 Note:<br />
 if the program is using any system service other than the get macro,
 or calls
 any subprogram during the processing of any record, R1 will be
 considered
 a volatile register, and cannot be used to keep any data or pointer
 during or after execution of that service or call. In a real program
 R1 should be used only as a temporary or working register.</p>

<p>A table is not defined in this application as nothing is being
 tabled.
 The program uses the change in state abbreviation to indicate a
 state count.</p>

<pre>
         ...
PRV      USING INPUT_LAYOUT,INREC      * Assign DSECT to INREC
CUR      USING INPUT_LAYOUT,R1         * Assign DSECT to register
         ...
FILELOOP GET   INFILE                  * Read record into storage
         CLC   CUR.CMSTATE,PRV.CMSTATE * State changed?
         BNE   CHGSTATE                * Yes: go process changed
                                         state
* Save current record
         MVC   INREC,CUR.INPUT_LAYOUT  * or code "INREC,0(R1)"
         AP    COUNTER,P'1'            * Increment counter
         B     FILELOOP                * and go read next record
         ...
</pre>

<p>The USING statements are assigned the labels PRV and CUR. The
 USING labelled
 PRV uses INPUT_LAYOUT to map storage at PREVREC. The USING labelled
 CUR uses
 INPUT_LAYOUT to map storage at 0(R1), which is the location of the
 record
 within its
 buffer. The USING labels are used to qualify a field name so that
 the
 assembler understands which instance of the field name you are
 referring to.
 PRV.CMSTATE refers to the location of CMSTATE within PREVREC, or
 PREVREC+146.
 CUR.CMSTATE refers to the location of CMSTATE, as pointed to by R1,
 or
 146(R1).</p>

<h3><a name="chap16" id="chap16">Placing DSECTs at the Top of the
 Program.</a></h3>

<h4><a name="chap17" id="chap17">Why Place DSECTs at the Top of the
 Program?</a></h4>

<p>The assembler operates using two passes of the source code. In the
 first pass
 of the source code, it identifies all symbols and attempts to
 identify all
 the attributes of those symbols. However, some attributes may not
 be resolved
 because they cannot be established in a sequential manner. In these
 cases,
 the attributes will not be resolved until the second pass of the
 source code.</p>

<p>Identification of symbols involves reading copybooks and expanding
 macros.
 Macros are those single statements that generate code for you. For
 example,
 DCB, OPEN, and GET are examples of macros. Structured programming
 macros from
 the HLASM Toolkit or Bixoft's eXtended Assembly language like
 IF/ELSE/ENDIF
 and DO/END are other examples. Some macros require all symbol
 attributes to
 be resolved during the first pass. Without resolution, the assembler
 may
 generate errors because it cannot identify field lengths.</p>

<p>The assembler processes the source in sequence. So, placing DSECTs
 that
 invoke copybooks at the top of the source code establishes the
 symbols early
 on so that a macro's code can be expanded without error.</p>

<p>Personally, I like to have all DSECTs at the top of the program.
 This is in line with other languages like PASCAL, C, COBOL, and BASIC.
 It provides one location for all the structures, and provides the
 programmer with information as to what the program will be working
 with.</p>

<p class="remark">
 Bixoft Remark:<br />
 Our advice is to insert all DSECTs at the top of the program. This
 has the
 following advantages:</p>
<ul>
 <li>All labels and most of their attributes are established early
  in the
  first pass, enabling macros and conditional assembly statements to
  test
  these properties and react accordingly.</li>
 <li>Placing all DSECTs at the top of a program relieves the
  assembler from
  using its &quot;look-ahead mode&quot; to find as yet undefined
  symbols.
  However powerful look-ahead mode can be, it is expensive, it slows
  down
  the compilation process, and cannot always deliver the correct
  information.</li>
</ul>

<h4><a name="chap18" id="chap18">Additional Housekeeping Required.
</a></h4>

<p>The beginning of an assembler program will normally begin with
 some type of
 housekeeping entry macro. However, if you place DSECTS above the
 entry macro,
 it may cause an assembly error. To prevent the error from occurring,
 a change
 in the housekeeping code at the top of the program is required.
 A program
 should follow this structure.</p>

<pre>
ProgName CSECT
*
*        DSECTS and mapping macros go here
*
ProgName "Housekeeping Macro or entry point CSECT logic"
         ...
</pre>

<p>The CSECT statement at the top prevents the assembly errors from
 occurring.</p>

<p class="remark">
 Bixoft remark:<br />
 When using Bixoft's eXtended Assembly language, the PGM macro is
 used
 for generating the entry logic, including all mappings required.
 E.g.:</p>
<pre>
ProgName PGM   VERSION=V00R00M00,      * Version number
 *
               HDRTXT='Sample program',
 *
               SAVES=2,                * Internal save-areas
 *
               MAPS=(CMS0001A,         * Private lay-outs
 *
               DCB,DCBE,DECB,IOB)      * Standard IBM lay-outs
</pre>

<h3><a name="chap19" id="chap19">In Conclusion.</a></h3>

<p>As this paper demonstrates, programming concepts like abstraction,
 reuse, and
 derivation can be utilized in assembler as they are in higher level
 languages
 like PASCAL, C, or BASIC. Abstraction can be used to hide the details
 of
 structure that would otherwise clutter the source code. Reuse allows
 us to
 leverage the accomplishments of others so that our effort is reduced.
 Derivation allows us to use pre-existing attributes in the definition
 of like
 fields. All the concepts give us the ability to make the HLASM
 assembler work
 harder for us so we do not have to.</p>

<p>The sample programs show how abstraction and reuse are applied to
 macro and/or
 copybook usage. Macros and copybooks standardize our programs. It
 speeds up
 the process of understanding the code because field names will be
 consistent
 from one module to the next. Copybooks also provide the basis from
 which we
 can derive like storage spaces and like field definitions. For
 example, we can
 use the definition of CMSTATE in the definition of a table entry so
 those like
 fields have like attributes.</p>

<p>The sample programs also demonstrate that broad use of these
 techniques can
 dramatically reduce our future maintenance efforts. In some cases,
 maintenance
 may be reduced to zero when a record or field definition changes.
</p>

<p>It is my hope that you will take an interest in the techniques
 explained in
 this paper. The use of these techniques will save you much time and
 effort in
 the future. These techniques reduce the impact that change has on
 the entire
 module.</p>

/HTML

         HTMLDEF NIELSEN.UK2
<!-- UK -->
<h3><a name="chap20" id="chap20">
 Appendix A: Sample Program Using Table.</a></h3>

<pre>
SAMPLE01 CSECT
INPUT_LAYOUT DSECT
         COPY  CMS0001A                * Standard record lay-out
L_INPUT_LAYOUT EQU *-INPUT_LAYOUT      * Calculate length of lay-out

TABLE_ENTRY DSECT
STATE    DS    CL(L'CMSTATE)           * State abbreviation
TOTAL    DS    FL4                     * Total quantity
FEMALE   DS    FL4                     * Female quantity
MALE     DS    FL4                     * Male quantity
UNKNOWN  DS    FL4                     * Unknown gender
L_TABLE_ENTRY EQU *-TABLE_ENTRY        * Calculate length of entry

MAX_ENTRIES EQU 100                    * 100 Total entries

SAMPLE01 ENTERMPG BASE=R12,VER=A,MAIN=N,TEST=Y,DESC='TABLE EXAMPLE'
         USING INPUT_LAYOUT,INREC      * Assign DSECT to symbol
         USING TABLE_ENTRY,R3          * Assign DSECT to register

         IF    (CLI,FirstTime,EQ,FTyes) * Only during first pass
          MVI  FirstTime,FTno          * Set first-pass indicator
          OPEN (INFILE,INPUT)          * Open input dataset
         ENDIF ,                       *

         DO    INF                     * Do until end of file
READREC   GET  INFILE,INREC            * Read input record

          LA   R3,STATE_CENSUS_TABLE   * Point to start of table
          DO   UNTIL=(C,R3,NL,=A(E_STATE_CENSUS_TABLE))

           IF  (CLI,STATE,EQ,X'00')    * Empty state located?
            MVC STATE,CMSTATE          * Yes: add new state to table
           ENDIF

           IF  (CLC,CMSTATE,EQ,STATE)  * State entry located?
            INCR TOTAL                 * Increment total count
            SELECT CLI,CMGENDER,EQ     * Which gender:
            WHEN CMGENDER_MALE         * Male?
             INCR MALE                 * Yes: increment male counter
            WHEN CMGENDER_FEMALE       * Female?
             INCR FEMALE               * Yes: increment female counter
            ELSE ,                     * Unknown gender, so
             INCR UNKNOWN              * increment unknown count
            ENDSEL
            B  READREC                 * Exit from inner do loop
           ENDIF

           LA  R3,L_TABLE_ENTRY(R3)    * Point next table entry
          ENDDO ,                      * and go check this entry

          WTO  'No more room in table' * Out of table space...
          ABEND 666                    * No more room

         ENDDO ,                       * End of outer loop

EOF      CLOSE INFILE                  * Close input dataset
         LEAVEMPG RC=0                 * End of job

         LTORG
FirstTime DC   XL1'00'                 * First-pass indicator
FTYES    EQU   X'00'                   * Yes: first pass
FTno     EQU   X'FF'                   * No: initialization done
INREC    DS    CL(L_INPUT_LAYOUT)      * define storage for input

INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GM,EODAD=EOF

* Define the table
STATE_CENSUS_TABLE DC (MAX_ENTRIES)XL(L_TABLE_ENTRY)'00'
E_STATE_CENSUS_TABLE EQU *             * Define end-of-table address

         END   SAMPLE01
</pre>

<h3><a name="chap21" id="chap21">
 Appendix B: Sample Program Using Change in State Abbreviation.
</a></h3>

<pre>
SAMPLE02 CSECT

INPUT_LAYOUT DSECT
         COPY  CMS0001A                * Standard record lay-out
L_INPUT_LAYOUT EQU *-INPUT_LAYOUT      * Calculate length of lay-out

SAMPLE02 ENTERMPG BASE=R12,VER=A,MAIN=N,TEST=Y,DESC='ABBR SAMPLE'
PRV      USING INPUT_LAYOUT,INREC      * Assign DSECT to symbol
CUR      USING INPUT_LAYOUT,R3         * Assign DSECT to register

         IF    (CLI,FirstTime,EQ,FTyes) * Only during first pass
          MVI  FirstTime,FTno          * Set first-pass indicator
          OPEN (INFILE,INPUT)          * Open input dataset
          GET   INFILE                 * Read first record
          LR    R3,R1                  * Set pointer to record read
* Copy first record to prevent recognition of a state change
* for the very first record read.
          MVC   PRV.INPUT_LAYOUT,CUR.INPUT_LAYOUT
         ENDIF ,                       *

         DO    INF                     * Do until end of file
          GET  INFILE                  * Read a record
          LR   R3,R1                   * Set ptr to current record
          IF   (CLC,CUR.CMSTATE,NE,PRV.CMSTATE) * Change in state?
           OI  COUNTER+L'COUNTER-1,X'0F' * Make counter unsigned
           UNPK WTO01+24(7),COUNTER    * Insert counter into message
           MVC WTO01+15(L'CMSTATE),PRV.CMSTATE * Add previous state
WTO01      WTO 'STATE: ..   QTY=XXXXXXX ' * Display state and count
           ZAP COUNTER,=P'0'           * Reset counter
          ENDIF
          AP   COUNTER,=P'1'           * Increment counter
* Make current record the previous one
          MVC  PRV.INPUT_LAYOUT,CUR.INPUT_LAYOUT
*         MVC  INREC,0(R3)             * Alternative code for move
         ENDDO

EOF      CLOSE INFILE                  * Close input dataset
         LEAVEMPG RC=0                 * End of job

         LTORG
FirstTime DC   XL1'00'                 * First-pass indicator
FTYES    EQU   X'00'                   * Yes: first pass
FTno     EQU   X'FF'                   * No: initialization done
COUNTER  DC    PL4'1'                  * Initialize counter to one
INREC    DS    CL(L_INPUT_LAYOUT)      * Define storage for input

INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GM,EODAD=EOF

         END
</pre>

<h4 align="center">
 &copy; Copyright Don V. Nielsen 2000. All rights reserved.</h4>

/HTML

         HTMLDEF NIELSEN.UKL
<!-- UK -->
<p>
 To <a href="#chap01">Introduction</a>.<br />
 To <a href="#chap02">Background Terminology</a>.<br />
 To <a href="#chap06">Building Blocks</a>.<br />
 To <a href="#chap10">Step 1, Map the Data</a>.<br />
 To <a href="#chap12">Step 2, Build the Program</a>.<br />
 To <a href="#chap15">Using the Same Lay-out Twice</a>.<br />
 To <a href="#chap16">Placing DSECTs at the Top of the Program</a>.
<br />
 To <a href="#chap19">In Conclusion</a>.<br />
 To <a href="#chap20">Sample Program Using Table</a>.<br />
 To <a href="#chap21">Sample Program Using Change in State
 Abbreviation</a>.
</p>

/HTML

         HTMLDEF NIELSEN.UKF
<!-- UK -->
<p class="footer" align="center">
 This text was written by Don V. Nielsen<br/>
 &copy; Copyright: Don V. Nielsen, 2000. All rights reserved.<br />
 <a href="mailto:DonN@cmscms.com">e-mail</a> the author.</p>

/HTML

         HTMLDEF NIELSEN.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/nielsen.htm -->
<!-- -->
<title>Redesigning Assembler Language Development</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<link rev="Bixoft - boeken en verwijzingen" href="links.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe" />
<meta http-equiv="description"
      content="Bixoft site over assembler codeer-technieken." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF NIELSEN.NLT
<!-- NL -->
<h1 align="center">Redesigning Assembler Language Development.</h1>

<p class="header" align="center">Don V Nielsen, 19 mei 2000</p>

<p class="remark">
 Opmerking:<br />
 Bixoft heeft "Redesigning Assembler Language Development" omgezet in
 een
 web-document, met toestemming van de auteur om deze versie te
 publiceren.
 Tevens hebben wij een aantal kleine wijzigingen aangebracht.
 Desalniettemin blijven de copyrights voor het document hieronder
 volledig
 berusten bij de heer Nielsen.<br />
 Alle code fragementen in dit document zijn niet meer dan voorbeelden.
 Er
 wordt op geen enkele wijze gegarandeerd dat deze vrij zijn van fouten
 en/of
 omissies. U mag (delen van) de code fragmenten gebruiken, maar het
 blijft
 in alle aspecten uw eigen verantwoordelijkheid om uw programma's te
 testen.</p>

<p class="remark">
 Contact:<br />
 Dhr. Nielsen ontvangt graag uw commentaar, opmerkingen, etc.
 <a href="mailto:DonN@cmscms.com">e-mail Don Nielsen</a>.
 Wel graag in het engels.<br />
 Als u liever reageert in het nederlands,
 <a href="mailto:bixoft@bixoft.nl">e-mail Bixoft</a>.</p>

<p>Gezien de technische aard van het onderstaande document hebben wij
 ervoor
 gekozen de originele tekst niet te vertalen in het nederlands.
 Derhalve gaan
 wij nu verder in het engels.</p>

/HTML

         HTMLDEF NIELSEN.NL1
<!-- NL -->
<p>Dit document bevat de volgende hoofdstukken:</p>
<ul>
 <li><a href="#chap01">Introductie.</a></li>
 <li><a href="#chap02">Achtergrond: Terminologie.</a>
  <ul>
   <li><a href="#chap03">Abstractie.</a></li>
   <li><a href="#chap04">Hergebruik.</a></li>
   <li><a href="#chap05">Afleiding.</a></li>
  </ul>
 </li>
 <li><a href="#chap06">Bouwstenen.</a>
  <ul>
   <li><a href="#chap07">Het veld.</a></li>
   <li><a href="#chap08">De indeling van een record of een tabelregel.
 </a></li>
   <li><a href="#chap09">De tabel.</a></li>
  </ul>
 </li>
 <li><a href="#chap10">Stap 1, Beschrijf de gegevens.</a>
  <ul>
   <li><a href="#chap11">Census tabel toevoegen.</a></li>
  </ul>
 </li>
 <li><a href="#chap12">Stap 2, Bouw het programma.</a>
  <ul>
   <li>
    <a href="#chap13">Velden benaderen in record en tabel.</a>
   </li>
   <li><a href="#chap14">Tellers naar geslacht toevoegen aan de tabel.
 </a></li>
  </ul>
 </li>
 <li><a href="#chap15">Dezelfde indeling tweemaal gebruiken.</a></li>
 <li><a href="#chap16">DSECTs opnemen aan het begin van het programma.
 </a>
  <ul>
   <li><a href="#chap17">Waarom DSECTs aan het begin van het programma
    plaatsen?</a></li>
   <li><a href="#chap18">Overige benodigde huishoudelijke taken.</a>
 </li>
  </ul>
 </li>
 <li><a href="#chap19">Conclusie.</a></li>
 <li><a href="#chap20">Appendix A: Voorbeeldprogramma met
  tabel-gebruik.</a></li>
 <li>
  <a href="#chap21">Appendix B: Voorbeeld programma met wijziging in
   status.</a>
 </li>
</ul>

<h3><a name="chap01" id="chap01">Introductie.</a></h3>

<p>Het doel van dit document is het belichten van codeermethoden en
   -technieken
 in High Levek Assembler. HLASM heeft zich ontwikkeld tot een veel
 krachtiger
 assembler dan veel mensen zich realiseren. Kennis van deze kracht en
 begrip
 voor de wijze waarop deze kracht kan worden aangewend kan je vele
 uren werk
 besparen bij het coderen en ontwikkelen, en ook bij later onderhoud.
</p>

<p>Programmeer-concepten, zoals abstractie, hergebruik, en
 kwalificatie
 kunnen worden toegepast in assembler - net als in hogere
 programmeertalen
 zoals C, Cobol, en Basic. Het gebruik van copybooks wordt
 aangemoedigd.
 Nieuwe methoden om copybooks toe te passen middels het USING
 statement
 zullen worden ge&iuml;ntroduceerd. Tevens zal worden uitgelegd
 waarom
 DSECTs in het begin van het programma dienen te worden opgenomen.
</p>

<p>We gebruiken twee eenvoudige applicaties om te laten zien hoe met
 de
 nieuwe concepten gewerkt kan worden. De eerste applicatie is een
 eenvoudig tel-programma dat records leest uit een dataset, om daarin
 opgeslagen staat-codes op te slaan in een tabel en ze te tellen.
 De applicatie toont de nieuwe codeer-technieken voor het bouwen
 van tabellen. Het toont tevens hoe deze technieken handmatige
 wijzigingen verminderen of overbodig maken wanneer element-definities
 in de tabel wijzigen.</p>

<p>De tweede applicatie is ook een tel-programma. Deze applicatie
 gebruikt geen tabel, maar een dataset die gesorteerd is op
 staat-code.
 Het telt aantallen staat-codes door de staat-code van elk
 gelezen record te vergelijken met die van het voorgaande record.
 Deze applicatie toont hoe een DSECT meerdere geheugen-gebieden
 gelijktijdig kan bestrijken.</p>

<p>In eerste instantie lijkt het wellicht veel werk om deze technieken
 te leren. Implementatie lijkt ook extra typewerk met zich mee te
 brengen. Maar als je wat meer ervaring opbouwt en beter vertrouwt
 raakt met deze technieken, dan gaat het min of meer vanzelf.
 Je programma's worden beter leesbaar en de benodigde
 onderhouds-inspanningen nemen geweldig af. In sommige gevallen
 kan onderhoud zelfs gereduceerd worden tot her-assemblage van
 de bestaande source.</p>

<p>De voorbeeld-programma's in Appendix A en Appendix B gebruiken de
 HLASM toolkit macro's. Deze macro's implementeren
 programmeer-structuren
 die ook in andere talen voorkomen, zoals IF/ELSE/ENDIF, DO lussen,
 etcetera. De macro's vereenvoudigen het coderen en verbeteren de
 leesbaarheid van het programma.</p>

<p class="remark">
 Bixoft opmerking:<br />
 In plaats van de toolkit kunenn ook de macro's uit Bixoft's eXtended
 Assembly
 language gebruikt worden voor structuur en nog betere leesbaarheid.
</p>

<h3><a name="chap02" id="chap02">Achtergrond: Terminologie.</a></h3>

<h4><a name="chap03" id="chap03">Abstractie.</a></h4>

<p>De dikke van Dale definieert abstraheren als:
 &quot;ontdoen van het toevallige, het concrete.&quot;
 Het toepassen van de term abstractie op het programmeren houdt in,
 dat
 de programmeur bevrijdt wordt van de onderliggende details van het
 proces.
 Het aanroepen van een functie is een voorbeeld van abstractie.
 Een functie wordt aangeroepen om een taak uit te voeren en een
 resultaat terug te geven. We hoeven niet te weten hoe de functie zijn
 taak uitvoert. We vertrouwen er gewoonweg op, dat het zijn taak
 correct
 zal uitvoeren, en het juiste resultaat zal terug geven.</p>

<p>Dit vertrouwen is het moeilijkste onderdeel voor ons assembler
 programmeurs. De meeste van ons willen alle details weten. Echter,
 het toepassen van abstractie vereenvoudigt ons werk. Dit vereist
 vertrouwen dat de zaken zijn zoals zij nu eenmaal zijn, en dat het
 niet nodig is dat we weten waarom ze zo zijn. Het kost vaak moeite
 om dit te accepteren. Bedenk echter dat dit concept allang wordt
 toegepast op de diverse systeem-routines.</p>

<h4><a name="chap04" id="chap04">Hergebruik.</a></h4>

<p>Hergebruik is het concept om in het verleden voltooid werk toe te
 passen om ontwikkel-tijd en -moeite te besparen. Een aangeroepen
 module is een voorbeeld van hergebruik. Een macro is een ander
 voorbeeld. Wanneer een standaard set logica kan worden gecodeerd
 als een aanroepbare module of een macro, dan kunnen anderen in de
 toekomst die logica toepassen zonder het opnieuw te hoeven
 ontwikkele
 (het wiel opnieuw uitvinden, bij wijze van spreken).
 Nog een andere vorm van hergebruiken is het copy-member. Het
 copy-member
 is een definitie van de een of andere structuur. Anderen hoeven
 geen tijd en moeite te verspillen om een structuur te coderen
 wanneer die structuur al beschikbaar is als een copy-member - of een
 macro.</p>

<h4><a name="chap05" id="chap05">Afleiding.</a></h4>

<p>Afleiding is ontvangen of verkrijgen van iets vanuit een bron.
 Bij het defini&euml;ren van een veld kunnen we attributen van het
 veld afleiden van een eerder gedefinieerd veld. Bij voorbeeld:
 een programma moet een postcode uit een input record moet onthouden.
 Het programma gebruikt een macro of copy-member waarin de attributen
 van een postcode-veld al zijn vastgelegd. De attributen van de
 bestaande veld-definitie kunnen gebruikt worden om de attributen
 van het werk-veld voor de postcode af te leiden.</p>

<h3><a name="chap06" id="chap06">Bouwstenen.</a></h3>

<h4><a name="chap07" id="chap07">Het Veld.</a></h4>

<p>Het veld vertegenwoordigt de simpelste structuur. Het representeert
 een gegeven. Voor de assembler is een veld een aantal bytes in het
 geheugen, en niet veel meer. Sommigen vinden het data-type belangrijk,
 maar voor de assembler is het veldtype - packed, hexadecimaal, of
 tekst - voor het gemak van de programmeur. Het belangrijkgste
 attribuut
 van een veld is de hoeveelheid geheugen die het in beslag neemt.</p>

<h4><a name="chap08" id="chap08">De indeling van een record of
 tabel-regel.</a></h4>

<p>Alle records en alle tabel-regels kunnen beschreven worden middels
 een
 indeling of lay-out. De indeling is een structuur die de gegevens
 beschrijft.
 Het definieert de plaats en de lengte van elk veld en het definieert
 de structuur. De lengte van de indeling is de cumulatieve lengte van
 alle
 velden plus de opvulling die hier en daar wellicht nodig is voor de
 juiste alignment. Records en tabel-regels zijn functioneel equivalent.
</p>

<p>Codeer altijd de indeling voor tabel-regels en records. Dit is de
 eerste en allerbelangrijkste stap bij het schrijven van een programma.
 Het coderen van de indelingen vereenvoudigt het ontwikkelen en het
 inderhouden van de programmatuur. Wanneer een indeling gedeeld wordt
 door een aantal programma's, sla de definitie dan op als een macro
 of een copy-member. Dit vermindert programmeertijd en -inspanning in
 toekomstige projecten.</p>

<h4><a name="chap09" id="chap09">De tabel.</a></h4>

<p>Een tabel is een geheugen gebied waarin een serie gerelateerde
 gegevens
 wordt opgeslagen. Een tabel bevat een of meer regels, die alle
 dezelfde
 indeling hebben. Een twee-dimensionale tabel kan men zich voorstellen
 als
 een stuk gelinieerd papier: het papier fungeert als tabel, elke regel
 bevat een tabel-regel.</p>

<p>Tabellen hebben attributen, net als velden. Een tabel heeft een
 begin-adres,
 dat is het adres van de eerste byte van de eerste tabel-regel. Het
 heeft een
 eind-adres, dat is de laatste byte van de laatste tabel-regel. De
 grootte van
 de tabel kan gedeeld worden door de lengte van een tabel-regel, het
 resultaat
 is het aantal regels dat de tabel kan bevatten.</p>

<p>We gebruiken een eenvoudige applicatie voor volkstelling om de
 besproken concepten te demonstreren. De tabel bevat twee velden:
 een staat-code en een telling. Later zullen we tellingen naar
 geslacht toevoegen aan de regel-indeling. Dit voorbeeld zal laten
 zien hoe een tabel en programma zodanig gecodeerd kunnen worden,
 dat een verandering in de indeling van de tabel-regel kan worden
 doorgevoerd zonder dat het programma gewijzigd behoeft te worden.
</p>

<h3><a name="chap10" id="chap10">Stap 1, Beschrijf de gegevens.</a>
</h3>

<p>De eerste stap bij het ontwikkelen van het programma is het
 vastleggen
 van de record-indeling van de input dataset. Het programma leest de
 input
 data vanuit de DDname INFILE. Het gebruikt een DCB met dezelfde naam
 om de gegevens uit het bestand te lezen. De records worden bij het
 lezen
 rechtstreeks geplaatst in een geheugengebied dat is beschreven door
 het copy-member CMS0001A. Het copy-member bevat alle veld-definities
 en is
 ge&iuml;mplementeerd met een DSECT. De basis structuren
 (record-indeling
 en DCB) zijn als volgt gecodeerd:</p>
<pre>
         ...
INPUT_LAYOUT DSECT
         COPY  CMS0001A                * Standaard record-indeling
L_INPUT_LAYOUT EQU *-INPUT_LAYOUT      * Bepaal record lengte
         ...
INREC    DS    CL(L_INPUT_LAYOUT)      * Reserveer geheugen voor
                                         record
         ...
INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GM,EODAD=EOFINFIL
         ...
</pre>

<p>Wanneer we een macro gebruiken in plaats van een copy-member (of
   een macro
 die een copy-member gebruikt), dan zou het voorbeeld hierboven er
 als
 volgt uit komen te zien:</p>
<pre>
         ...
INPUT_LAYOUT CMS0001A DSECT=YES        * Indeling en lengte input
         ...
INREC    DS    CL(L_INPUT_LAYOUT)      * Reserveer geheugen voor
                                         record
         ...
INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GM,EODAD=EOFINFIL
         ...
</pre>

<p>De concepten van hergebruik, abstractie, en afleiding zijn alle
 toegepast in het voorbeeld hierboven. Het gebruik van macro of
 copy-member CMS0001A is een voorbeeld van hergebruik en abstractie.
 Allereerst wordt een bestaande indeling hergebruikt, in plaats van
 een nieuwe te ontwikkelen. Probeer altijd een bestaande macro of
 copy-member to gebruiken wanneer er een beschikbaar is. De voordelen
 van het gebruik van een macro of copy-member zijn:</p>
<ol>
 <li>een macro of copy-member dwingt het gebruik van
  gestandaardiseerde
  veldnamen af voor alle programma's die de macro of het copy-member
  gebruiken</li>
 <li>er bestaat slechts een enkele definitie van de indeling</li>
 <li>een wijziging in de indeling hoeft uitsluitend in de macro
  of het copy-member aangebracht te worden, niet in alle programma's
  die er mee werken</li>
 <li>de tijd en moeite om de indeling te coderen voor elk programma
  wordt ge&euml;limineerd</li>
</ol>

<p>Het gebruik van een macro of cop-member past ook abstractie toe.
 De macro of het copy-member verbergt de details van de
 record-indeling.
 Ja, het is belangrijk om de record-indeling te kennen waarmee je
 werkt.
 Gedetailleerde kennis van de structuur van de indeling is echter maar
 zelden nodig. Abstractie is ook toegepast door de definitie van
 L_INPUT_LAYOUT. Dit statement gebruikt de assembler om de lengte
 van de gedefinieerde indeling te berekenen. Het is abstract omdat
 je de lengte niet hoeft te weten; je vertrouwt erop, dat de lengte
 voor je uitgerekend wordt.</p>

<p>Afleiding is gebruikt bij de definitie van het INREC veld. De
 assembler
 bepaalt de lengte van INREC aan de hand van de berekende record
 lengte,
 L_INPUT_LAYOUT. Dit is ook een voorbeeld hoe je een veldlengte
 impliciet
 kunt defini&euml;ren. Met HLASM is het mogelijk het lengte-attribuut
 van
 een veld over te laten nemen van een eerder gedefinieerd veld. HLASM
 kan dan geheugen reserveren voor het veld op basis van de lengte van
 het bestaande veld.</p>

<p>HLASM staat het toe een veldlengte expliciet of impliciet te
 defini&euml;ren.
 Bij een expliciete definitie wordt de lengte van het veld exact
 gecodeerd.
 De definitie van INREC hierboven bij voorbeeld, had ook expliciet
 gecodeerd
 kunnen worden als &quot;INREC&nbsp;DS&nbsp;CL200&quot;. Dit is een
 simpeler
 methode om INREC te defini&euml;ren. Er zjn echter twee redenen om het
 gebruik van expliciete lengtes te af te raden:</p>
<ol>
 <li>het vereist dat je van te voren exact weet hoe groot de indeling
  wordt</li>
 <li>de lengte van de indeling kan in de toekomst veranderen</li>
</ol>

<p>Om geheugen expliciet te kunnen toewijzen moet je van te voren
 weten
 hoeveel ruimte nodig zal zijn. Je zou de macro of het copy-member
 moeten
 raadlpegen, de totale lengte bepalen, en dan die lengte coderen in de
 definitie. Bovendien kost het dan veel moeite om in alle programma's
 de
 lengtes aan te passen wanneer de lengte van de indeling wijzigt.
 Alle programma's die de indeling gebruiken moeten nagelopen worden
 om de expliciete geheugen-toewijzing aan te passen.</p>

<p>Een impliciete definitie houdt in dat een symbool wordt gebruikt
 om
 de lengte van het veld te defini&euml;ren. L_INPUT_LAYOUT is een
 voorbeeld
 van een impliciete lengte, omdat het symbool een representatie is
 voor
 de benodigde lengte. L_INPUT_LAYOUT is de lengte van CMS0001A zoals
 die
 door de assembler is berekend. Brede toepassing van dit concept kan
 benodigde onderhouds-inspanninge reduceren van uren tot minuten.
 Wanneer de feitelijke lengte van CMS0001A verandert, dan zal de
 assembler
 de nieuwe lengte berekenen, de berekende lengte toekennen aan het
 symbool
 L_INPUT_LAYOUT, wekle vervolgens weer gebruikt wordt om de lengte van
 INREC te bepalen. Zodoende leidt een wijziging van de macro of het
 copy-member er toe, dat ook de programma's - automatisch - worden
 aangepast.</p>

<h4><a name="chap11" id="chap11">Census Tabel toevoegen.</a></h4>

<pre>
         ...
INPUT_LAYOUT CMS0001A DSECT=YES        * Indeling en lengte v/d input
         ...
TABLE_ENTRY DSECT
STATE    DS    CL(L'CMSTATE)           * Staat-code
TOTAL    DS    F                       * Totaal aantal
L_TABLE_ENTRY EQU *-TABLE_ENTRY        * Bereken lengte tabel-regel
         ...
MAX_ENTRIES EQU 100                    * Maximum tabel-regels
         ...
INREC    DS    CL(L_INPUT_LAYOUT)      * Geheugen voor record
...
INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GM,EODAD=EOFINFIL
         ...
* Definieer geheugen voor tabel
STATE_CENSUS_TABLE DC (MAX_ENTRIES)XL(L_TABLE_ENTRY)'00'
E_STATE_CENSUS_TABLE EQU *             * Einde tabel
         ...
</pre>

<p>Twee structuren en een constante zijn toegevoegd aan ons voorbeeld.
 De TABLE_ENTRY structuur beschrijft de velden die gebruikt worden in
 elke tabel-regel. Het eerste veld, STATE, bevat de staat-code. Dit is
 de sleutel voor het zoeken in de tabel. Merk op dat de definitie van
 STATE een tweede voorbeeld is van afleiding. STATE leidt zijn lengte
 af van CMSTATE. Je hoeft niet te weten hoe lang CMSTATE is. Je kunt
 er op vertrouwen dat STATE wordt gedefinieerd met dezelfde lengte.
</p>

<p>Het tweede veld, TOTAL, is het teller-veld. Het wordt gedefinieerd
 als F, een 32-bits binair veld (32-bit signed binary integer).
 Bij het verwerken van elk input record wordt de staat-code gezocht
 in de tabel. Als de code niet gevonden wordt, dan wordt zij
 toegevoegd.
 Het telveld TOTAL in de betreffedne tabel-regel wordt vervolgens
 opgehoogd.</p>

<p>De assembler moet L_TABEL_ENTRY berekenen. Dit is een vereiste
 omdat
 de lengte van STATE afgeleid is. Je weet niet van te voren, zonder
 het
 na te zoeken, wat de lengte van CMSTATE is. Dus vertrouwen we erop
 dat
 de assembler de lengte van STATE correct afleidt van de feitelijke
 lengte van CMSTATE. Beide velden worden zodoende even lang.
 L_TABLE_ENTRY wordt dan gelijk aan L'STATE+L'TOTAL plus eventueel
 benodigde ruimte voor alignment. Nogmaals: de feitelijke lengte
 doet niet ter zake. Het is belangrijk je te realiseren, dat de velden
 een bepaalde lengte hebben, en dat die lengte correct bepaald wordt
 door de assembler.</p>

<p>MAX_ENTRIES is een constante die het maximale aantal regels in de
 tabel
 weergeeft. Het wrodt gebruikt in de definitie van de tabel
 STATE_CENSUS_TABLE.
 De grootte van de tabel wordt bepaald door deze constante.
 Zoals eerder al aangegeven is een tabel de geheugenruimte die door
 alle
 tabel-regels gezamenlijk in beslag kan worden genomen. De grootte van
 de
 tabel is dus gelijk aan lengte van een tabel-regel maal het maximale
 aantal tabel-regels. De definitie van STATE_CENSUS_TABLE is een
 voorbeeld van deze berekening. Door MAX_ENTRIES en L_TABLE_ENTRY te
 gebruiken om de attributen van de tabel impliciet aan te geven, kan
 de assembler de benodigde hoeveelheid geheugen berekenen, en die
 hoeveelheid toewijzen aan het symbool STATE_CENSUS_TABLE.</p>

<p>De werkelijke kracht van deze impliciete definitie wordt
 gerealiseerd
 wanneer de tabel onderhoud behoeft. Als STATE_CENSUS_TABLE meer
 regels
 moet kunnen bevatten, dan hoef je alleen maar de waarde van
 MAX_ENTRIES aan te passen. Sterker nog, wanneer de indeling van de
 tabel-regels verandert, dan zal de assembler de nieuwe lengte van
 de tabel-regel gebruiken om de grootte van STATE_CENSUS_TABLE te
 bepalen. Dit zullen we zien, als we straks telvelden naar geslacht
 gaan toevoegen aan de tabel-regels.</p>

<h3><a name="chap12" id="chap12">Stap 2, Bouw het programma.</a></h3>

<h4><a name="chap13" id="chap13">Velden benaderen in record en tabel.
</a></h4>

<pre>
         ...
         USING INPUT_LAYOUT,INREC      * Beschrijf velden in INREC
         USING TABLE_ENTRY,R3          * Beschrijf tabel-regel
         ...
FILELOOP GET   INFILE,INREC            * Lees een record
         LA    R3,STATE_CENSUS_TABLE   * Wijs naar begin tabel
TBLLOOP  C     R3,=A(E_STATE_CENSUS_TABLE) * Einde tabel?
         BNL   ERRTABLE                * Ja: foutafhandeling
         CLI   STATE,X'00'             * Staat nul = lege regel
         BE    ADDSTATE                * Niet gevonden: voeg staat toe
         CLC   CMSTATE,STATE           * Staat-code komt overeen?
         BE    STFOUND                 * Ja: gevonden
         LA    R3,L_TABLE_ENTRY(R3)    * Volgende tabel-regel
         B     TBLLOOP                 * Ga die ook controleren
ADDSTATE MVC   STATE,CMSTATE           * Plaats staat in lege regel
STFOUND  LA    R1,1                    * Neem de waarde 1
         A     R1,TOTAL                * Tel oud staat-totaal bij
         ST    R1,TOTAL                * Wordt nieuw staat-totaal
         B     FILELOOP                * En verwerk volgende record
         ...
</pre>

<p>Nadat een input record gelezen is, moeten we de overeenkomstige
 staat-code lokaliseren in de tabel. Maar voordat we de gegevens
 kunnen benaderen, moeten zowel het input record als de tabel-regels
 beschreven worden. Dit doen we middels het USTING statement.
 USING is niet een instructie die de processor uitvoert zoals een
 vergelijking of een sprong-instructie. Het is een directief dat
 de assembler gebruikt om te bepalen waar een beschreven
 geheugen-gebied
 zich bevindt. We gebruiken DSECTs om geheugen-gebieden te beschrijven.
 Een DSECT kan gebruikt worden om geheugen te beschrijven dat
 is toegewezen aan een symbool, of aan een register. Beide vormen
 worden gebruikt in het voorbeeld.</p>

<p>USING&nbsp;INPUT_LAYOUT,INREC wijst de CMS0001A record-indeling toe
 aan
 het geheugengebied dat is gedefinieerd als INREC. Wanneer een veld uit
 het CMS0001A copy-member wordt gebruikt in een instructie, dan worden
 de benodigde gegevens uit het INREC-gebied bewerkt. Wanneer CMSTATE
 wordt gebruikt in het programma, dan is positie 147 van INREC (oftewel
 INREC+146) de lokatie waar de gegevens te vinden zijn.</p>

<p>USING&nbsp;TABLE_ENTRY,R3 wijst de regel-indeling voor TABLE_ENTRY
 toe aan
 het geheugen waar register 3 naar toe wijst. Wanneer een veld uit de
 TABLE_ENTRY indeling wordt gebruikt, dan bevinden de gegevens zich in
 geheugen waar register 3 naar toe wijst. STATE bevindt zich op
 positie 1
 van de tabel-regel. Wanneer STATE gebruikt wordt in het programma,
 dan
 zal de eerste byte die door R3 wordt aangewezen [oftewel 0(R3)]
 de staat-code van die tabel-regel bevatten.</p>

<p>De programmeerlus is als volgt opgebouwd:</p>
<ul>
 <li>Een input record wordt gelezen in bewaard in INREC.</li>
 <li>Het addres van STATE_CENSUS_TABLE wordt in R3 geladen.
  R3 wordt gebruikt als pointer naar elke tabel-regel.</li>
 <li>Het adres in R3 wordt vergeleken met het adres van
  E_STATE_CENSUS_TABLE.
  Wanneer R3 dit adres bereikt, geeft dat aan dat de tabel vol is,
  maar dat er toch nog een regel bij moet. Dit is een fout-situatie
  die
  ingrijpen vereist.</li>
 <li>De staat-code in de tabel-regel wordt vergeleken met nul.
  De assembler heeft de hele tabel initieel gevuld met nullen,
  een waarde die we daarvoor hebben uitgekozen, omdat die nimmer
  voor kan komen in de input dataset. Als de staat-code nul is,
  betekent dat, dat de staat-code uit het input-record niet gevonden
  is in de tabel. De code wordt toegevoegd in de nog ongebruikte
  tabel-regel. De teller wordt opgehoogd en de verwerking vervolgt.
 </li>
 <li>De staat-code uit het input-record wordt vergeleken met de
  staat-code uit de actuele tabel-regel. Als ze gelijk zijn, dan
  springt het programma om de staat-teller te verhogen en verder te
  gaan met de lees-lus.</li>
 <li>Wanneer de staat-code uit het input record niet gevonden wordt
  en de staat-code in de actuele tabel-regel is niet nul, dan moeten
  we verder zoeken naar de juiste tabel-regel. De berekende lengte
  van de tabel-regel wordt opgeteld bij R3, de tabel-regel-wijzer,
  en de zoek-lus wordt vervolgd.</li>
</ul>

<p>Laten we nog eens een paar belangrijke punten nalopen.
 In de eerste plaats de relatie tussen INPUT_LAYUOT en INREC.
 INREC was gedefinieerd met de berekende lengte van de input
 record-indeling, oftewel L_INPUT_LAYOUT. Hoewel INREC gedefinieerd
 is met de juiste hoeveelheid geheugen, bevat het geen velden.
 Referenties aan velden in INREC worden toegewezen middels het
 USING&nbsp;INPUT_LAYOUT,INREC statement. Zodoende wordt geheugen
 uit INREC benaderd wanneer een veld uit INPUT_LAYOUT wordt
 gebruikt.</p>

<p>Het symbool L_TABLE_ENTRY wordt gebruikt om R3, de tabel-regel
 pointer,
 te verzetten. De assembler gebruikt de berekende lengte. Een
 verandering
 in de lengte van de tabel-regels zal geen invloed hebben op deze code.
</p>

<h4><a name="chap14" id="chap14">Tellers naar geslacht toevoegen aan
                                 de tabel.</a></h4>

<pre>
         ...
INPUT_LAYOUT CMS0001A DSECT=YES        * Indeling en lengte input
         ...
TABLE_ENTRY DSECT
STATE    DS    CL(L'CMSTATE)           * Staat-code
TOTAL    DS    F                       * Totaal aantal
FEMALE   DS    F                       * Aantal vrouwen
MALE     DS    F                       * Aantal mannen
UNKNOWN  DS    F                       * Geslacht onbekend
L_TABLE_ENTRY EQU *-TABLE_ENTRY        * Lengte tabel-regel
         ...
MAX_ENTRIES EQU 100                    * Max. regels in tabel
         ...
INREC    DS    CL(L_INPUT_LAYOUT)      * Definieer input buffer
         ...
INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GM,EODAD=EOFINFIL
         ...
* Definieer geheugen voor tabel
STATE_CENSUS_TABLE DC (MAX_ENTRIES)XL(L_TABLE_ENTRY)'00'
E_STATE_CENSUS_TABLE EQU *             * Einde tabel
         ...
</pre>

<p>Nu dat het basis-programma ontwikkeld is, zullen we nieuwe tellers
 toevoegen aan de tabel. Bij het toevoegen van deze tellers zullen we
 besparingen in tijd en moeite realiseren die deze
 programmeer-technieken
 mogelijk maken.</p>

<p>De enige verandering in het gehele programma is de toevoeging van
 de
 velden FEMALE, MALE, en UNKNOWN. Dat is alles. Het programma kan
 opnieuw
 geassembleerd worden zonder verdere aanpassingen.</p>

<p>Laten we bekijken wat er gebeurd is en hoe de assembler omgaat met
 de veranderingen. Drie velden zijn toegevoegd aan TABLE_ENTRY.
 Deze velden hebben de tabel-regel 12 bytes langer gemaakt.
 De berekende lengte L_TABLE_ENTRY wordt in het gehele programma
 gebruikt. De assembler bepaalt het benodigde geheugen voor de tabel
 aan de hand van de impliciete waarden van L_TABLE_ENTRY en
 MAX_ENTRIES,
 en kent die hoeveelheid geheugen toe aan STATE_CENSUS_TABLE.</p>

<p>Er zijn geen wijzigingen nodig in de programma-code. De statements
 die door de wijziging be&iuml;nvloed worden zijn de volgende:</p>
<ul>
 <li>Bij einde tabel: C&nbsp;R3,=A(E_STATE_CENSUS_TABLE).<br />
  De locatie van E_STATE_CENSUS_TABLE is veranderd. Het bevindt zich
  nu verderop in het programma doordat de tabel groter is geworden.
  Het heeft echter geen invloed op de codering van het statement.</li>
 <li>Vergelijking van de staat-codes CLC&nbsp;CMSTATE,STATE.<br />
  Deze instructie behoeft niet te worden gewijzigd omdat de locaties
  van de velden elders zijn beschreven.</li>
 <li>Verhogen van de tabel-regel pointer: LA&nbsp;R3,L_TABLE_ENTRY(R3).
<br />
  Deze instructie wijzigt niet omdat de berekende lengte gebruikt
  wordt als ophoog-waarde.</li>
 <li>Het aantal ophogen: A&nbsp;R1,TOTAL.<br />
  Nogmaals: het veld is elders beschreven en hoeft niet te
  worden aangepast.</li>
</ul>

<p class="remark">
 Opmerking:<br />
 Als de grootte van CMSTATE gewijzigd wordt in de CMS0001A macro of
 het copy-member, dan kan dit programma opnieuwe geassembleerd worden,
 foutloos, zonder wat voor aanpassing dan ook.</p>

<h3><a name="chap15" id="chap15">Dezelfde indeling tweemaal gebruiken.
</a></h3>

<p>Veel programma's moeten de inhoud van twee records met elkaar
 vergelijken.
 In die gevallen hebben we dus twee exemplaren van dezelfde structuur.
 In het verleden moesten we dan altijd twee varianten coderen van
 dezelfde
 indeling met veldnamen die lichtelijk verschillen, bij voorbeeld ZIP1
 an ZIP2.</p>

<p>HLASM heeft een voorziening genaamd &quot;Labelled Using&quot;
 waarmee
 dit probleem wordt opgelost. Een gelabelde using staat ons toe om een
 DSECT
 op meerdere plaatsen gelijktijdig van toepassing te verklaren.
 Die plaatsen kunnen aangewezen worden door een register, of zij
 kunnen
 toegewezen zijn aan een symbool in het programma.</p>

<p>Om de kracht hiervan aan te tonen zullen we een nieuw tel-programma
 ontwikkelen. We zullen aannemen dat de input dataset gesorteerd is
 op staat-code. Het programma leest de records en verhoogt een teller.
 Wanneer de staat-code wijzigt bevat de teller het aantal records met
 de verwerkte staat-code</p>

<p>Om dit te bereiken zal het programma een record lezen en de
 staat-code
 van het gelezen record vergelijken met de staat-code van het
 voorgaande
 record. Als er een wijziging optreedt, dan wordt de teller getoond.
 Elk gelezen record wordt gekopieerd naar het geheugen dat is
 gereserveerd
 voor het &quot;voorgaande record&quot;.</p>

<pre>
         ...
COUNTER  DC    PL4'1'                  * Staat teller
PREVREC  DS    CL(L_INPUT_LAYOUT)      * Voorgaande record
         ...
INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GL,EODAD=EOFINFIL
         ...
</pre>

<p>De code hierboven definieert een gebied om het voorgaande verwerkte
 record te bewaren. Nadat een record verwerkt is, wordt het gekopieerd
 naar PREVREC. Bovendien is de MACRF-parameter op de DCB-macro
 gewijzigd
 van GM in GL. Het resultaat hiervan is, dat een record bij het lezen
 niet gekopieerd hoeft te worden naar een in het programma toegewezen
 geheugengebied. Het door het systeem gelezen record wordt beschouwd
 als het actuele record, maar dat record blijft wel in de buffer staan,
 waar het middels R1 aangewezen kan worden.</p>

<p class="remark">
 Opmerking:<br />
 Als het programma gebruik maakt van system services, anders dan de
 GET macro,
 of als het een subprogramma aanroept tijdens de verwerking van het
 record,
 dan wordt R1 beschouwd als een vluchtig register. Het kan dan niet
 gebruikt
 worden om gegevens of een pointer te vast te houden gedurende de
 uitvoering
 van die system service of dat subprogramma. In een echt programma
 dient R1
 uitsluitend als tijdelijk of werk-register gebruikt te worden.</p>

<p>In deze applicatie wordt geen tabel gedefinieerd omdat er niets
 getabuleerd wordt. Het programma gebruikt een staat-wissel om de
 staat-telling weer te geven.</p>

<pre>
         ...
PRV      USING INPUT_LAYOUT,INREC      * Benoem velden in INREC
CUR      USING INPUT_LAYOUT,R1         * Benoem velden in input record
         ...
FILELOOP GET   INFILE                  * Lees een record
         CLC   CUR.CMSTATE,PRV.CMSTATE * Staat-wissel?
         BNE   CHGSTATE                * Ja: handel wisseling af
* Save current record
         MVC   INREC,CUR.INPUT_LAYOUT  * of codeer "INREC,0(R1)"
         AP    COUNTER,P'1'            * Verhoog teller
         B     FILELOOP                * en verwerk volgende record
         ...
</pre>

<p>De USING statements zijn voorzien van labels PRV en CUR. De USING
 met
 label PRV gebruikt INPUT_LAYOUT om de velden in PREVREC te benoemen.
 De USING met label CUR gebruikt INPUT_LAYOUT om de velden van het
 record
 in zijn buffer te benoemen, dit betreft geheugen op locatie 0(R1).
 De USING labels worden gebruikt om de veldnamen te kwalificeren,
 zodat de
 assembler begrijpt welke versie van het veld bedoeld wordt.
 PRV.CMSTATE verwijst naar de locatie van CMSTATE in PREVREC, oftewel
 PREVREC+146.
 CUR.CMSTATE verwijst naar de locatie van CMSTATE in de record buffer,
 oftewel 146(R1).</p>

<h3><a name="chap16" id="chap16">DSECTs opnemen aan het begin van het
                                 programma.</a></h3>

<h4><a name="chap17" id="chap17">Waarom DSECTs aan het begin van het
                                 programma plaatsen?</a></h4>

<p>De assembler verwerkt de source code in twee verwerkingsgangen.
 In de eerste verwerkingsgang van de source code identificeert de
 assembler
 alle symbolen en probeert het alle attributen van die symbolen vast
 te stellen.
 Sommige attributen kunnen echter niet direct worden bepaald omdat ze
 niet
 op een sequentieel kunnen worden vastgesteld. In deze gevallen worden
 die
 attributen pas in de tweede verwerkingsgang vastgesteld.</p>

<p>Identificatie van symbolen omvat het lezen van copy-members, en het
 expanderen van macro's. Macro's zijn enkelvoudige statements die code
 voor je genereren. DCB, OPEN, en GET zijn voorbeelden van macro's.
 Macro's voor gestructureerd programmeren uit de HLASM toolkit en uit
 Bixoft's eXtended Assembly language zoals IF/ELSE/ENDIF en DO/END
 zijn andere voorbeelden. Sommige macro's vereisen dat de attributen
 van alle symbolen al tijdens de eerste verwerkingsgang bekend zijn.
 Zonder dat kan de assembler foutboodschappen afgeven omdat het
 b.v. veldlengtes niet kan vaststellen.</p>

<p>De assembler verwerkt de source volgordelijk. Door DSECTs en
 macro's
 die copy-members aanroepen op te nemen an het begin van het
 programma,
 worden de symbolen al vroeg in de verwerking vastgesteld zodat
 macro's
 daarna probleemloos ge&euml;xpandeerd kunnen worden.</p>

<p>Persoonlijk geef ik er de voorkeur aan om alle DSECTs direct in het
 begin van het programma op te nemen. Dit komt overeen met het gebruik
 in
 andere talen zoals PASCAL, C, COBOL, en BASIC. Het voorziet in een
 vaste
 plek voor alle structuren en verschaft de programmeur de benodigde
 informatie
 betreffende de gegevens die het programma moet verwerken.</p>

<p class="remark">
 Bixoft opmerking:<br />
 Wij adviseren om alle DSECTs boven in het programma op te nemen. Dit
 heeft de volgende voordelen:</p>
<ul>
 <li>Alle labels en bijna alle attributen worden al vroeg in het
  assemblage-proces vastgesteld. Hierdoor kunnen macro's en eventuele
  conditionele assembly statements deze eigenschappen testen en er
  correct op reageren.</li>
 <li>Door de DSECTs in het begin van het programma op te nemen wordt
   voorkomen dat de assembler zijn &quot;look-ahead mode&quot;
   gebruikt om nog onbekende symbolen te lokaliseren. Hoe krachtig
   look-ahead mode ook is, het is duur, het vertraagt het
   assemblage-proces,
   en het kan niet in alle gevallen de juiste infomatie opleveren.
</li>
</ul>

<h4><a name="chap18" id="chap18">Overige benodigde huishoudelijke
                                 taken.</a></h4>

<p>Assembler programma's beginnen normaal gesproken met enige
 huishoudelijke
 taken (entry macro). Maar als je de DSECTs nog voor de entry macro
 opneemt,
 dan kan dat assemblage-fouten veroorzaken. Om deze fouten te
 voorkomen
 dien je de huishouding aan het begin van het programma lichtelijk aan
 te
 passen. Programma's dienen dan als volgt opgebouwd te worden:</p>
<pre>
ProgName CSECT
*
*        DSECTs en gebieds-indelingen komen hier
*
ProgName "Huishoud-Macro of entree-logica voor de CSECT"
         ...
</pre>

<p>Het CSECT statement aan het begin van het programma voorkomt dat de
 assemblage fouten optreden.</p>

<p class="remark">
 Bixoft opmerking:<br />
 Met Bixoft's eXtended Assembly language wordt de PGM macro gebruikt
 om zowel de entree logica als alle benodigde indelingen te genereren.
 Bij voorbeeld:</p>
<pre>
ProgName PGM   VERSION=V00R00M00,      * Versie nummer
                                       *
               HDRTXT='Sample program',
                                       *
               SAVES=2,                * Interne save-areas
                                       *
               MAPS=(CMS0001A,         * Eigen indelingen
                                       *
               DCB,DCBE,DECB,IOB)      * Standaard IBM gebieden
</pre>

<h3><a name="chap19" id="chap19">Conclusie.</a></h3>

<p>Zoals dit document aangeeft kunnem programmeer-concepten zoals
 abstractie, hergebruik, en afleiding gebruikt worden in assembler,
 net als
 in ander programmeer-talen zoals PASCAL, C en BASIC. Abstractie kan
 gebruikt
 worden om details van structuren te af te schermen, die anders het
 overzicht op het programma maar in de weg zouden staan. Hergebruik
 stelt ons in staat het werk van anderen effici&euml;nt en snel toe te
 passen. Middels afleiding ten slotte kunnen we attributen van
 bestaande
 velden gebruiken wanneer we een overeenkomstig veld defini&euml;ren.
 Al deze concepten geven ons de mogelijkheid om HLASM het zware werk
 voor ons te laten opknappen, zodat we dat zelf niet meer hoeven te
 doen.</p>

<p>Het voorbeeld toont hoe abstractie en hergebruik kunnen worden
 toegepast
 bij het gebruik van macro's en copy-members. Macro's en copy-members
 standaardiseren onze programma's. Het bevordert het begrijpen van de
 programma-code, doordat veld-namen consistent zijn over de
 programma's
 heen. Macro's of copy-members vormen ook de basis van waaruit we
 overeenkomstige
 gebieden en velden kunnen defini&euml;ren. We kunnen bij voorbeeld
 de
 definitie van CMSTATE gebruiken om een tabel-regel te defini&euml;ren,
 zodanig dat beide velden dezelfde eigenschappen hebben.</p>

<p>Het voorbeeld-programma laat ook zien dat breed gebruik van deze
 technieken onze toekomstige onderhouds-inspanningen dramatisch
 kan verminderen. In sommige gevallen kan het onderhoud zelfs tot
 nul gereduceerd worden wanneer een veld of record-indeling moet
 worden aangepast.</p>

<p>Ik hoop dat je belangstelling is gewekt voor de technieken
 die hier besproken zijn. Het gebruik van deze technieken zal je
 in de toekomst eel tijd en inspanning besparen. Deze technieken
 reduceren de impact van wijzigingen op het hele module.</p>

/HTML

         HTMLDEF NIELSEN.NL2
<!-- UK -->
<h3><a name="chap20" id="chap20">
 Appendix A: Voorbeeld programma met tabel-gebruik.</a></h3>

<pre>
SAMPLE01 CSECT
INPUT_LAYOUT DSECT
         COPY  CMS0001A                * Standaard record-indeling
L_INPUT_LAYOUT EQU *-INPUT_LAYOUT      * Bepaal lengte record

TABLE_ENTRY DSECT
STATE    DS    CL(L'CMSTATE)           * Staat afkorting
TOTAL    DS    FL4                     * Totaal aantal
FEMALE   DS    FL4                     * Aantal vrouwen
MALE     DS    FL4                     * Aantal mannen
UNKNOWN  DS    FL4                     * Aantal geslacht onbekend
L_TABLE_ENTRY EQU *-TABLE_ENTRY        * Bepaal lengte tabel-regel

MAX_ENTRIES EQU 100                    * 100 tabel regels

SAMPLE01 ENTERMPG BASE=R12,VER=A,MAIN=N,TEST=Y,DESC='TABLE EXAMPLE'
         USING INPUT_LAYOUT,INREC      * Benoem velden in record
         USING TABLE_ENTRY,R3          * Adresseer tabel-velden

         IF    (CLI,FirstTime,EQ,FTyes) * Alleen de eerste keer:
          MVI  FirstTime,FTno          * Indicator uitzetten
          OPEN (INFILE,INPUT)          * Input dataset openen
         ENDIF ,                       *

MAINLINE EQU   *
         DO    INF                     * Doe voor elk record
READREC   GET  INFILE,INREC            * Lees input record

          LA   R3,STATE_CENSUS_TABLE   * Zoek juiste tabel-regel
          DO   UNTIL=(C,R3,NL,=A(E_STATE_CENSUS_TABLE))

           IF  (CLI,STATE,EQ,X'00')    * Tabelregel is leeg?
            MVC STATE,CMSTATE          * Ja: voeg staat toe
           ENDIF

           IF  (CLC,CMSTATE,EQ,STATE)  * Juiset staat gevonden?
            INCR TOTAL                 * Verhoog totaal-telling
            SELECT CLI,CMGENDER,EQ     * Controleer geslacht:
            WHEN CMGENDER_MALE         * Mannelijk?
             INCR MALE                 * Ja: tel bij de mannen
            WHEN CMGENDER_FEMALE       * Vrouwelijk?
             INCR FEMALE               * Ja: tel bij de vrouwen
            ELSE ,                     * Geslacht onbekend, dus:
             INCR UNKNOWN              * tel bij 'onbekend'
            ENDSEL
            B  READREC                 * Forceer einde zoek-lus
           ENDIF

           LA  R3,L_TABLE_ENTRY(R3)    * Wijs volgende tabel-regel
          ENDDO ,                      * en herhaal...

          WTO  'No more room in table' * Geen vrije regel meer
          ABEND 666                    * User abend 666

         ENDDO ,                       * Einde leeslus

EOF      CLOSE INFILE                  * Sluit input dataset
         LEAVEMPG RC=0                 * Einde programma

         LTORG
FirstTime DC   XL1'00'                 * Eerste-keer indicator
FTYES    EQU   X'00'                   * Ja: eerste keer
FTno     EQU   X'FF'                   * Nee: initialisatie klaar
INREC    DS    CL(L_INPUT_LAYOUT)      * Record buffer

INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GM,EODAD=EOF

* Definieer de tabel
STATE_CENSUS_TABLE DC (MAX_ENTRIES)XL(L_TABLE_ENTRY)'00'
E_STATE_CENSUS_TABLE EQU *             * Definieer einde-tabel addres

         END   SAMPLE01
</pre>

<h3><a name="chap21" id="chap21">
 Appendix B: Voorbeeld programma met wijziging in status.</a></h3>

<pre>
SAMPLE02 CSECT

INPUT_LAYOUT DSECT
         COPY  CMS0001A                * Standaard record indeling
L_INPUT_LAYOUT EQU *-INPUT_LAYOUT      * Bepaal lengte record

SAMPLE02 ENTERMPG BASE=R12,VER=A,MAIN=N,TEST=Y,DESC='ABBR SAMPLE'
PRV      USING INPUT_LAYOUT,INREC      * Benoem velden vorig record
CUR      USING INPUT_LAYOUT,R3         * Benoem velden actueel record

         IF    (CLI,FirstTime,EQ,FTyes) * Alleen de eerste keer:
          MVI  FirstTime,FTno          * Indicator uitzetten
          OPEN (INFILE,INPUT)          * Input dataset openen
          GET   INFILE                 * Lees eerste record
          LR    R3,R1                  * Wijs naar gelezen record
* Kopieer eerste record om te voorkomen dat er een staat-wissel
* wordt herkend voor het allereerste record.
          MVC   PRV.INPUT_LAYOUT,CUR.INPUT_LAYOUT
         ENDIF ,                       *

MAINLINE EQU   *
         DO    INF                     * Voor elk record
          GET  INFILE                  * Lees een record
          LR   R3,R1                   * Wijs naar actueel record
          IF   (CLC,CUR.CMSTATE,NE,PRV.CMSTATE) * Staat-wissel?
           OI  COUNTER+L'COUNTER-1,X'0F' * Verwijder teken uit telveld
           UNPK WTO01+24(7),COUNTER    * Teller naar bericht
           MVC WTO01+15(L'CMSTATE),PRV.CMSTATE * Voeg staat toe
WTO01      WTO 'STATE: ..   QTY=XXXXXXX ' * Toon staat en teller
           ZAP COUNTER,=P'0'           * Teller terug naar 0
          ENDIF
          AP   COUNTER,=P'1'           * Tel gevonden record
* Het actuele record wordt nu het vorige record
          MVC  PRV.INPUT_LAYOUT,CUR.INPUT_LAYOUT
*         MVC  INREC,0(R3)             * Alternatieve wijze van
                                         coderen
         ENDDO

EOF      CLOSE INFILE                  * Sluit input dataset
         LEAVEMPG RC=0                 * Einde programma

         LTORG
FirstTime DC   XL1'00'                 * Eerste-keer indicator
FTYES    EQU   X'00'                   * Ja: eerste keer
FTno     EQU   X'FF'                   * Nee: initialisatie klaar
COUNTER  DC    PL4'1'                  * Initialiseer teller op 1
INREC    DS    CL(L_INPUT_LAYOUT)      * Definieer 'vorig-record'
                                         buffer

INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GM,EODAD=EOF

         END
</pre>

<h4 align="center">
 &copy; Copyright Don V. Nielsen 2000. All rights reserved.</h4>

/HTML

         HTMLDEF NIELSEN.NLL
<!-- NL -->
<p>
 Naar <a href="#chap01">Introduction</a>.<br />
 Naar <a href="#chap02">Background Terminology</a>.<br />
 Naar <a href="#chap06">Building Blocks</a>.<br />
 Naar <a href="#chap10">Step 1, Map the Data</a>.<br />
 Naar <a href="#chap12">Step 2, Build the Program</a>.<br />
 Naar <a href="#chap15">Using the Same Lay-out Twice</a>.<br />
 Naar <a href="#chap16">Placing DSECTs at the Top of the Program</a>.
<br />
 Naar <a href="#chap19">In Conclusion</a>.<br />
 Naar <a href="#chap20">Sample Program Using Table</a>.<br />
 Naar <a href="#chap21">Sample Program Using Change in State
 Abbreviation</a>.
</p>

/HTML

         HTMLDEF NIELSEN.NLF
<!-- NL -->
<p class="footer" align="center">
 Deze tekst is geschreven door Don V. Nielsen,
 vertaald door A.F. Kornelis.<br/>
 &copy; Copyright: Don V. Nielsen, 2000. Alle rechten voorbehouden.
<br />
 Deze vertaling: &copy; Copyright: A.F. Kornelis, 2000,2003.
 Alle rechten voorbehouden.<br />
 E-mail <a href="mailto:DonN@cmscms.com">de auteur</a>
 of <a href="mailto:abe@bixoft.nl">de vertaler</a>.</p>

/HTML

         HTMLDEF NIELSEN.ESH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/espanol/nielsen.htm -->
<!-- -->
<title>
 Redise&ntilde;ando el Desarrollo con Lenguaje Ensamblador.
</title>
<link rev="Bixoft - books and sites" href="links.htm" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe" />
<meta http-equiv="description"
      content="About coding techniques for assembler." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF NIELSEN.EST
<!-- UK -->
<h1 align="center">
 Redise&ntilde;ando el Desarrollo con Lenguaje Ensamblador.</h1>

<p class="header" align="center">Por Don V Nielsen, May 19, 2000</p>

<p class="remark">
 Disclaimer:<br />
 Bixoft convirti&oacute; "Redise&ntilde;ando el Desarrollo con Lenguaje
 Ensamblador" en un documento de web con el permiso del autor original
 para su republicaci&oacute;n. Tambi&eacute;n efectuamos varios cambios
 menores. A&uacute;n asi aplican los Derechos de Autor del Sr. Nielsen
 en el documento a continuaci&oacute;n.<br />
 Todas los programas muestras en este documento, no son mas que
 ejemplos, y no est&aacute;n de manera alguna  garantizados de estar
 libres de errores u omisiones. Ud. puede usar (partes de) el
 c&oacute;digo muestra, pero permanece su propia responsabilidad el
 probar sus programas en todos los aspectos.</p>

<p class="remark">
 Contact:<br />
 El Sr. Nielsen agradecer&aacute; sus comentarios, observaciones, etc.
 <a href="mailto:DonN@cmscms.com">Don Nielsen e-mail</a>.</p>

/HTML

         HTMLDEF NIELSEN.ES1
<!-- UK -->
<p>Este documento contiene los siguientes cap&iacute;tulos:</p>
<ul>
 <li><a href="#chap01">Introducci&oacute;n.</a></li>
 <li><a href="#chap02">Terminolog&iacute;a usada.</a>
  <ul>
   <li><a href="#chap03">Abstracci&oacute;n.</a></li>
   <li><a href="#chap04">Reuso.</a></li>
   <li><a href="#chap05">Derivaci&oacute;n.</a></li>
  </ul>
 </li>
 <li><a href="#chap06">Partes fundamentales.</a>
  <ul>
   <li><a href="#chap07">El Campo.</a></li>
   <li>
    <a href="#chap08">La Vista (Lay-out) de un registro o entrada de
     Tabla.
    </a>
   </li>
   <li><a href="#chap09">La Tabla.</a></li>
  </ul>
 </li>
 <li>
  <a href="#chap10">Paso 1, Proyecci&oacute;n (Mapa) de los Datos.</a>
  <ul>
   <li><a href="#chap11">Adicionando la Tabla de Censo.</a></li>
  </ul>
 </li>
 <li><a href="#chap12">Paso 2, Construyendo el Programa.</a>
  <ul>
   <li>
    <a href="#chap13">Accesando los Campos en el Registro y en la
     Tabla.
    </a>
   </li>
   <li>
    <a href="#chap14">A&ntilde;adiendo el Contador de G&eacute;nero a
     la Tabla.
    </a>
   </li>
  </ul>
 </li>
 <li><a href="#chap15">Usando la Misma Vista(Lay-out) Dos Veces.</a>
 </li>
 <li>
  <a href="#chap16">Colocando los DSECTs al Principio del Programa.</a>
  <ul>
   <li><a href="#chap17">&iquest;Por qu&eacute; Colocar los DSECTs al
    Principio del Programa?</a></li>
   <li><a href="#chap18">Rutina de entrada (Housekeeping) Requerida
    adicional.</a></li>
  </ul>
 </li>
 <li><a href="#chap19">En Conclusi&oacute;n.</a></li>
 <li><a href="#chap20">Ap&eacute;ndice A: Programa Muestra Usando
  Tabla.</a></li>
 <li>
  <a href="#chap21">Ap&eacute;ndice B: Programa Muestra Usando un
   Cambio en Abreviatura de Estado.
  </a>
 </li>
</ul>

<h3><a name="chap01" id="chap01">Introducci&oacute;n.</a></h3>

<p>El prop&oacute;sito de este documento es sacar a la luz
 m&eacute;todos de codificaci&oacute;n y t&eacute;cnicas usando
 Lenguaje Ensamblador y el Ensamblador HLASM. El Ensamblador HLASM ha
 evolucionado con mucho m&aacute;s poder que el que muchas personas se
 han dado cuenta. El conocimiento de este poder y la comprensi&oacute;n
 de como utilizarlo, le puede ahorrar muchas horas de desarrollo y
 c&oacute;digo, al mismo tiempo que reduce los esfuerzos de
 mantenimiento.</p>

<p>La programaci&oacute;n de conceptos tales como abstracci&oacute;n,
 reuso, derivaci&oacute;n y calificaci&oacute;n, puede ser implementada
 en lenguaje ensamblador, de la misma manera que estos son codificados
 en lenguajes de alto nivel, como C, COBOL, y Basic. Promovemos el uso
 extensivo de Copybooks. Se introducir&aacute;n nuevos m&eacute;todos
 de implementaci&oacute;n de la instrucci&oacute;n USING.
 Tambi&eacute;n se explicar&aacute; como y por qu&eacute; los DSECTs
 deben ser definidos al principio del c&oacute;digo fuente.</p>

<p>Se usan dos aplicaciones sencillas para demostrar como trabajar con
 los conceptos nuevos. La primera aplicaci&oacute;n es un programa
 simple de censo que lee registros de un archivo, y luego guarda la
 abreviatura de estado y su contador en una tabla. La aplicaci&oacute;n
 demuestra todas las nuevas t&eacute;cnicas de codificaci&oacute;n para
 construir tablas. Tambi&eacute;n demuestra como estas t&eacute;cnicas
 pueden  reducir o eliminar cambios en el c&oacute;digo cuando cambian
 los elementos de la tabla.</p>

<p>La segunda aplicaci&oacute;n es tambi&eacute;n un programa de
 censos. Esta aplicaci&oacute;n no usa una tabla. En su lugar, usa un
 archivo ordenado por la abreviatura de estado. Totaliza las cantidades
 por estado, al tiempo que los registros son leidos al comparar la
 abreviatura del estado del registro actual con la abreviatura de
 estado del registro anterior. Esta aplicaci&oacute;n demuestra como
 una DSECT puede usarse para proyectar simult&aacute;neamente dos
 registros distintos.</p>

<p>Al principio, el aprender estas t&eacute;cnicas puede parecer como
 mucho trabajo. La implementaci&oacute;n puede parecer que es mucho
 teclear. Sin embargo, al pasar el tiempo y las t&eacute;cnicas se
 emplean m&aacute;s frecuentemente, su uso llega a ser natural, y Ud.
 encontrar&aacute; que las mejor&iacute;as al leer son una gran
 ventaja. Sus esfuerzos de mantenimiento se reducir&aacute;n
 dram&aacute;ticamente. En algunas ocasiones, el mantenimiento puede
 inclusive ser eliminado.</p>

<p>Los programas muestra en los ap&eacute;ndices A y ap&eacute;ndice B
 usan macros de HLASM. Estas macros agregan estructuras de
 programaci&oacute;n encontradas en otros lenguajes, tales como
 IF/ELSE/ENDIF, ciclos DO, y otros. Las macros simplifican el
 c&oacute;digo e incrementan la comprensibilidad del c&oacute;digo.</p>

<p class="remark">
 Comentario de Bixoft:<br />
 En lugar del conjunto de utiler&iacute;as, las macros empleadas en el
 Lenguage Ensamblador eXtendido de Bixoft pueden usarse para estructura
 y lograr un mejor entendimiento de la aplicaci&oacute;n.</p>

<h3><a name="chap02" id="chap02">Terminolog&iacute;a usada.</a></h3>

<h4><a name="chap03" id="chap03">Abstracci&oacute;n.</a></h4>

<p>Webster define abstracci&oacute;n como:
 &quot;El acto o proceso de separar o remover.&quot; La
 aplicaci&oacute;n del t&eacute;rmino abstracci&oacute;n a la
 programaci&oacute;n, significa separar al programador de los detalles
 fundamentales del proceso. Llamar una funci&oacute;n es un ejemplo de
 abstracci&oacute;n. Una funci&oacute;n se llama para completar una
 tarea y regresar un resultado. Nosotros no necesitamos conocer como la
 funci&oacute;n ejecuta su tarea. Simplemente confiamos que va a
 ejecutar su tarea correctamente y regresar el resultado correcto.</p>

<p>Esta confianza o dependencia es el concepto m&aacute;s
 dif&iacute;cil que nosotros los programadores de ensamblador
 necesitamos practicar. La mayor&iacute;a de nosotros queremos conocer
 todos los detalles. Sin embargo, practicando la abstracci&oacute;n
 simplificar&aacute; nuestro c&oacute;digo. Esto requiere el confiar
 que algunas cosas son simplemente porque lo son, y no es necesario que
 nosotros conozcamos porqu&eacute; son as&iacute;. Este concepto lleva
 mucho esfuerzo de nuestra parte para aceptarlo. Ud. deber&iacute;a
 darse cuenta que este concepto ha sido aplicado y aceptado por un
 largo tiempo con respecto a las rutinas del sistema.</p>

<h4><a name="chap04" id="chap04">Reuso.</a></h4>

<p>Reuso es el concepto de implementar el esfuerzo hecho por otros para
 ahorrar tiempo y esfuerzo en el desarrollo. El llamar un
 m&oacute;dulo es una forma de reuso. Una macro es otro ejemplo. Cuando
 un ente de l&oacute;gica est&aacute;ndar puede ser codificado como un
 m&oacute;dulo a llamar, o macro, entonces otras personas en el futuro
 pueden implementar esa l&oacute;gica sin tener que desarrollarla
 (inventar la rueda de nuevo, por as&iacute; decirlo). Otra forma de
 reuso es el copybook. El copybook es la definici&oacute;n de alguna
 estructura. Otros no perder&aacute;n m&aacute;s tiempo y esfuerzo
 codificando una estructura que ya est&aacute; disponible como copybook
 o como macro.</p>

<h4><a name="chap05" id="chap05">Derivaci&oacute;n.</a></h4>

<p>Derivaci&oacute;n es recibir u obtener algo de un c&oacute;digo
 fuente. En la definici&oacute;n de un campo, podemos derivar un
 atributo del campo, de un campo previamente definido. Por ejemplo, un
 programa necesita guardar una copia del c&oacute;digo postal tomado de
 un registro leido. El programa usa una macro o copybook que ya ha
 definido los atributos del c&oacute;digo postal. Los atributos
 existentes de una definici&oacute;n existente en la macro o copybook
 puede ser derivados y usados en la definici&oacute;n de un nuevo
 campo.</p>

<h3><a name="chap06" id="chap06">Partes Fundamentales.</a></h3>

<h4><a name="chap07" id="chap07">El Campo.</a></h4>

<p>Un campo es la estructura m&aacute;s simple. Representa una pieza de
 datos. Para el ensamblador, un campo representa nada m&aacute;s que un
 n&uacute;mero de bytes en memoria. Algunos podr&iacute;an considerar
 importante el tipo de datos. Sin embargo, para el ensamblador, la
 definici&oacute;n de un campo como empacado, hexadecimal o caracter es
 para la conveniencia del programador. El atributo m&aacute;s
 significativo de un campo es la cantidad de espacio que ocupa.</p>

<h4>
 <a name="chap08" id="chap08">
  La Vista de un Registro o Entrada en Tabla.
 </a>
</h4>

<p>Todos los registros y entradas en tablas se pueden describir con una
 vista. Una vista (lay-out) es la estructura que describe los datos.
 Define la ubicaci&oacute;n y longitud de los campos, y hace respetar
 su estructura. La longitud de una vista es el total de las longitudes
 acumuladas de todos los campos, m&aacute;s cualquier otros bytes
 adicionados con prop&oacute;sito de alineamiento. Los registros y
 entradas en la tabla tienen la misma funcionalidad.</p>

<p>Siempre codifique estas vistas para entradas en las tablas o
 registros de un archivo. Este primer paso, es el paso m&aacute;s
 importante cuando comience a codificar. Codificar estas vistas
 simplifica el desarrollo y mantenimiento de los programas. Si una
 vista va a compartirse entre varios programs, entonces guarde esta
 vistas como macro o como un copybook. Esto reducir&aacute; el tiempo
 de codificaci&oacute;n y el esfuerzo en futuros projectos.</p>

<h4><a name="chap09" id="chap09">La Tabla.</a></h4>

<p>Una tabla es un &aacute;rea de memoria dedicada a mantener una serie
 de datos relacionados. Una tabla consiste de una o mas entradas, donde
 la vista de cada entrada es id&eacute;ntica. Visualmente, una tabla de
 dos dimensiones puede ser representado como una pieza de papel rayado
 de un cuaderno. El papel representa la tabla y cada una de las lineas
 representa una entrada.</p>

<p>Las tablas, as&iacute; como los campos, tienen atributos. Una tabla
 tiene una direcci&oacute;n de inicio, que es el primer byte de la
 primer entrada. Tiene una direcci&oacute;n de fin, que es el
 &uacute;ltimo byte de la &uacute;ltima entrada. El espacio que ocupa
 la tabla puede ser dividido equitativamente por la longitud de la
 entrada, dando el m&aacute;ximo n&uacute;mero de entradas que la tabla
 puede mantener.</p>

<p>Una tabla sencilla de aplicaci&oacute;n de censo, se usa para
 demostrar los conceptos presentados. La tabla consistir&aacute; de dos
 campos: Abreviatura del estado y total del censo. M&aacute;s tarde se
 agregar&aacute;n totales por g&eacute;nero a la vista de la tabla.
 Esto demostrar&aacute; como una tabla y un programa pueden construirse
 de tal manera que un cambio en la definici&oacute;n de la vista no
 significar&aacute; cambios en la codificaci&oacute;n. El mantenimiento
 al c&oacute;digo del programa podr&iacute;a haberse eliminado.</p>

<h3>
 <a name="chap10" id="chap10">
  Paso 1, Proyecci&oacute;n (Mapa) de los Datos.
 </a>
</h3>

<p>El primer paso en el desarrollo del programa es la proyecci&oacute;n
 del dataset de entrada. El programa lee los datos a trav&eacute;s de
 una DD llamada INFILE. Usa una DCB con el mismo nombre para leer los
 datos de entrada. Los datos son leidos directamente en una estructura
 del registro definido por un copybook llamado CMS0001A. El copybook
 contiene todas las definiciones de campos, y es implementado como una
 DSECT. La estructra base (vista del registro y DCB) se codifican como
 sigue:</p>
<pre>
         ...
INPUT_LAYOUT DSECT
         COPY  CMS0001A                * Vista est&aacute;ndar del regi
+stro
L_INPUT_LAYOUT EQU *-INPUT_LAYOUT      * Calcula la longitud de la vist
+a
         ...
INREC    DS    CL(L_INPUT_LAYOUT)      * Define memoria para la entrada
         ...
INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GM,EODAD=EOFINFIL
         ...
</pre>

<p>Cuando se usa una macro en lugar de un copybook (o una macro usando
 un copybook), la muestra anterior podr&iacute;a recodificarse como:
</p>
<pre>
         ...
INPUT_LAYOUT CMS0001A DSECT=YES        * Vista y longitud de entrada
         ...
INREC    DS    CL(L_INPUT_LAYOUT)      * Define memoria para entrada
         ...
INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GM,EODAD=EOFINFIL
         ...
</pre>

<p>Todos los conceptos de reuso, abstracci&oacute;n, y
 derivaci&oacute;n han sido aplicados en el ejemplo de arriba. El uso
 de la macro o copybook CMS0001A es un ejemplo de reuso y
 abstracci&oacute;n. Primero, se reusa una vista existente en lugar de
 redesarrollarla. Siempre trate de usar una macro o copybook existente
 cuando est&eacute; disponible. Los beneficios del uso de una macro o
 copybook son:</p>
<ol>
 <li>Una macro o copybook impone el uso estandarizado de nombres de
  campo a trav&eacute;s de muchos programas</li>
 <li>Solo existe una definici&oacute;n de la vista del registro</li>
 <li>Se aplica un cambio en la vista solo al copybook, no a muchos
  programas</li>
 <li>Se elimina el tiempo y el esfuerzo de recodificar la vista para
  cada programa</li>
</ol>

<p>El uso de la macro o copybook tambi&eacute;n implementa
 abstracci&oacute;n. La macro o copybook esconde los detalles de la
 vista del registro. Si, es importante conocer la vista del registro
 con que uno est&aacute; trabajando. Sin embargo, rara vez se requiere
 el conocimiento detallado de la estructura de la vista. La
 abstracci&oacute;n tambi&eacute;n se aplica con la definici&oacute;n
 de L_INPUT_LAYOUT. Esta declaraci&oacute;n usa el ensamblador para
 calcular la longitud de la vista definida. Esto es abstracto porque
 Ud. no necesita conocer la longitud. Ud. conf&iacute;a que la longitud
 ha sido calculada para su uso.</p>

<p>La derivaci&oacute;n se usa en la definici&oacute;n del campo INREC.
 El ensamblador establece la longitud de INREC usando la longitud
 calculada del registro L_INPUT_LAYOUT. Esto es tambi&eacute;n un
 ejemplo de como definir impl&iacute;citamente la longitud de un campo.
 Con HLASM, el atributo de longitud de un campo puede ser asignado con
 un campo previamente definido. Derivar el atributo de longitud permite
 al HLASM asignar la memoria basada en el valor de longitud existente.
</p>

<p>El HLASM le permite definir una longitud de campo impl&iacute;cita o
 expl&iacute;citamente. Una definici&oacute;n expl&iacute;cita de la
 longitud de un campo tiene la longitud del campo codificado. Por
 ejemplo, la definici&oacute;n INREC arriba, ha sido codificada
 expl&iacute;citamente usando &quot;INREC&nbsp;DS&nbsp;CL200&quot;
 Este es el m&eacute;todo m&aacute;s sencillo de definir INREC. Sin
 embargo, hay dos razones para desalentar el uso de longitudes
 expl&iacute;citas:</p>
<ol>
 <li>El hacerlo as&iacute; requiere el conocimiento previo de la
  longitud de la estructura</li>
 <li>Puede cambiar la longitud de la estructura</li>
</ol>

<p>Para asignar expl&iacute;citamente la memoria, uno debe conocer
 previamente la memoria requerida. Uno deber&aacute; buscar la  macro o
 el copybook, para determinar su longitud, y codificar esa longitud en
 la definici&oacute;n expl&iacute;cita. Aparte de esto, se requiere
 mucho esfuerzo para actualizar los programas cuando cambie la longitud
 de la vista. Se requerir&aacute; indagar todos los programas que
 tienen implementada la vista, para actualizar la asignaci&oacute;n
 expl&iacute;cita de memoria.</p>

<p>Una definici&oacute;n impl&iacute;cita, significa que se usa un
 s&iacute;mbolo para definir la longitud del campo. L_INPUT_LAYOUT es
 un ejemplo de una longitud impl&iacute;cita, porque el s&iacute;mbolo
 es una representaci&oacute;n de la longitud requerida. L_INPUT_LAYOUT
 es la longitud de CMS0001A calculada por el ensamblador. La
 implementaci&oacute;n abierta de este concepto puede reducir los
 esfuerzos de mantenimiento de horas a minutos. Si llegara a cambiar la
 longitud de CMS0001A, el ensamblador calcular&aacute; la nueva
 longitud, asignando el valor de longitud a L_INPUT_LAYOUT, que es
 usado entonces para establecer la longitud de INREC. De esta manera,
 el actualizar la macro o copybook tambi&eacute;n actualiza todos los
 programas autom&aacute;ticamente.</p>

<h4>
 <a name="chap11" id="chap11">Adicionando la Tabla de Censo.</a>
</h4>

<pre>
         ...
INPUT_LAYOUT CMS0001A DSECT=YES        * Vista y longitud de entrada
         ...
TABLE_ENTRY DSECT
STATE    DS    CL(L'CMSTATE)           * Abreviatura de Estado
TOTAL    DS    F                       * Cantidad total
L_TABLE_ENTRY EQU *-TABLE_ENTRY        * C&aacute;lculo de longitud d
+e entrada
         ...
MAX_ENTRIES EQU 100                    * M&aacute;ximo # de entradas e
+n la tabla
         ...
INREC    DS    CL(L_INPUT_LAYOUT)      * Define memoria para la entrada
...
INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GM,EODAD=EOFINFIL
         ...
* Define la memoria de la tabla
STATE_CENSUS_TABLE DC (MAX_ENTRIES)XL(L_TABLE_ENTRY)'00'
E_STATE_CENSUS_TABLE EQU *             * Fin de tabla
         ...
</pre>

<p>Se han agregado a nuestro c&oacute;digo de ejemplo dos estructuras y
 una constante. La estructura TABLE_ENTRY provee un mapa de los campos
 usados en la entrada de la tabla. El primer campo, STATE, es la
 abreviatura del estado y es el campo llave para realizar
 b&uacute;squedas en la tabla. Note que STATE es el segundo ejemplo de
 derivaci&oacute;n. STATE deriva su longitud desde CMSTATE. Ud. no
 requiere conocer que tan largo es CMSTATE. Ud. conf&iacute;a que STATE
 ser&aacute; definido por una cantidad igual de bytes.</p>

<p>El segundo campo, TOTAL es el campo contador. Es definido como F,
 una palabra binaria con signo, o 32 bits. Cuando cada registro de
 entrada es procesado, la abreviatura de estado es ubicada en la tabla.
 Si la abreviatura no se encuentra, entonces se agrega. El campo TOTAL
 es entonces incrementado tambi&eacute;n.</p>

<p>El ensamblador debe ser usado para calcular L_TABLE_ENTRY. Esto se
 requiere porque la longitud de STATE es derivada. No hay manera de
 saber, - sin investigar - la longitud actual de CMSTATE. As&iacute;
 que confiamos que el ensamblador derivar&aacute; la longitud de
 CMSTATE y la asignar&aacute; a STATE. El resultado es que la longitud
 de STATE es igual que la longitud de CMSTATE. L_TABLE_ENTRY es igual a
 L'STATE+L'TOTAL m&aacute;s cualquier n&uacute;mero de bytes agregados
 para alineamiento. Una vez m&aacute;s, el valor de longitud actual no
 es importante. Lo importantes es que uno se percate que la longitud
 existe y que ha sido correctamente computada por el ensamblador.</p>

<p>MAX_ENTRIES es una constante que representa el n&uacute;mero
 m&aacute;ximo de entradas que se pueden almacenar en la tabla. Para
 esto se usa la definici&oacute;n STATE_CENSUS_TABLE. El tama&ntilde;o
 de la tabla se controla con esta constante. Una tabla, como se
 defini&oacute; anteriormente, es el espacio usado por todas las
 entradas de la tabla. Es decir, el tama&ntilde;o de la tabla es igual
 a la longitud de la entrada de la tabla multiplicada por el
 n&uacute;mero m&aacute;ximo de entradas. La definici&oacute;n actual
 de STATE_CENSUS_TABLE es un ejemplo de este c&aacute;lculo. El uso de
 MAX_ENTRIES y L_TABLE_ENTRY impl&iacute;citamente definen los
 atributos de la tabla, el ensamblador calcula la memoria  requerida y
 asigna el s&iacute;mbolo STATE_CENSUS_TABLE a este espacio.</p>

<p>El verdadero poder de esta definici&oacute;n impl&iacute;cita viene
 cuando la tabla requiere mantenimiento. Todo lo que se requiere para
 expandir el n&uacute;mero de entradas que STATE_CENSUS_TABLE puede
 contener, es cambiar el valor de MAX_ENTRIES. Aparte de esto, si la
 definici&oacute;n de la entrada de la tabla cambia, el ensamblador usa
 la longitud de la entrada resultante para establecer el tama&ntilde;o
 de STATE_CENSUS_TABLE. Esto ser&aacute; demostrado m&aacute;s adelante
 cuando se agregue el contador de g&eacute;nero a TABLE_ENTRY.</p>

<h3><a name="chap12" id="chap12">Step 2, Construyendo el Programa.</a>
</h3>

<h4><a name="chap13" id="chap13">
 Accesando los Campos del Registro y de la Tabla.</a>
</h4>

<pre>
         ...
         USING INPUT_LAYOUT,INREC      * Asigna DSECT a INREC
         USING TABLE_ENTRY,R3          * Asigna DSECT a REGISTRO
         ...
FILELOOP GET   INFILE,INREC            * Lee registro a memoria
         LA    R3,STATE_CENSUS_TABLE   * Carga apuntador a entrada de t
+abla
TBLLOOP  C     R3,=A(E_STATE_CENSUS_TABLE) * Si es el fin de la tabla
         BNL   ERRTABLE                * ...bifurca a rutina de error
         CLI   STATE,X'00'             * Si el estado es nulo(entrada v
+ac&iacute;a)
         BE    ADDSTATE                * ...agrega el estado a la tabla
         CLC   CMSTATE,STATE           * &iquest;El estado ya est
+&aacute; en la tabla?
         BE    STFOUND                 * Si. Entrada localizada
         LA    R3,L_TABLE_ENTRY(R3)    * Apunta a la siguiente entrad
+a en la tabla
         B     TBLLOOP                 * ...y regresa a verificar est
+a entrada
ADDSTATE MVC   STATE,CMSTATE           * Inicializa el nuevo estado e
+n la tabla
STFOUND  LA    R1,1                    * Incrementa el contador
         A     R1,TOTAL                * ...agrega el total
         ST    R1,TOTAL                * ...guarda el nuevo valor
         B     FILELOOP                * ... y regresa a leer siguient
+e registro
         ...
</pre>

<p>Despues de leer un registro de entrada, es necesario localizar la
 abreviatura del estado en la tabla. Antes de accessar cualquier dato,
 se tienen que describir ambos, el registro de entrada y la entrada en
 la tabla. Esto se logra con la declaraci&oacute;n USING. USING no es
 una instrucci&oacute;n que se procesa como una instrucci&oacute;n de
 comparaci&oacute;n o bifurcaci&oacute;n. Es una directiva usada por el
 ensamblador para determinar como y donde la memoria va a ser descrita.
 Se usan los DSECTS para describir la memoria. Una DSECT puede
 describir la memoria como referencia de un s&iacute;mbolo, o puede
 describir la memoria como referencia del contenido de un registro. El
 ejemplo usa ambas implementaciones.</p>

<p>La declaraci&oacute;n USING&nbsp;INPUT_LAYOUT,INREC empalma la vista
 de CMS0001A a la memoria definida como INREC. Cuando se hace
 referencia a un campo del copybook CMS0001A con una
 instrucci&oacute;n, se extraen los datos de este campo, del espacio
 de la memoria denominada INREC. CMSTATE se ubica en la posici&oacute;n
 147 de la vista de CMS0001A.Cuando se hace referencia a CMSTATE en el
 programa, esta posici&oacute;n 147 de INREC (o INREC+146) es la fuente
 de los datos.</p>

<p>La declaraci&oacute;n USING&nbsp;TABLE_ENTRY,R3 hace coincidir la
 vista de  TABLE_ENTRY al &aacute;rea de memoria cuya direcci&oacute;n
 est&aacute; contenida en el registro 3. Cuando una instrucci&oacute;n
 hace referencia a un campo representado por la vista de  TABLE_ENTRY,
 los datos de ese campo son localizados dentro de la memoria
 se&ntilde;alada en el registro 3. El campo STATE se ubica en la
 posici&oacute;n 1 de la tabla descrita en la vista. Cuando el programa
 hace referencia al campo STATE, el primer byte indicado en el R3
 [o 0(R3)] es la ubicaci&oacute;n de la abreviatura del estado en la
 entrada de la tabla.</p>

<p>El flujo del ciclo de programaci&oacute;n funciona como sigue:</p>
<ul>
 <li>Se lee un registro de entrada y es colocado bajo INREC.</li>
 <li>Se carga la direcci&oacute;n de STATE_CENSUS_TABLE en R3.
  R3 es usado como apuntador de cada entrada en la tabla.</li>
 <li>La direcci&oacute;n indicada en R3 se compara con la
  direcci&oacute;n de E_STATE_CENSUS_TABLE. If R3 se&ntilde;ala hacia
  esta direcci&oacute;n, esto es un indicativo de que la tabla esta
  llena. siendo que a&uacute;n hay mas registros que agregar. Esto
  constituye un error que requiere ser manejado.</li>
 <li>La abreviatura de estado de la tabla se compara contra nulos. El
  ensamblador inicializ&oacute; previamente la tabla completa con
  nulos, valor escogido por que no se presenta en el dataset de
  entrada. Si la abreviatura de estado es igual a ceros binarios
  (nulos), esto indica que la abreviatura del estado del registro de
  entrada no fue localizada en la tabla. En ese momento, la abreviatura
  es agregada a la entrada actual en la tabla, se incrementa el
  contador y el proceso contin&uacute;a.</li>
 <li>Se compara la abreviatura de estado del registro de entrada con la
  abreviatura de estado de la entrada actual de la tabla. Si son
  iguales, se bifurca para incrementar el contador de estado y para
  continuar con la siguiente lectura en el ciclo.</li>
 <li>Si la abreviatura del estado del registro de entrada no coincide
  con la abreviatura del estado en la tabla, y esta no es igual a
  nulos, entonces la b&uacute;squeda en la tabla contin&uacute;a. Se
  agrega la longitud calculada de la entrada al R3 como apuntador de la
  entrada en la tabla, y el ciclo se repite.</li>
</ul>

<p>Revisemos algunos conceptos claves hasta este punto. El primero, es
 la relaci&oacute;n existente entre INPUT_LAYOUT y INREC. INREC fue
 definido usando la longitud calculada de la vista del registro de
 entrada, o L_INPUT_LAYOUT. Mientras INREC tiene definida la cantidad
 de memoria apropiada, no tiene ning&uacute;n campo asignado a ella.
 Las referencias a los campos dentro de INREC son asignadas al utilizar
 la directiva USING&nbsp;INPUT_LAYOUT,INREC. De esta manera, cuando se
 hace referencia a un campo de INPUT_LAYOUT, es la memoria de INREC la
 que es accesada.</p>

<p>El s&iacute;mbolo L_TABLE_ENTRY se usa para incrementar la
 direcci&oacute;n de la tabla indicada en R3. El ensamblador usa el
 valor calculado. Cualquier cambio en la longitud de la entrada de la
 tabla, no afectar&aacute; al c&oacute;digo.</p>

<h4>
 <a name="chap14" id="chap14">
  Agregando el contador de G&eacute;nero a la Tabla.
 </a>
</h4>

<pre>
         ...
INPUT_LAYOUT CMS0001A DSECT=YES        * Vista y longitud de entrada
         ...
TABLE_ENTRY DSECT
STATE    DS    CL(L'CMSTATE)           * Abreviatura de estado
TOTAL    DS    F                       * Cantidad total
FEMALE   DS    F                       * Cantidad de mujeres
MALE     DS    F                       * Cantidad de hombres
UNKNOWN  DS    F                       * Sexo desconocido
L_TABLE_ENTRY EQU *-TABLE_ENTRY        * C&aacute;lculo de longitud d
+e entrada
         ...
MAX_ENTRIES EQU 100                    * # Max. de entradas en la tabla
         ...
INREC    DS    CL(L_INPUT_LAYOUT)      * Define memoria para entrada
         ...
INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GM,EODAD=EOFINFIL
         ...
* Define memoria de la tabla
STATE_CENSUS_TABLE DC (MAX_ENTRIES)XL(L_TABLE_ENTRY)'00'
E_STATE_CENSUS_TABLE EQU *             * Fin de tabla
         ...
</pre>

<p>Ahora que hemos desarrollado el programa b&aacute;sico, se
 agregar&aacute;n nuevos contadores a la tabla. Al agregar estos
 contadores, Ud. se dar&aacute; cuenta del tiempo y esfuerzo que se
 ahorran al aplicar estas t&eacute;cnicas de programaci&oacute;n.</p>

<p>El &uacute;nico cambio requerido por el programa entero es agregar
 los campos FEMALE, MALE, y UNKNOWN. Eso es todo. Se puede reensamblar
 el programa sin ning&uacute;n otro cambio.</p>

<p>Veamos lo que pas&oacute; y como el ensamblador resuelve los
 cambios. Se agregaron tres campos a TABLE_ENTRY. Estos campos han
 incrementado la longitud de la entrada de la tabla en doce bytes. Se
 usa el valor calculado L_TABLE_ENTRY en todo el programa. El
 ensamblador calcula la memoria requerida por la tabla usando los
 valores impl&iacute;citos de L_TABLE_ENTRY y MAX_ENTRIES y asigna esa
 cantidad de memoria a STATE_CENSUS_TABLE.</p>

<p>No se necesitan cambios en el c&oacute;digo del proceso en
 s&iacute;. Las instrucciones afectadas por los cambios son los que
 siguen:</p>
<ul>
 <li>Si es el final de la tabla: C&nbsp;R3,=A(E_STATE_CENSUS_TABLE).
  <br />
  Cambi&oacute; la ubicaci&oacute;n de E_STATE_CENSUS_TABLE. Ahora se
  localiza m&aacute;s abajo en el programa como resultado de una tabla
  m&aacute;s larga. Sin embargo, esto no afecta el c&oacute;digo de la
  instrucci&oacute;n.</li>
 <li>Comparaci&oacute;n de la abreviatura de estados:
  CLC&nbsp;CMSTATE,STATE.<br />
  Esta instrucci&oacute;n no cambia porque los campos est&aacute;n
  descritos.</li>
 <li>El incremento del apuntador de la entrada de la tabla:
  LA&nbsp;R3,L_TABLE_ENTRY(R3).<br />
  Esta instrucci&oacute;n no cambia porque se utiliza la longitud
  calculada de la entrada, como el valor de incremento.</li>
 <li>Incrementando la cantidad: A&nbsp;R1,TOTAL.<br />
  Una vez m&aacute;s, el campo ya proyectado no requiere alterarse.
 </li>
</ul>

<p class="remark">
 Nota:<br />
 Si se altera el tama&ntilde;o de CMSTATE en el copybook o macro
 CMS0001A, este programa puede ser reensamblado, libre de errores y sin
 modificaci&oacute;n alguna.</p>

<h3>
 <a name="chap15" id="chap15">Usando la Misma Vista Dos Veces.</a>
</h3>

<p>Muchos programas necesitan comparar el contenido de un registro, al
 contenido de otro registro. En este caso, tenemos dos instancias de la
 misma estructura. En el pasado, esto significaba codificar dos vistas
 separadas con nombres de campo ligeramente diferentes. Un ejemplo
 podr&iacute;a ser ZIP1 y ZIP2.</p>

<p>El HLASM provee una caracter&iacute;stica llamada la
 declaraci&oacute;n Using Etiquetada, para resolver este problema. Una
 declaraci&oacute;n Using Etiquetada, nos permite asignar un DSECT a
 m&uacute;ltiples ubicaciones simult&aacute;nemente. Estos lugares se
 pueden referenciar por un registro, o pueden ser asignados a a un
 s&iacute;mbolo definido en la memoria central.</p>

<p>Para demostrar este poder, se desarrollar&aacute; un nuevo programa
 de censo. Asumiremos que el dataset de entrada ya viene sorteado  por
 la secuencia de la abreviatura del estado. El programa leer&aacute;
 los registros e incrementar&aacute; el contador. Cuando la abreviatura
 del estado cambia, el contador contendr&aacute; el n&uacute;mero de
 registros para la anterior abreviatura de estado.</p>

<p>Para lograr esto, el programa va a leer un registro, comparar la
 abreviatura de estado en el registro que acaba de leer, con la
 abreviatura de estado del registro leido anteriormente. Si hay un
 cambio, entonces el conteo se inicializar&aacute;. Se mover&aacute;
 el registro que se acaba de leer a la memoria asignada para el
 registro previo.</p>

<pre>
         ...
COUNTER  DC    PL4'1'                  * contador de estado
PREVREC  DS    CL(L_INPUT_LAYOUT)      * memoria p/registro de entrada
         ...
INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GL,EODAD=EOFINFIL
         ...
</pre>

<p>El c&oacute;digo de arriba establece un &aacute;rea de resguardo
 para el registro procesado previamente. Una vez que el registro de
 entrada ha sido procesado, ser&aacute; movido a PREVREC. En
 adici&oacute;n, se ha cambiado el valor de MACRF de la DCB de GM a GL.
 Esto informa al programa que el registro de entrada no se
 mover&aacute; del &aacute;rea de memoria definida que cada registro
 obtiene. El nuevo registro leido por es sistema, es considerado como
 el registro actual, y permanece en su memoria intermedia donde puede
 ser referenciado con R1.</p>

<p class="remark">
 Nota:<br />
 Si el programa est&aacute; usando cualquier otro servicio del sistema,
 diferente a la macro GET, o hace llamados a cualquier subprograma
 durante el proceso de cualquier registro, R1 se considerar&aacute;
 como registro vol&aacute;til. En un programa real R1 debe ser usado
 solamente como un registro de trabajo o temporal.</p>

<p>Puesto que nada est&aacute; siendo puesto en tablas, no se define
 ninguna de ellas. El programa usa el cambio en la abreviatura del
 estado para indicar la inicializaci&oacute;n del contador.</p>

<pre>
         ...
PRV      USING INPUT_LAYOUT,INREC      * Asigna DSECT a INREC
CUR      USING INPUT_LAYOUT,R1         * Asigna DSECT a registro
         ...
FILELOOP GET   INFILE                  * Lee registro a memoria
         CLC   CUR.CMSTATE,PRV.CMSTATE * &iquest;Cambio el estado?
         BNE   CHGSTATE                * Si: Procesa cambio de estado
* Save current record
         MVC   INREC,CUR.INPUT_LAYOUT  * o codifica "INREC,0(R1)"
         AP    COUNTER,P'1'            * Incrementa contador
         B     FILELOOP                * y regresa a leer sig. registro
         ...
</pre>

<p>Se asignan las declaraciones USING a las etiquetas PRV y CUR. La
 USING etiquetada como PRV usa INPUT_LAYOUT para proyectar la memoria
 en PREVREC. La declaraci&oacute;n USING etiquetada como CUR usa
 INPUT_LAYOUT para describir la memoria en 0(R1), que es la
 ubicaci&oacute;n del registro dentro de su memoria intermedia
 (buffer). Las etiquetas USING se usan para calificar un nombre de
 campo de manera que el ensamblador entienda a cual de las dos campos
 se refiere. PRV.CMSTATE se refiere a la ubicaci&oacute;n de CMSTATE
 dentro de PREVREC, o PREVREC+146. CUR.CMSTATE se refiere a la
 ubicaci&oacute;n de CMSTATE, al cual se&ntilde;ala el R1, o 146(R1).
</p>

<h3>
 <a name="chap16" id="chap16">
  Colocando DSECTs al Principio del Programa.
 </a>
</h3>

<h4>
 <a name="chap17" id="chap17">
  &iquest;Por qu&eacute; Colocar DSECTs al Principio del Programa?
 </a>
</h4>

<p>El ensamblador opera haciendo dos pasadas al c&oacute;digo fuente.
 En la primera pasada del fuente, identifica todos los s&iacute;mbolos
 e intenta identificar todos los atributos de esos s&iacute;mbolos. Sin
 embargo, algunos atributos pueden no ser resueltos porque no se
 establecen de manera secuencial. En estos casos, los atributos no
 ser&aacute;n resueltos sino hasta la segunda pasada sobre el
 c&oacute;digo fuente.</p>

<p>La identificaci&oacute;n de los s&iacute;mbolos involucra la lectura
 de copybooks y la expansi&oacute;n de macros. Las macros son esas
 sencillas declaraciones que generan c&oacute;digo por Ud.. Por
 ejemplo, DCB, OPEN, y GET son ejemplos de macros. Los macros de
 programaci&oacute;n estructurada del conjunto de utiler&iacute;as de
 HLASM o del lenguaje Ensamblador eXtendido de Bixoft como
 IF/ELSE/ENDIF y DO/END son otros ejemplos. Algunas macros requieren
 que todos los atributos de los s&iacute;mbolos sean resueltos durante
 la primera pasada. Si no hay resoluci&oacute;n, el ensamblador puede
 generar errores porque no puede identificar la longitud de los campos.
</p>

<p>El ensamblador procesa el fuente en forma secuencial. Asi, el
 colocar las DSECTs al principio del c&oacute;digo fuente para que
 invoque los copybooks, establece los s&iacute;mbolos temprano en el
 proceso, de manera que el c&oacute;digo de la macro pueda expandirse
 sin errores.</p>

<p>Personalmente, me gusta tener todos los DSECTs al principio del
 programa. Esto se apega a lo hecho en otros lenguajes como PASCAL, C,
 COBOL, y BASIC. Provee una ubicaci&oacute;n para todas las
 estructuras, y provee al programador con informaci&oacute;n de con que
 va a trabajar el programa.</p>

<p class="remark">
 Observaci&oacute;n de Bixoft:<br />
 Nuestro consejo es insertar todas las DSECTs al principio del
 programa. Esto tiene las siguientes ventajas:</p>
<ul>
 <li>Se establecen todas las etiquetas y la mayor&iacute;a de sus
  atributos pronto en la primera pasada, habilitando las macros y
  declaraciones condicionales del ensamblador para probar estas
  propiedades y reaccionar en concordancia.</li>
 <li>El colocar todas las DSECTs al principio del programa libera al
  ensamblador de usar su &quot;modo de revisi&oacute;n avanzada&quot;
  para encontrar los s&iacute;mbolos a&uacute;n no definidos. Tan
  poderoso como el modo de revisi&oacute;n avanzada es, puede ser muy
  costoso y alenta el proceso de compilaci&oacute;n y no siempre
  encuentra la informaci&oacute;n correcta.</li>
</ul>

<h4>
 <a name="chap18" id="chap18">
  Rutina de Entrada (Housekeeping) Requerida Adicional.
 </a>
</h4>

<p>El programa ensamblador normalmente comenzar&aacute; con
 alg&uacute;n tipo de macro de rutinas de entrada. Sin embargo, si Ud.
 coloca las DSECTS por encima de la macro de entrada, puede causar un
 error al ensamblar. Para prevenir que el error ocurra, se requiere un
 cambio en el c&oacute;digo de la rutina de entrada al principio del
 programa. Un programa deber&iacute;a seguir esta estructura.</p>

<pre>
NombProg CSECT
*
*        Aqui van las DSECTS y la descripci&oacute;n de macros
*
NombProg "Macro de Rutinas de entrada o punto de entrada l&oacute;gic
+a CSECT"
         ...
</pre>

<p>La declaraci&oacute;n CSECT al principio previene la ocurrencia del
 error del ensamblador.</p>

<p class="remark">
 Comentario de Bixoft:<br />
 Cuando use el lenguaje Ensamblador eXtendido de Bixoft, la macro PGM
 se usa para genera la entrada l&oacute;gica, incluyendo todas las
 descripciones requeridas. E.g.:</p>
<pre>
NombProg PGM   VERSION=V00R00M00,      * Versi&oacute;n n&uacute;mero
+(@86) *
               HDRTXT='Programa muestra',
+(@72) *
               SAVES=2,                * Areas de resguardo internas
+(@72) *
               MAPS=(CMS0001A,         * Vistas privadas
+(@72) *
               DCB,DCBE,DECB,IOB)      * Vistas est&aacute;ndar de IBM
</pre>

<h3><a name="chap19" id="chap19">En Conclusi&oacute;n.</a></h3>

<p>Asi como este documento lo demuestra, los conceptos de
 programaci&oacute;n, como abstracci&oacute;n, reuso y
 derivaci&oacute;n se pueden utilizar tanto en ensamblador como en otro
 lenguaje de alto nivel como PASCAL, C, o BASIC. La abstraci&oacute;n
 puede usarse para esconder los detalles de la estructura que de otra
 manera atestar&iacute;an el c&oacute;digo fuente. El reusar nos
 permite apoyarnos en los logros de otros, reduciendo de esta manera
 nuestros esfuerzos. La derivaci&oacute;n nos permite usar atributos
 preexistentes en la definici&oacute;n de campos similares. Todos los
 conceptos nos dan la habilidad de hacer que el HLASM trabaje
 m&aacute;s fuerte por nosotros, asi no tenemos que hacerlo nosotros.
</p>

<p>Los segmentos de programas, muestran como se aplican la
 abstracci&oacute;n y el reuso, al uso de macros y copybooks. Las
 macros y copybooks estandarizan nuestros programas. Aceleran el
 proceso de entendimiento del c&oacute;digo porque los nombres de campo
 ser&aacute;n consistentes de un m&oacute;dulo a otro. Los copybooks
 tambi&eacute;n proporcionan las bases desde las cuales podemos derivar
 espacios de memoria y definiciones de campo similares. Por ejemplo,
 podemos usar la definici&oacute;n de CMSTATE en la definici&oacute;n
 de una entrada de la tabla, de manera que campos similares tengan
 atributos similares.</p>

<p>Los programas muestra, tambi&eacute;n demuestan que el uso abierto
 de estas t&eacute;cnicas pueden reducir dr&aacute;sticamente nuestros
 esfuerzos de mantenimiento futuro. En algunos casos pueden reducirse a
 zero cuando cambia la definici&oacute;n de un campo.</p>

<p>My esperanza es que Ud. tome inter&eacute;s en las t&eacute;cnicas
 explicadas aqu&iacute;. El uso de estas t&eacute;cnicas le
 ahorrar&aacute; mucho tiempo y esfuerzo en el futuro. Estas
 t&eacute;cnicas reducir&aacute;n el impacto de los cambios en todo el
 m&oacute;dulo.</p>

/HTML

         HTMLDEF NIELSEN.ES2
<!-- ES -->
<h3><a name="chap20" id="chap20">
 Ap&eacute;ndice A: Programa Muestra Usando Tabla.</a></h3>

<pre>
SAMPLE01 CSECT
INPUT_LAYOUT DSECT
         COPY  CMS0001A                * Vista est&aacute;ndar del regi
+stro
L_INPUT_LAYOUT EQU *-INPUT_LAYOUT      * Calcula la long de la vista

TABLE_ENTRY DSECT
STATE    DS    CL(L'CMSTATE)           * Abreviatura del estado
TOTAL    DS    FL4                     * Cantidad Total
FEMALE   DS    FL4                     * Cantidad de Mujeres
MALE     DS    FL4                     * Cantidad de Hombres
UNKNOWN  DS    FL4                     * G&eacute;nero desconocido
L_TABLE_ENTRY EQU *-TABLE_ENTRY        * Calcula la long de la entrada

MAX_ENTRIES EQU 100                    * 100 entradas en total

SAMPLE01 ENTERMPG BASE=R12,VER=A,MAIN=N,TEST=Y,DESC='Ejemplo de Tabla'
         USING INPUT_LAYOUT,INREC      * Asigna DSECT a s&iacute;mbolo
         USING TABLE_ENTRY,R3          * Asigna DSECT a registro

         IF    (CLI,FirstTime,EQ,FTyes) * Solo durante la 1ra. pasada
          MVI  FirstTime,FTno          * Apaga indicador de 1ra. pasada
          OPEN (INFILE,INPUT)          * Abre dataset de entrada
         ENDIF ,                       *

         DO    INF                     * Ejecuta hasta terminar el arch
+ivo
READREC   GET  INFILE,INREC            * Lee registro de entrada

          LA   R3,STATE_CENSUS_TABLE   * Punto de entrada de la tabla
          DO   UNTIL=(C,R3,NL,=A(E_STATE_CENSUS_TABLE))

           IF  (CLI,STATE,EQ,X'00')    * &iquest;Se encontr&oacute; esp
+acio en tabla?
            MVC STATE,CMSTATE          * Si: agrega un nuevo estado a t
+abla
           ENDIF

           IF  (CLC,CMSTATE,EQ,STATE)  * &iquest;Ya se encuentra el est
+ado?
            INCR TOTAL                 * Incrementa el contador
            SELECT CLI,CMGENDER,EQ     * &iquest;Cual g&eacute;nero?:
            WHEN CMGENDER_MALE         * &iquest;Masculino?
             INCR MALE                 * Si: incrementa contador de hom
+bres
            WHEN CMGENDER_FEMALE       * &iquest;Femenino?
             INCR FEMALE               * Si: incrementa contador de muj
+eres
            ELSE ,                     * g&eacute;nero desconocido...
             INCR UNKNOWN              * ...incrementa contador
            ENDSEL
            B  READREC                 * Salida de ciclo interno
           ENDIF

           LA  R3,L_TABLE_ENTRY(R3)    * Punto de entrada de sig. entra
+da
          ENDDO ,                      * ...y verif&iacute;carla

          WTO  'No more room in table' * No hay espacio en tabla...
          ABEND 666                    * no m&aacute;s espacio

         ENDDO ,                       * Fin de ciclo externo

EOF      CLOSE INFILE                  * Cierra dataset de entrada
         LEAVEMPG RC=0                 * Fin de trabajo

         LTORG
FirstTime DC   XL1'00'                 * Indicador de 1ra. pasada
FTYES    EQU   X'00'                   * Si: primera pasada
FTno     EQU   X'FF'                   * No: inicializaci&oacute;n hech
+a
INREC    DS    CL(L_INPUT_LAYOUT)      * define memoria para entrada

INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GM,EODAD=EOF

* Define la tabla
STATE_CENSUS_TABLE DC (MAX_ENTRIES)XL(L_TABLE_ENTRY)'00'
E_STATE_CENSUS_TABLE EQU *             * Define direcci&oacute;n de fi
+n de tabla

         END   SAMPLE01
</pre>

<h3>
 <a name="chap21" id="chap21">
  Ap&eacute;ndice B: Programa Muestra Cambiando la Abreviatura del
  Estado.
 </a>
</h3>

<pre>
SAMPLE02 CSECT

INPUT_LAYOUT DSECT
         COPY  CMS0001A                * Vista de reg. est&aacute;ndar
L_INPUT_LAYOUT EQU *-INPUT_LAYOUT      * Calcula long de vista

SAMPLE02 ENTERMPG BASE=R12,VER=A,MAIN=N,TEST=Y,DESC='MUESTRA ABREV.'
PRV      USING INPUT_LAYOUT,INREC      * Asigna DSECT a s&iacute;mbolo
CUR      USING INPUT_LAYOUT,R3         * Asigna DSECT a registro

         IF    (CLI,FirstTime,EQ,FTyes) * Solo durante 1ra. pasada
          MVI  FirstTime,FTno          * Apaga ind de primera pasada
          OPEN (INFILE,INPUT)          * Abre dataset de entrada
          GET   INFILE                 * Lee primer registro
          LR    R3,R1                  * Iguala apuntadores de reg leid
+o
* Copia el primer registro para prevenir la ejecuci&oacute;n de rutina
* de cambio de estado, la primera vez que se lee un registro.
          MVC   PRV.INPUT_LAYOUT,CUR.INPUT_LAYOUT
         ENDIF ,                       *

         DO    INF                     * Ejecuta hasta terminar el arch
+ivo
          GET  INFILE                  * Lee un registro
          LR   R3,R1                   * Copia apuntador a reg actual
          IF   (CLC,CUR.CMSTATE,NE,PRV.CMSTATE) *&iquest;Cambio el esta
+do?
           OI  COUNTER+L'COUNTER-1,X'0F' * Quita el signo a contador
           UNPK WTO01+24(7),COUNTER    * Inserta contador al mensaje
           MVC WTO01+15(L'CMSTATE),PRV.CMSTATE * Agrega el estado previ
+o
WTO01      WTO 'STATE: ..   QTY=XXXXXXX ' * Despliega estado y conteo
           ZAP COUNTER,=P'0'           * Reinicia contador
          ENDIF
          AP   COUNTER,=P'1'           * Incrementa contador
* Mueve registro actual a previo
          MVC  PRV.INPUT_LAYOUT,CUR.INPUT_LAYOUT
*         MVC  INREC,0(R3)             * C&oacute;digo alternativo par
+a mover
         ENDDO

EOF      CLOSE INFILE                  * Cierra dataset de entrada
         LEAVEMPG RC=0                 * Fin de trabajo
         LTORG
FirstTime DC   XL1'00'                 * Indicador de 1ra. pasada
FTYES    EQU   X'00'                   * Si: Primera pasada
FTno     EQU   X'FF'                   * No: Inicializaci&oacute;n hech
+a
COUNTER  DC    PL4'1'                  * Inicializz contador a uno
INREC    DS    CL(L_INPUT_LAYOUT)      * Define memoria para entrada

INFILE   DCB   DDNAME=INFILE,DSORG=PS,MACRF=GM,EODAD=EOF

         END
</pre>

<h4 align="center">
 &copy; Copyright Don V. Nielsen 2000. Todos los derechos reservados.
</h4>

/HTML

         HTMLDEF NIELSEN.ESL
<!-- ES -->
<p>
 Ir a <a href="#chap01">Introducci&oacute;n</a>.<br />
 Ir a <a href="#chap02">Terminolog&iacute;a Usada</a>.<br />
 Ir a <a href="#chap06">Partes Fundamentales</a>.<br />
 Ir a <a href="#chap10">Step 1, Proyecci&oacute;n de los Datos</a>.
 <br />
 Ir a <a href="#chap12">Step 2, Construyendo el Programa</a>.<br />
 Ir a <a href="#chap15">Usando Dos Veces la Misma Vista</a>.<br />
 Ir a
 <a href="#chap16">Colocando los DSECTs al Principio del Programa</a>.
 <br />
 Ir a <a href="#chap19">In Conclusi&oacute;n</a>.<br />
 Ir a <a href="#chap20">Programa Muestra Usando Tabla</a>.<br />
 Ir a
 <a href="#chap21">Programa Muestra Cambiando la Abreviatura del Estado
 </a>.
</p>

/HTML

         HTMLDEF NIELSEN.ESF
<!-- UK -->
<p class="footer" align="center">
 Este texto fue escrito por Don V. Nielsen, traducido por Miguel
 Soltero Diaz<br/>
 &copy; Copyright: Don V. Nielsen, 2000. Todos los Derechos Reservados.
 <br />
 This translation: &copy; Copyright: Miguel Soltero Diaz, 2003-2006.
 Derechos reservados.<br />
 e-mail <a href="mailto:DonN@cmscms.com">el autor</a>
 o <a href="mailto:migusd@yahoo.com">el traductor</a>.</p>

/HTML
