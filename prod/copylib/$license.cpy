         HTMLDEF $LICENSE.UK
<!-- UK -->
<p class="remark">Remark:<br />
 This is an intermediate version of the Bixoft Public License, with
 &quot;proposal&quot; status. It is subject to change without
 notification. The first
 final version will be published with version number 1.0. The
 rationale, this
 remark and all other remarks contained in this version of the document
 will
 not be part of the final version. All of your comments are welcome;
 please
 <a href="mailto:bixoft@bixoft.nl">e-mail</a> us. Please observe that
 Bixoft
 is a &quot;one man's army&quot;, therefore it may take a few days
 before you receive a
 response to your mail.</p>

<p>THE ACCOMPANYING SOFTWARE IS PROVIDED UNDER THE TERMS OF THIS
 LICENSE.<br />
 Nothing but acceptance of this License grants you permission to use,
 modify,
 reproduce or distribute the licensed Software or any of its derivative
 works. Therefore:<br />
 ANY USE, MODIFICATION, REPRODUCTION OR DISTRIBUTION OF THE SOFTWARE
 CONSTITUTES
 RECIPIENT'S ACCEPTANCE OF THIS AGREEMENT.</p>

<h2>Rationale</h2>

<p>We (Abe Kornelis of B.V. Bixoft with support from Steve Lhomme of
 Mukoli)
 would have preferred to use an existing OSI-approved license, or a
 copy of
 one with only slight modifications. Unfortunately none of the licenses
 currently approved by the OSI meet all of the following criteria:</p>

<ol class="alpha">
 <!-- a -->
 <li>Distinguish between programming tools and other software and make
  it
  possible to distribute both types of software in a single
  package.<br />
  &gt; We need to make the distinction because it would be
  unreasonable to
  treat anything made with the distributed software as a derivative.
  Taken
  to extremes: a C program is not a derivative of the compiler used to
  create the executable.<br />
  &gt;&gt; Only LGPL distinguishes libraries of objects and/or
  executables from
  &quot;ordinary&quot; software, but the programming tool concept
  relates to source
  and/or code generation rather than linkage.</li>
 <!-- b -->
 <li>Require contributors to allow the copyright holder to incorporate
  any
  or all of their distributed modifications in future releases of the
  software.<br />
  &gt; We need this in order to keep the software consistent with
  contributions distributed by others. We wish to keep the amount of
  source code forking to the absolute minimum, but this requires to
  expressly claim this right, so that all contributors know in advance
  that their contributions, when distributed, may be incorporated in a
  future release of the software.<br />
  &gt;&gt; Only QPL and Apple currently have such an explicit
  provision.</li>
 <!-- c -->
 <li>Treat copyrights and patent rights separately and explicitly.
  Even though
  a lot of people have serious objections to the current trend in
  software
  patents, such patents are currently a fact and need to be dealt with.
 <br />
  &gt; For obvious legal reasons.<br />
  &gt;&gt; Some of the existing licenses do, but not all of them.</li>
 <!-- d -->
 <li>Disallow object-only distributions.<br />
  &gt; We feel that source code of the software should be made
  available to
  all users, either with the distribution itself, or through some other
  medium.<br />
  &gt;&gt; Some licenses appear to allow non-source re-distributions.
  We regard
  this as being in conflict with our intentions regarding the software
  we
  wish to distribute under this license.</li>
 <!-- e -->
 <li>Require that modifications remain recognizable as such.<br />
  &gt; This is to facilitate re-applying modifications from one user
  to
  another. It also is intended to facilitate the incorporation of
  modifications into new releases. Plus it helps tremendously to
  determine - in case of conflict - who authored which parts of the
  software.<br />
  &gt;&gt; Several existing licenses have such a clause, but not all
  of them
  do.</li>
 <!-- f -->
 <li>Make our dual licensing policy explicit.<br />
  &gt; We make the software available to the public, free for anyone
  to
  use. However, if anyone (read large software companies) wishes to
  use the software they can do so with the free version only if they
  too yield their sources to the free software community. If they
  don't want to do that, they'll have to obtain a closed license for
  their use of the software.<br />
  &gt;&gt; Currently only the GPL/LGPL and MPL licenses are explicit
  on dual
  licensing.</li>
 <!-- g -->
 <li>Allow the copyright holder to select the applicable law.<br />
  &gt; Since Bixoft is based in the Netherlands and Mukoli in France.
 <br />
  &gt;&gt; None of the OSI-approved licenses does this, but this would
  be
    only a minor change to most extant OSI-approved licenses.</li>
 <!-- h -->
 <li>Allow application of local languages in addition to English.<br />
  &gt; For enhanced applicability.<br />
  &gt;&gt; None of the OSI-approved licenses does this.</li>
</ol>

<p>We have found that the need for distinguishing between Programming
 Tools
 and other software (as well as distinguishing between Dependent
 Software and
 Derivatives) is not too self-evident. Therefore please consider the
 following:</p>
<ul>
 <li>Bixoft has written an extensive macro library (for use with IBM's
  high
  level assembler) that we wish to distribute. We also have a handful
  of
  utility programs that we wish to distribute. These programs make use
  of the
  macros, but the macros are only shorthands for more or less
  complicated
  fragments of code. That is: during the assembly process the
  high-level
  assembler uses the macro definitions to generate additional source
  code
  which is then assembled into object (machine) code.</li>
 <li>When distributing software under our license the receiver is
  obliged to
  use that same license if he/she ever wishes to distribute anything
  based
  upon our software. For 'normal' software this is ok, but for software
  that
  is to be used for creating other software this seems unreasonable.
  Think for
  example of compilers and other programming tools. Let me explain why
  such
  software needs to be treated differently.</li>
 <li>When someone changes our software we claim that it still is our
  software,
  when someone changes our macro library we claim that it still is our
  macro
  library. As long as it is (or contains) our software any
  redistribution must
  be covered by our license, the one we chose to use.<br />
  When someone creates a new program using our macro library, it is
  his/her
  own program. That program still would need our macro library to
  assemble
  correctly, but that would not make it our program. We have chosen
  the term
  'dependent software' for such programs.<br />
  There is, of course, an exception: if someone creates a new program
  using
  our macro library, also incorporating parts of our utility programs,
  then we
  would claim that the new program is a derivative of our utilities.
 </li>
 <li>When the author of such new programs starts distributing those
  programs
  things get more complicated, because he/she is obliged to include
  the macro
  library used to create the new programs. That is, the exact version
  that the
  programmer used to build the programs to be distributed! Otherwise,
  the
  distributed source would be useless to the receiver.<br />
  This version, however, may contain modifications. Now which rules
  apply to
  such a distro? The rules for Derivatives, because it contains
  modifications
  to our macro library, or the rules for Dependent Software, because
  the
  programmer is distributing new programs that are not ours by any
  means?</li>
 <li>The solution that we found is this: new programs can be regarded
  as
  Dependent Software only:
  <ol compact="compact">
   <li>if they do not use any part of our Software, other than the
  Programming
    Tools, and</li>
   <li>if they are distributed without changes to the Programming
  Tools
    themselves.</li>
  </ol>
 </li>
 <li>ad 1: This has been stated above. If any other portion of our
  software is
  used in the new programs, they are in fact a Derivative of our
  software and
  must be treated accordingly.</li>
 <li>ad 2: If they are packaged with Modifications to our software,
  then the
  entire package must be distributed under all restrictions imposed on
  our
  software and all of its derivatives. That is, even though we do not
  claim
  that the new programs are Derivatives of our software, they must be
  treated
  as such, as long as the entire distribution is a single unit.</li>
 <li>The obvious solution is to separate such a distro into two
  packages - one
  with the programming tools and their modifications, and one with the
  new
  programs.</li>
 <li>For the license text we formulated all this in a more abstract
  manner by
  replacing the terms above as follows:
  <ul compact="compact">
   <li>our macro library -> Programming Tools</li>
   <li>our utilities -> Software</li>
   <li>new programs -> Dependent Software</li>
  </ul>
 </li>
</ul>

<p>So, looking at all of the requirements above we felt forced to
 create (yet)
 another open source license. We chose to create our proposal in a
 skeleton
 form, so that others may easily use it for their own purposes. What
 follows
 is a preamble (like the Jabber Open Source License) including a
 Glossary,
 which in turn is followed by the actual license.</p>

<h2>Preamble</h2>

<p>This preamble is intended to describe, in plain usual English, the
 nature and
 scope of this license. However, this preamble is not a part of this
 license.
 The legal effect of this license is dependent only upon the terms of
 the
 license and not this preamble.</p>

<p>If OSI grants approval to this license, then we will insert the
 following
 paragraph right here:</p>
<p class="blockquote">
 This license complies with the Open Source Definition and has been
 approved by the Open Source Initiative -
 <a href="http://www.opensource.org">http://www.opensource.org</a>.
 Software distributed under this license may be marked as "OSI
 Certified
 Open Source Software".</p>

<p>The following links to each section of the license and lists a short
 description of that section's content and intent:</p>
<dl compact="compact">
 <dt><a href="#par01">1</a>)</dt>
 <dd>Claims our copyright to the license document.</dd>
 <dt><a href="#par02">2</a>)</dt>
 <dd>Defines various terms used in the license.</dd>
 <dt><a href="#par03">3</a>)</dt>
 <dd>States that if you cannot or will not comply with this license,
  then you
  must either obtain a different license for the software, or you may
  not use
  the software at all.</dd>
 <dt><a href="#par04">4</a>)</dt>
 <dd>States that you may use this license for your own software.<br />
  If you would like to use a modified version, please contact B.V.
  Bixoft
  with your request.</dd>
 <dt><a href="#par05">5</a>)</dt>
 <dd>Specifies that only B.V. Bixoft may issue new versions of this
  license;
  you may at all times replace your version of the license with the
  most
  current version authorized for your software. It is
  up to the each copyright holder to decide on authorization of
  license versions for their software.</dd>
 <dt><a href="#par06">6</a>)</dt>
 <dd>Defines the applicable law and details of conflict resolution.
  Also
  treats various legal details.</dd>
 <dt><a href="#par07">7</a>)</dt>
 <dd>Claims all applicable intellectual property rights.</dd>
 <dt><a href="#par08">8</a>)</dt>
 <dd>Grants you the rights - other than third-party patents - you need
  to be
  able to legally use, copy, modify and execute the licensed software.
 </dd>
 <dt><a href="#par09">9</a>)</dt>
 <dd>Allows you to modify the licensed software, provided that your
  modifications are kept identifiable and you do not mangle any
  notices or disclaimers.</dd>
 <dt><a href="#par10">10</a>)</dt>
 <dd>Defines what exactly are "derivatives" and "dependent software"
  and allows
  you to make such derivatives and/or dependent software.</dd>
 <dt><a href="#par11">11</a>)</dt>
 <dd>Allows you to create a larger work (i.e. a collective work),
  provided that
  you still comply with this license for the incorporated software.
 </dd>
 <dt><a href="#par12">12</a>)</dt>
 <dd>States that you may keep your modifications, derivatives and
  dependent software private, or you can supply them to the copyright
  holder. Alternatively, you may distribute such software yourself,
  provided
  you meet the following criteria:</dd>
 <dt><a href="#par1201">12.1</a>)</dt>
 <dd>An unchanged copy of this license must be included.
  For dependent software only, this license may be replaced by a
  different OSI-approved license.</dd>
 <dt><a href="#par1202">12.2</a>)</dt>
 <dd>The software may be (re)distributed only under the included
  license.</dd>
 <dt><a href="#par1203">12.3</a>)</dt>
 <dd>Modifications and derivatives may be distributed as patch or delta
  files, or they may be distributed in an integrated version. In either
  case the correct copyright notice must be included.</dd>
 <dt><a href="#par1204">12.4</a>)</dt>
 <dd>If you distribute the software without the sources, these sources
  have
  to be publicly available (in a machine-usable form).</dd>
 <dt><a href="#par1205">12.5</a>)</dt>
 <dd>Distribution of modifications and derivatives (not dependent
  software) requires you to grant the copyright holder the right to
  incorporate your modifications in future releases of the software.
 </dd>
 <dt><a href="#par1206">12.6</a>)</dt>
 <dd>Dependent software must be accompanied by the programming tools
  used
  to create it.</dd>
 <dt><a href="#par13">13</a>)</dt>
 <dd>You are allowed - if you redistribute the software - to grant
  additional
  rights to your users, provided that you shield all other
  contributors and
  distributors from any liability whatsoever.</dd>
 <dt><a href="#par14">14</a>)</dt>
 <dd>States details in case the U.S. Government uses the licensed
  software.</dd>
 <dt><a href="#par15">15</a>)</dt>
 <dd>States that this license will be revoked automatically if you do
  not
  comply with this license.</dd>
 <dt><a href="#par16">16</a>)</dt>
 <dd>Asserts that you may no longer use the software under this
  license
  if you claim that the licensed software infringes any of your
  patents.</dd>
 <dt><a href="#par17">17</a>)</dt>
 <dd>Makes explicit that the software comes with absolutely no warranty
  whatsoever at all.</dd>
 <dt><a href="#par18">18</a>)</dt>
 <dd>Makes explicit that all liability resulting from the use of the
  software
  is yours alone and nobody else's.</dd>
</dl>

<h2>Glossary</h2>

<dl compact="compact">
  <dt><a href="#par2a">Anyone</a></dt>
  <dd>Any person or entity</dd>
  <dt><a href="#par2b">Co-Licensor</a></dt>
  <dd>Anyone licensing any rights under this License, excluding
    the Copyright Holder</dd>
  <dt><a href="#par2c">Contribution</a></dt>
  <dd>The Software and anything added to it by contributors</dd>
  <dt><a href="#par2d">Contributor</a></dt>
  <dd>The Copyright Holder and anyone else who contributes to the
   Software</dd>
  <dt><a href="#par2e">Copyright Holder</a></dt>
  <dd>The owner of the copyright(s) of your licensed software</dd>
  <dt><a href="#par2f">Copyright Notice</a></dt>
  <dd>The modified or translated copy of Exhibit A included with your
   licensed
   software.</dd>
  <dt><a href="#par2g">Country</a></dt>
  <dd>The country whose laws apply</dd>
  <dt><a href="#par2h">Court</a></dt>
  <dd>The court where conflicts will be settled</dd>
  <dt><a href="#par2i">Delta File</a></dt>
  <dd>A delta or patch file specifying differences between two
   versions of a Source File</dd>
  <dt><a href="#par2j">Dependent Software</a></dt>
  <dd>Software that depends on the Software, but is not derived from
   it</dd>
  <dt><a href="#par2k">Derivatives</a></dt>
  <dd>Translated, modified or enhanced versions of the Software</dd>
  <dt><a href="#par2l">Distributor</a></dt>
  <dd>The Copyright Holder and anyone else distributing the Software
  </dd>
  <dt><a href="#par2m">Entity</a></dt>
  <dd>A legal or other entity, not being a person</dd>
  <dt><a href="#par2n">Gratis</a></dt>
  <dd>For (nearly) no charge</dd>
  <dt><a href="#par2o">Larger Work</a></dt>
  <dd>A work that combines the Software with other software</dd>
  <dt><a href="#par2p">License</a></dt>
  <dd>This license</dd>
  <dt><a href="#par2q">Licensor</a></dt>
  <dd>Anyone who applies this license to his/her own software</dd>
  <dt><a href="#par2r">Modification</a></dt>
  <dd>Any change to the Software</dd>
  <dt><a href="#par2s">Programming Tool</a></dt>
  <dd>Any part of the Software designated as such by the Copyright
   Holder</dd>
  <dt><a href="#par2u">Software</a></dt>
  <dd>Anything distributed under this license</dd>
  <dt><a href="#par2v">Source Code</a></dt>
  <dd>Preferred form of the Software for making changes</dd>
  <dt><a href="#par2w">Source File</a></dt>
  <dd>A file or member containing Source Code</dd>
  <dt><a href="#par2x">State</a></dt>
  <dd>The state (within Country) whose laws apply</dd>
  <dt><a href="#par2y">User</a></dt>
  <dd>Anyone who possesses a copy of the Software</dd>
</dl>

<h2>LICENSE TERMS</h2>

<p><a name="par00" id="par00">THE</a>
 ACCOMPANYING SOFTWARE IS PROVIDED UNDER THE TERMS OF THIS LICENSE.
<br />
 Nothing but acceptance of this License grants you permission to use,
 modify,
 reproduce or distribute the licensed Software or any of its derivative
 works. Therefore:<br />
 ANY USE, MODIFICATION, REPRODUCTION OR DISTRIBUTION OF THE SOFTWARE
 CONSTITUTES
 RECIPIENT'S ACCEPTANCE OF THIS AGREEMENT.</p>

<h3>General</h3>

<h4><a name="par01" id="par01">1.</a> Copyright</h4>

<p>Copyright &copy; 2001-2004 B.V. Bixoft, The Netherlands. All rights
 reserved. This License itself is protected by Dutch copyright law,
 and is
 governed by the laws of The Netherlands. Disputes with regard to the
 License
 itself shall be settled by a Dutch court with appropriate
 jurisdiction.</p>

<h4><a name="par02" id="par02">2.</a> Definitions</h4>

<p>This section defines - in alphabetical order - various terms used in
 this License. They are used in this License without explicit
 mention of their definition.</p>

<p>In this License both singular and plural forms are used
 interchangeably
 to designate either the singular and/or the plural form, except where
 a
 notice to the contrary is expressly included. This statement can be
 applied generally; it's application is not intended to be restricted
 to the terms defined below.</p>

<dl compact="compact">
 <dt><a name="par02a" id="par02a">Anyone:</a></dt>
 <dd>Any person or any Entity or any group of any number of persons
  and/or
  Entities.</dd>
 <dt><a name="par02b" id="par02b">Co-Licensor:</a></dt>
 <dd>Anyone other than Copyright Holder, who under this License does
  license
  any rights associated with any Contribution(s).<br />
  If ownership of any of such rights is transferred from any of these
  parties
  (old Co-Licensor) to one or more other parties (new Co-Licensor),
  then the
  new Co-Licensor will serve as Co-Licensor instead of the old
  Co-Licensor,
  unless the old Co-Licensor retains ownership of some portion(s) of
  the
  granted right(s) in which case the new Co-Licensor will serve as
  Co-Licensor
  in addition to the old Co-Licensor as appropriate, and each party
  only for
  the right(s) owned by that party.<br />
  If Co-Licensor incurs any obligations with respect to such right(s)
  then
  those obligations are transferred with ownership of these right(s).
 </dd>
 <dt><a name="par02c" id="par02c">Contribution:</a></dt>
 <dd>The Software distributed by Copyright Holder and/or any
  Modification(s)
  and/or any Derivative(s) that the owning Contributor has supplied to
  the
  Copyright Holder and/or to any third party or parties.<br />
  Dependent Software is not treated as a Contribution.</dd>
 <dt><a name="par02d" id="par02d">Contributor:</a></dt>
 <dd>Anyone - including Copyright Holder - supplying any
  Contribution(s)
  in any form to any third party or parties.<br />
  If ownership of any of the rights granted in this License is
  transferred
  from any of these parties (old Contributor) to one or more other
  parties
  (new Contributor), then the new Contributor will serve as
  Contributor
  instead of the old Contributor, unless the old Contributor retains
  ownership
  of some portion(s) of the granted right(s) in which case the new
  Contributor
  will serve as Contributor in addition to the old Contributor as
  appropriate,
  and each party only for the right(s) owned by that party.<br />
  If Contributor incurs any obligations with respect to these right(s)
  then
  those obligations are transferred with ownership of these right(s).
 </dd>
 <dt><a name="par02e" id="par02e">Copyright Holder:</a></dt>
 <dd>Anyone named as copyright holder in the Copyright Notice.<br />
  If ownership of any of the rights granted in this License is
  transferred
  from any of these parties (old Copyright Holder) to one or more other
  parties (new Copyright Holder), then the new Copyright Holder will
  serve as
  Copyright Holder instead of the old Copyright Holder, unless the old
  Copyright Holder retains ownership of some portion(s) of the granted
  rights
  in which case the new Copyright Holder will serve as Copyright Holder
  in
  addition to the old Copyright Holder as appropriate, and each party
  only for
  the rights owned by that party.<br />
  If Copyright Holder incurs any obligations with respect to these
  right(s)
  then those obligations are transferred with ownership of these
  right(s).</dd>
 <dt><a name="par02f" id="par02f">Copyright Notice:</a></dt>
 <dd>The modified copy of Exhibit A of this License that serves as
  copyrights
  notice of the Software.</dd>
 <dt><a name="par02g" id="par02g">Country:</a></dt>
 <dd>The country named in the Copyright Notice.</dd>
 <dt><a name="par02h" id="par02h">Court:</a></dt>
 <dd>The court named in the Copyright Notice.</dd>
 <dt><a name="par02i" id="par02i">Delta File:</a></dt>
 <dd>A Source File that specifies one or more Modifications to be
  applied to a
  pre-existing version of a Source File in order to change it into a
  different
  version. A Delta File may appear in compressed or archival form,
  provided the
  appropriate decompression or de-archiving software is both Gratis
  and widely
  available.</dd>
 <dt><a name="par02j" id="par02j">Dependent Software:</a></dt>
 <dd>Any Dependent Software that is not a Derivative. Both terms are
  defined
  in <a href="#par10">section 10</a>.</dd>
 <dt><a name="par02k" id="par02k">Derivatives:</a></dt>
 <dd>Any Derivative work that is not Dependent Software. Both terms
  are
  defined in <a href="#par10">section 10</a>.</dd>
 <dt><a name="par02l" id="par02l">Distributor:</a></dt>
 <dd>Anyone - including Copyright Holder - making any version of any
  Contribution(s) available by any means to any third party or parties
  other than Copyright Holder. This includes amongst others the case
  where any executable version of the Software - with or without
  Modifications
  - is made available for access through a network or any other form
  of direct
  or indirect access.<br />
  If ownership of any of the rights granted in this License is
  transferred
  from any of these parties (old Distributor) to one or more other
  parties
  (new Distributor), then the new Distributor will serve as Distributor
  instead of the old Distributor, unless the old Distributor retains
  ownership
  of some portion(s) of the granted rights in which case the new
  Distributor
  will serve as Distributor in addition to the old Distributor as
  appropriate,
  and each party only for the rights owned by that party.<br />
  If Distributor incurs any obligations with respect to these right(s)
  then those obligations are transferred with ownership of these
  right(s).</dd>
 <dt><a name="par02m" id="par02m">Entity:</a></dt>
 <dd>Any legal or other entity. For legal entities, "Entity" includes
  any
  entity which controls, is controlled by, or is under common control
  with the
  Entity. For purposes of this definition, "control" means
  <ol>
   <li>the power, direct or indirect, to cause the direction or
    management of such entity, whether by contract or otherwise,
 or</li>
   <li>ownership of more than fifty percent (50%) of the outstanding
    shares or beneficial ownership of such entity.</li>
  </ol>
 </dd>
 <dt><a name="par02n" id="par02n">Gratis:</a></dt>
 <dd>For no charge, except for the cost of data transfer and/or taxes
  imposed
  by local and/or national and/or other government(s) and/or any
  governmental
  body or bodies.</dd>
 <dt><a name="par02o" id="par02o">Larger Work:</a></dt>
 <dd>A collective work, as defined by applicable copyright law, that
  contains
  (part or parts of) any Contribution, with or without any additional
  Modification(s).</dd>
 <dt><a name="par02p" id="par02p">License:</a></dt>
 <dd>This license as set forth in this document.</dd>
 <dt><a name="par02q" id="par02q">Licensor:</a></dt>
 <dd>Anyone licensing any use of any of his/her own work(s) - as
  defined by
  applicable copyright law - under the terms and conditions of this
  License.
  <br />
  If ownership of any of the rights granted in this License is
  transferred
  from any of these parties (old Licensor) to one or more other
  parties
  (new Licensor), then the new Licensor will serve as Licensor instead
  of the
  old Licensor, unless the old Licensor retains ownership of some
  portion(s)
  of the granted rights in which case the new Licensor will serve as
  Licensor
  in addition to the old Licensor as appropriate, and each party only
  for the
  rights owned by that party.<br />
  If Licensor incurs any obligations with respect to these right(s)
  then those obligations are transferred with ownership of these
  right(s).</dd>
 <dt><a name="par02r" id="par02r">Modification:</a></dt>
 <dd>One or more changes to the Software - including any addition(s)
  and/or
  any deletion(s) - either of whole Source Files or of any section(s)
  of any
  size within Source Files and/or their Derivatives and/or other
  (prior)
  Modifications.</dd>
 <dt><a name="par02s" id="par02s">Programming Tool:</a></dt>
 <dd>Any licensed Software or portion of such Software that is
  declared as
  being a "programming tool" by the Copyright Holder. Such declaration
  must be
  located in the Copyright Notice.</dd>
 <dt><a name="par02u" id="par02u">Software:</a></dt>
 <dd>Any work(s) under applicable copyright law containing a notice
  placed by
  the Copyright Holder saying that it may be distributed under the
  terms of
  this License. In case the Software is (partially) comprised of
  and/or accompanied by files and/or members that, by their nature,
  cannot
  contain such a notice, then these files and/or members are regarded
  as
  Software too, provided that such a notice is included in another
  file or
  member where it can easily be located.<br />
  For works that contain computer software "Software" includes
  documentation
  and/or any other document(s) and/or accompanying data that can be
  defined as
  a "work" under copyright law.</dd>
 <dt><a name="par02v" id="par02v">Source Code:</a></dt>
 <dd>The preferred form of the Software for making Modifications to it,
  including, but not limited to, all its modules, any associated
  interface
  definition files, scripts used to control assembly and/or
  compilation and/or
  installation of the Software and/or any Derivatives
  (e.g. executables),
  linkage editor and/or binder control statements, and/or any other
  files or
  members needed to create the executables required to properly
  execute the
  Software, and any accompanying data required to make the generated
  executables function correctly.<br />
  Any software (including, but not limited to, assembler, compiler or
  interpreter) other than the licensed Software that is needed to
  create the
  executables of the Software, but that is not needed to properly
  execute the
  generated executables is not included in this definition of Source
  Code,
  provided that such software is available from Copyright Holder or
  from any
  other party. This is not to imply that Copyright Holder has any
  obligation
  to make such software available in case other parties no longer do
  so.<br />
  Deliberately obfuscated source code does not qualify as Source Code.
 </dd>
 <dt><a name="par02w" id="par02w">Source File:</a></dt>
 <dd>A file or member containing Source Code.<br />
  Source Files may appear in a compressed or archival form, provided
  the
  appropriate decompression or de-archiving software is both Gratis
  and widely
  available. Source Files may appear as entire sources or they may be
  comprised of differential comparisons against any publicly available
  version
  of the Software, provided the appropriate de-comparison software for
  (re-)applying the changes to the original Source File(s) of the
  Software is both
  Gratis and widely available.</dd>
 <dt><a name="par02x" id="par02x">State:</a></dt>
 <dd>The state named in the Copyright Notice.</dd>
 <dt><a name="par02y" id="par02y">User:</a></dt>
 <dd>Anyone - other than Copyright Holder - who has, holds, keeps,
  possesses,
  owns or uses a copy of the Software.</dd>
</dl>

<h4><a name="par03" id="par03">3.</a> This License</h4>

<p>This License applies to the Software and covers modification and
 distribution of the Software, use of third-party application programs
 based
 on the Software, and development of other software that uses the
 Software.
 The intent of this License is to establish freedom to share and
 change the
 Software regulated by this License under the open source model. This
 License
 may be referred to as "Bixoft Public License version 0.N" or
"BXAPL
  0.N".</p>

<p>Any User who finds the terms and/or conditions of this License not
 acceptable either must obtain a different license for the Software,
 or must
 refrain from using - in any way - the Software altogether.<br />
 Likewise, any User who finds it impossible to comply with any of the
 terms
 and/or conditions of this License due to statute, judicial order,
 regulation,
 or any other reason, either must obtain a different license for the
 Software,
 or must refrain from using - in any way - the Software altogether.</p>

<h4><a name="par04" id="par04">4.</a> Application of this License</h4>

<p>Anyone is permitted to copy and distribute this License document,
 as long
 as the entire License is copied with no changes, deletions, or
 additions.</p>

<p>Anyone is permitted to become a Licensor
 by applying this License to their own software and/or other work(s),
 as long as the entire License is copied and applied with no changes,
 additions or deletions. By doing so Licensor becomes Copyright Holder
 of Licensor's own distributed Software.<br />
 Licensor must ensure that each Source File of the software to be
 licensed
 contains an appropriately modified copy of Exhibit A of this License
 that
 serves as a Copyright Notice for the recipients of such software. At
 least
 all terms in Exhibit A of this License that have been enclosed in
 angle
 brackets "&lt;&gt;" must be replaced as appropriate, and the
 resulting text
 must be converted into comments as appropriate in each Source File.
</p>

<h4><a name="par05" id="par05">5.</a> License Versions and Translations
</h4>

<p>No one but B.V. Bixoft is allowed to modify this License; only
 B.V. Bixoft
 may publish new versions of this License. Each version will be given a
 distinguishing version number.</p>

<p>Anyone is permitted to translate this License and/or associated
 Copyright
 Notice(s). Such translations may be distributed only if they accompany
 the
 translated English original. Whenever differences in meaning occur the
 English version prevails, unless all parties involved agree to use a
 specific
 translation.</p>

<p>Each Licensor has the option to authorize or not to authorize any
 version
 of this License. By authorizing a version the Licensor agrees to make
 the
 authorization status of License versions for Licensor's Software
 publicly
 known and never to withdraw the authorization of that version of the
 License.<br />
 Authorization may be applied per package or (sub)component of the
 Software,
 at the Licensor's discretion.</p>

<p>Users may at all times replace their version of this License with
 the
 version most recently authorized by the Copyright Holder of their
 copy of the
 Software.</p>

<h4><a name="par06" id="par06">6.</a> Jurisdiction and Legal Details
</h4>

<p>Licensing of Software under this License is governed by the laws of
 the
 Country and State defined in the Copyright Notice. The application of
 the
 United Nations Convention on Contracts for the International Sale of
 Goods is
 expressly excluded, unless the Copyright Notice states otherwise.
 Disputes
 with regard to the application of this License shall be settled by
 the Court
 defined in the Copyright Notice.</p>

<p>This License constitutes the entire agreement between parties with
 respect
 to the subject matter hereof. Failure by Copyright Holder to enforce
 any
 provision of this License will not be deemed a waiver of future
 enforcement
 of that or any other provision. Any law or regulation that provides
 that the
 language of a contract shall be construed against the drafter will
 not apply
 to this License.</p>

<p>If any provision of this License is invalid or unenforceable under
 applicable law, it shall not affect the validity or enforceability of
 the
 remainder of the terms of this License, and without further action by
 parties
 hereto, such provision shall be reformed to the minimum extent
 necessary to
 make such provision valid and enforceable.</p>

<h3>Grants and Limitiations</h3>

<h4><a name="par07" id="par07">7.</a> Ownership of Intellectual
 Property</h4>

<p>COPYRIGHT HOLDER CLAIMS THE COPYRIGHTS TO THE DISTRIBUTED SOFTWARE
 AND
 ASSOCIATED WORKS WITH ALL RIGHTS RESERVED. COPYRIGHT HOLDER ALSO
 CLAIMS ANY
 APPLICABLE PATENT AND OTHER INTELLECTUAL PROPERTY RIGHTS WITH ALL
 RIGHTS
 RESERVED. ALL OTHER CONTRIBUTORS DO LIKEWISE FOR EACH OF THEIR
 CONTRIBUTIONS.<br />
 This License does not grant any rights to trademarks, copyrights,
 patents,
 trade secrets or any other intellectual property of any Contributor
 and/or
 Distributor except as expressly stated herein. No right is granted to
 the
 trademark(s) of any Contributor and/or Distributor even if such marks
 are
 included in the Software.<br />
 Neither the names of Contributors and/or Distributors nor any of
 their
 products may be used in any way without prior written permission from
 the
 pertinent Contributor(s) and/or Distributor(s). Derivatives and/or
 Dependent
 Software may not be named after the Software, nor may they be given a
 name
 that might be confused with the name of any Contributor and/or any
 Distributor or any of their products and/or trademarks.</p>

<h4><a name="par08" id="par08">8.</a> Granted Rigths</h4>

<p>Each Contributor grants to Copyright Holder and to all Users -
 provided
 such Users agree to and comply with any and all conditions in this
 License
 - a non-exclusive non-revokable world-wide royalty-free right,
 subject to third-party intellectual property claims:</p>

<h4><a name="par0801" id="par0801">8.1.</a> Copyrights</h4>

<p>under copyrights owned by Contributor to use, reproduce, modify,
 display,
 perform, sublicense and distribute the Software.</p>

<h4><a name="par0802" id="par0802">8.2.</a> Patent Rights</h4>

<p>under Contributor's own patent claims necessarily infringed by the
 making,
 using or selling of the Software, to make, have made, use, practice,
 sell,
 and offer for sale, and/or otherwise dispose of the Software.
 However, no patent license is granted:</p>
<ol>
 <li>separate from the Software</li>
 <li>for any software portions that have been deleted from the
  Software, or
  that have been deactivated in any other way</li>
 <li>for infringements caused by Modifications from other Contributors
  or the
  combination of the Software with other software or devices</li>
 <li>for hardware per se</li>
</ol>

<h4><a name="par0803" id="par0803">8.3.</a> Date of Grant</h4>

<p>The licenses granted in sections 8.1 and 8.2 above are effective on
 the
 date Contributor first makes the pertinent Contribution(s) available
 to the
 Copyright Holder and/or to any third party or parties.</p>

<h4><a name="par0804" id="par0804">8.4.</a> Ownership of Granted
 Rights</h4>

<p>Each Contributor represents that to its knowledge it has sufficient
 copyright and patent rights in its Contribution(s), if any, to grant
 the
 licenses granted in sections 8.1 and 8.2 above.</p>

<h4><a name="par0805" id="par0805">8.5.</a> Liability</h4>

<p>User expressly acknowledges that although each Contributor grants
 the
 licenses to its Contribution(s) set forth herein, no assurances are
 provided
 by any Contributor that the Software does not infringe the patent or
 other
 intellectual property rights of any third party or parties. Each
 Contributor
 and each Distributor disclaims any liability to User for claims
 brought by
 any other entity based on infringement of intellectual property rights
 or otherwise. AS A CONDITION TO EXERCISING THE RIGHTS AND LICENSES
 GRANTED UNDER
 THIS LICENSE, EACH USER HEREBY ASSUMES SOLE RESPONSIBILITY TO SECURE
 ANY
 OTHER INTELLECTUAL PROPERTY RIGHTS NEEDED, IF ANY.</p>

<h4><a name="par09" id="par09">9.</a> Modifying the Software</h4>

<p>Users may make Modifications to their copy of the Software.<br />
 The following restrictions apply to Modifications:</p>

<h4><a name="par0901" id="par0901">9.1.</a> Notices</h4>

<p>Modifications must not alter or remove the Copyright Notice, nor
 any other
 copyright notices, trademark notices or disclaimers in the Software.
 If the Software contains one or more sections that are marked as an
 extension
 to and/or part of the such a notice, then such section(s) may not be
 altered or
 removed either, except as noted in <a href="#par0902">paragraph 9.2
</a> below.<br />
 If the Software produces output containing a copyright notice, then
 that notice must
 remain unaltered as well, except that it may be extended with either
 the term
 "and others" or "et al" and a reference to further information - or
 their
 equivalent(s) in the appropriate language(s).</p>

<h4><a name="par0902" id="par0902">9.2.</a> License</h4>

<p>Users may not change the License for their Software, but they are
 always
 allowed to replace it with the version most recently authorized for
 that Software
 by the Copyright Holder.<br />
 If the Software contains any section(s) as outlined in
 <a href="#par0901">paragraph 9.1</a> above, then such sections may be
 altered,
 but only to support such a newer version of the License.</p>

<h4><a name="par0903" id="par0903">9.3.</a> Documentation</h4>

<p>When a User makes Modifications each change applied must be well
 documented and clearly distinguishable as being made by that User.
</p>

<h4><a name="par10" id="par10">10.</a> Derived and Dependent Works
</h4>

<p>Users may use the original or modified versions of the
 Software to assemble, compile, link-edit and/or run computer programs
 legally developed by that User or by others. Users also may develop
 computer programs, reusable components and other software items that
 make
 use of or link with the original or any modified version(s) of the
 Software. All of these items - including any assembled, compiled or
 otherwise translated versions of them - are called "Derivatives",
 unless
 they meet all of the following criteria:</p>
<ol>
 <li>they are either new works under copyright law or derived from one
 or
  more other works that are totally unrelated to the Software.</li>
 <li>they make use only of Programming Tools, not of any other
  components of
  the Software</li>
 <li>they do not include Modifications either to the Programming Tools
  or their
  function in any way, nor to any other component of the Software</li>
</ol>

<p>in which case they are called "Dependent Software". If Dependent
 Software
 requires changes to the Software used, then such software - together
 with the Modifications to the Software - will be
 regarded as a Derivative, unless the Modifications to the Software
 are kept separate, in which case such changes are regarded as
 Modifications to the Software, and the remaining software as
 Dependent Software, provided that it meets all of the criteria above.
 Both
 terms "Derivatives" and "Dependent Software" refer to any number
(i.e. one
 or more) of such items.</p>

<h4><a name="par11" id="par11">11.</a> Larger Works</h4>

<p>Users may use the original or modified versions of the
 Software to create a Larger Work by combining it with other software
 not
 governed by the terms of this License, and/or additional Contributions
 and/or additional Dependent Software and distribute the Larger Work as
 a single product. In such a case, the distributor of the Larger Work
 must
 make sure all requirements of this License are fulfilled for the
 Software included in the Larger Work.</p>

<h4><a name="par12" id="par12">12.</a>Distribution of covered and
 related
 materials</h4>

<p>Users may keep their Modifications and/or Derivatives and/or
 Dependent
 Software private, in which case sections 12.1 through 12.6 do not
 apply.<br />
 Users may become a Contributor by supplying their own Contribution(s)
 to
 Anyone, including Copyright Holder. Users may also become a
 Distributor
 by distributing the original Software and/or User's own
 Contribution(s)
 in any form (source, object, executable or other) to Anyone other than
 Copyright Holder.<br />
 Any User can be a Contributor, a Distributor, both, or neither.<br />
 For any Distribution the following applies:</p>

<h4><a name="par1201" id="par1201">12.1</a> License</h4>

<h5>a) General</h5>
<p>Irrespective of the included license no terms may be offered or
 imposed that
 alter or restrict the included license or the rights it grants. All
 Source
 Files must include a reference to the included license.</p>

<h5>b) License for the Software and/or Modifications and/or Derivatives
</h5>
<p>This License document must be included - unchanged - in each
 distribution,
 or it may be replaced with the version most recently authorized by
 the
 Copyright Holder at the time each distribution is prepared.</p>

<h5>c) License for Dependent Software</h5>
<p>This License document must be included - unchanged - in each
 distribution,
 or it may be replaced with the version most recently authorized by
 the
 Copyright Holder at the time each distribution is prepared.
 Alternatively,
 after written permission to do so has been obtained from the
 Copyright
 Holder, the License may be replaced with a different OSI-approved
 license,
 which will be applicable only to Distributor's own Dependent Software.
</p>

<h4><a name="par1202" id="par1202">12.2.</a> Completeness</h4>

<h5>a) Distributor's own Contributions and/or Dependent Software</h5>
<p>Distributor must ensure that any Contribution(s) and/or Dependent
 Software
 included in the distribution are available under the terms of the
 included
 license in addition to any other license(s) of Distributor. The use
 of such
 additional licenses is allowed only for Users who are both
 Distributor and
 Contributor and only for Distributor's own Dependent Software and/or
 Delta
 Files containing Distributor's own Modifications and/or Dependent
 Software.</p>

<h5>b) All other Software and/or Contributions</h5>
<p>Distributor must ensure that both the distributed copy of the
 original
 Software and any Modifications and/or Derivatives contributed by other
 Contributors are distributed in their entirety with each distribution,
 including - but not restricted to - the Copyright Notice, other
 copyright
 notices, trademark notices, and disclaimers, as released by the
 respective
 Contributors, and are available only under the terms of the included
 license.</p>

<h4><a name="par1203" id="par1203">12.3.</a> Form</h4>

<h5>a) Form of Modifications and/or Derivatives</h5>
<p>Distributor may distribute Modifications and/or Derivatives in a
 form that
 is separate from the original Software, such as Delta Files.
 Distributor must
 ensure that such Delta Files either carry a verbatim copy of the
 original
 Copyright Notice, or a copy of it with appropriately changed
 definitions. The
 Copyright Notice may be in a different Source File, which must be
 easily
 recognizable as such. Only the copyright holder of the Delta Files is
 allowed
 to change the Copyright Notice for such Delta Files and only the
 definitions
 of Copyright Holder, Country, State, and Court may be changed. The
 list of
 Contributors may not be changed, except for appending Contributors to
 it.<br />
 Alternatively, Distributor may distribute Modifications and/or
 Derivatives in
 a version that integrates the distributed Modifications and/or
 Derivatives
 with the original Software. In such cases Distributor must ensure
 that all
 Source Files in such a distribution carry a copy of the original
 Copyright
 Notice, with no changes or deletions, except for additions to its
 list of
 Contributors, as appropriate.</p>

<h5>b) Form of Dependent Software</h5>
<p>Section 12.3 does not apply to Dependent Software.</p>

<h4><a name="par1204" id="par1204">12.4.</a> Availability of Source
</h4>

<p>Distributor must ensure that all recipients of non-source versions
 of the
 Software and/or Modifications and/or Derivatives are also able to
 receive
 and use the complete machine-readable Source Code for all Software
 and/or
 Modifications and/or Derivatives involved, and place prominent
 notices in the
 distribution explaining this. Distributor must ensure that such
 Source Code
 is both Gratis and easily obtainable.</p>

<h4><a name="par1205" id="par1205">12.5.</a> Grant to Copyright Holder
</h4>

<p>Contributors distributing their own Modifications and/or
 Derivatives hereby
 grant a non-exclusive non-revokable world-wide royalty-free right to
 the
 Copyright Holder to distribute any such Modifications and/or
 Derivatives with
 future versions of the Software, provided such versions remain
 available
 under the terms of this License in addition to any other license(s)
 of the
 Copyright Holder. If such Modifications and/or Derivatives are not
 available
 to the general public, and the Copyright Holder requests a copy of
 their
 Source Code, then it must be supplied - unless the Copyright Holder
 waives
 this right in the Copyright Notice, in which case the Distributor may
 or may
 not supply the Source Code.</p>

<h4><a name="par1206" id="par1206">12.6.</a> Dependent Software</h4>

<p>Distributors of Dependent Software must ensure that the Dependent
 Software
 is accompanied by a complete distribution of the Programming Tools in
 the
 Software, including any Modifications, as used to create the
 distributed
 Dependent Software and its Derivatives. Distributors of Dependent
 Software
 must ensure that all Source Files of Dependent Software carry a copy
 of the
 original Copyright Notice with appropriately changed definitions.
 Only the
 copyright holder of the distributed Dependent Software is allowed to
 change
 the Copyright Notice for the Dependent Software and only the
 definitions of
 Copyright Holder, Country, State, Court, and waiver status for
 section 12.5
 of this License may be changed, as well as the name that has been
 given to
 the Dependent Software and the details of the copyright claim itself.
 In the
 Copyright Notice for the Dependent Software the copyright holder of
 the
 distributed Dependent Software may either append Contributors to the
 list of
 Contributors, or replace it in its entirety, in which case
 Distributor must
 make sure it contains a reference to the Programming Tools that were
 used to
 create the Dependent Software and its Derivatives.</p>

<h4><a name="par13" id="par13">13.</a> Other Obligations</h4>

<p>Distributors may choose to offer warranty, support, indemnity
 and/or
 liability obligations to one or more of their Users under a contract
 that
 is separate from this License. However, Distributors may do so only
 on
 their own behalf, and not on behalf of the Copyright Holder or any
 other
 Contributor and/or Distributor. Such a Distributor must make it clear
 that
 any such warranty, support, indemnity or liability obligation is
 offered by
 that Distributor alone. Distributor hereby agrees to indemnify the
 Copyright
 Holder and every other Contributor and/or Distributor and/or
 Co-Licensor for
 any liability incurred by them as a result of warranty, support,
 indemnity
 or liability terms offered by Distributor.</p>

<h4><a name="par14" id="par14">14.</a> U.S. Government</h4>

<p>If the Software is being acquired by or on behalf of the
 U.S. Government
 or by a U.S. Government prime contractor or subcontractor
 (at any tier),
 then the Government's rights in the Software (including the
 accompanying
 documentation) shall be only as set forth in this License; this is in
 accordance with 48 C.F.R. 227.7201 through 227.7202-4 (for Department
 of
 Defense (DoD) acquisitions) and with 48 C.F.R. 2.101 and 12.212
 (for non-DoD
 acquisitions).</p>

<h3>Termination</h3>

<h4><a name="par15" id="par15">15.</a> Termination</h4>

<p>This License and the rights granted hereunder will terminate
 automatically
 if User fails to comply with any of the terms herein and fails to
 cure such
 breach within fourteen days of becoming aware of the breach. However,
 User's
 obligations under this License will continue and survive. All
 sublicenses to
 the Software that are properly granted shall survive termination of
 the
 License, provided Users under such a sublicense comply with any and
 all
 conditions in the applicable License.</p>

<h4><a name="par16" id="par16">16.</a> Patent Infringement</h4>

<p>If a User (the "Patent Holder") initiates litigation by asserting a
 patent
 infringement claim against any Contributor, (the "Author") alleging
 that the
 Software infringes the Patent Holder's patent(s), then any and all
 rights
 granted by the Author and/or the Copyright Holder to the Patent
 Holder under
 this License shall terminate upon fourteen days notice (the "Notice
 Period")
 unless within the Notice Period the Patent Holder either:</p>
<ol>
 <li>both pays the Author and/or Copyright Holder a mutually agreeable
  royalty
  for the Patent Holder's past use of the Software and agrees in
  writing to pay
  the Author and/or Copyright Holder a mutually agreeable royalty for
  Patent
  Holder's future use of the Software, or</li>
 <li>withdraws the Patent Holder's litigation claim with respect to
  the
  Software against Author.</li>
</ol>

<p>If within the Notice Period a royalty and payment arrangement are
 not
 mutually agreed upon in writing by the parties or the litigation
 claim is
 not withdrawn, the rights granted by the Author and/or Copyright
 Holder to
 the Patent Holder under this License automatically terminate at the
 expiration of the Notice Period. However, the Patent Holder's
 obligations
 under this License will continue and survive. All sublicenses to the
 Software that are properly granted shall survive termination
 of the License, provided Users under such a sublicense comply with
 any and
 all conditions in the applicable License.</p>

<h3>DISCLAIMER OF WARRANTY</h3>

<h4><a name="par17" id="par17">17.</a> NO WARRANTY</h4>

<p>THE DISTRIBUTED SOFTWARE IS PROVIDED UNDER THIS LICENSE ON AN
 "AS IS"
 BASIS, WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED,
 INCLUDING,
 WITHOUT LIMITATION, WARRANTIES THAT THE SOFTWARE IS FREE OF DEFECTS,
 MERCHANTABLE, FIT FOR A PARTICULAR PURPOSE OR NON-INFRINGING. THE
 ENTIRE RISK
 AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH THE USER.
 SHOULD
 ANY PART OF THE SOFTWARE PROVE DEFECTIVE IN ANY RESPECT, THE USER
 (NOT THE
 COPYRIGHT HOLDER NOR ANY OTHER CONTRIBUTOR AND/OR DISTRIBUTOR AND/OR
 CO-LICENSOR) ASSUMES THE COST OF ANY NECESSARY SERVICING, REPAIR OR
 CORRECTION. THIS DISCLAIMER OF WARRANTY CONSTITUTES AN ESSENTIAL PART
 OF THIS
 LICENSE. NO USE OF ANY SOFTWARE IS AUTHORIZED HEREUNDER EXCEPT UNDER
 THIS
 DISCLAIMER.<br />
 Each User is solely responsible for determining the appropriateness
 of using
 and distributing the Software and assumes all risks associated with
 exercising any right(s) under this License, including but not limited
 to the
 risks and costs of program errors, compliance with applicable laws,
 damage to
 or loss of data, programs or equipment, and unavailability or
 interruption of
 operations.</p>

<h3>LIMITATION OF LIABILITY</h3>

<h4><a name="par18" id="par18">18.</a> NO LIABILITY</h4>

<p>UNDER NO CIRCUMSTANCES AND UNDER NO LEGAL THEORY, WHETHER TORT
 (INCLUDING
 NEGLIGENCE), CONTRACT, OR OTHERWISE, SHALL THE USER, THE COPYRIGHT
 HOLDER,
 OR ANY OTHER CONTRIBUTOR AND/OR DISTRIBUTOR AND/OR CO-LICENSOR, OR
 ANY
 SUPPLIER OF ANY OF SUCH PARTIES, BE LIABLE TO ANY PERSON OR ANY LEGAL
 ENTITY
 FOR ANY DIRECT, INDIRECT, SPECIAL, INCIDENTAL, EXEMPLARY, OR
 CONSEQUENTIAL
 DAMAGES OF ANY CHARACTER INCLUDING, WITHOUT LIMITATION, DAMAGES FOR
 LOSS OF
 GOODWILL, LOST PROFITS, WORK STOPPAGE, COMPUTER FAILURE OR
 MALFUNCTION, OR
 ANY AND ALL OTHER COMMERCIAL DAMAGES OR LOSSES, EVEN IF SUCH PARTY
 SHALL
 HAVE BEEN INFORMED OF THE POSSIBILITY OF SUCH DAMAGES. TO THE EXTENT
 THAT
 ANY EXCLUSION OF DAMAGES ABOVE IS NOT VALID UNDER APPLICABLE LAW,
 USER
 AGREES THAT IN NO EVENT WILL THE LIABILITY UNDER OR RELATED TO THIS
 LICENSE
 EXCEED FIFTY US DOLLARS ($50).<br />
 Each User is responsible for claims and/or damages arising, directly
 or
 indirectly, out of its utilization of rights under this License,
 especially
 if the use of the Software might cause severe damage, radioactive or
 other
 environmental pollution, personal injury, health hazards, death or
 other
 damages of any kind. User agrees to work with Copyright Holder and/or
 any
 other Contributors and/or Distributors and/or Co-Licensors to
 distribute
 such responsibility on an equitable basis. Nothing herein is intended
 or
 shall be deemed to constitute any admission of liability.</p>

<h4><a name="par1801" id="par1801">18.1</a> Intellectual Property</h4>

<p>User may need intellectual property rights other than those granted
 in sections <a href="#par0801">8.1</a> and <a href="#par0802">8.2</a>.
 As stated in section <a href="#par0805">8.5</a> IT IS EACH USER'S
 SOLE
 RESPONSIBILITY TO SECURE ANY SUCH INTELLECTUAL PROPERTY RIGHTS NEEDED.
 Please refer to section 8.5 for details on liability with regard to
 intellectual property.</p>

<h3><a name="exhibita" id="exhibita">Exhibit A</a></h3>

<p class="remark">Remark:<br />
 Exhibit A serves only as a prototype for the Copyright Notice.
 Please refer to te Copyright Notice that came with the Software to
 determine the details that apply to you.</p>

<pre>
***********************************************************************

         Copyright Notice.

     Licensed material - Property of &lt;Copyright Holder&gt;

This source file is part of &lt;Copyright Holder&gt;'s &lt;Product name
+&gt;.
(C) Copyright &lt;Copyright Holder&gt;, &lt;Country&gt;, &lt;Year-Year&
+gt;.
All rights reserved. Modifications (C) copyrighted by their respective
contributors, all rights reserved.

The contents of this file are subject to the Bixoft Public License
Version 0.N (the "License"); you may not use this file in any way
except in compliance with the License. You should have received a copy
of the License with this source; see &lt;file or member name&gt;. You
may also obtain a copy of the License at
http://www.bixoft.nl/english/license.htm or
&lt;the web address of your copy of the license&gt;

ANY USE OF THE SOFTWARE CONSTITUTES ACCEPTANCE OF THE LICENSE.

Anything distributed under the License is distributed on an &quot;AS IS
+&quot;
basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
License for the specific language governing rights and limitations
under the License.

Entitlement to Source Code of Modifications and/or Derivatives
(see section 12.5 of the License for details) is &lt;not&gt; waived.

Definitions required by the License:
Copyright Holder: &lt;name&gt;, &lt;country&gt;
    e-mail: &lt;e-mail address&gt;
Country: &lt;country&gt;, i.e. the laws of &lt;country&gt; apply.
State  : &lt;state, or not applicable&gt;
Court  : &lt;court designation&gt;
Programming Tool status: This source &lt;is or is not&gt; a
Programming Tool.

Contributor(s):        Contribution:
&lt;author&gt;, &lt;e-mail address&gt;     Original version
.....            .....

***********************************************************************
</pre>

<p>&nbsp;</p>
<hr />
<p>&nbsp;</p>

<p class="remark"><a name="rem00" id="rem00">Remarks</a><br />
 on <a href="#par00">initial section</a>:
 Section was taken from IBMPL, first paragraph, and modified to
 reflect
 that not all software is a "program". The mixed-case section was
 derived
 from GPL section 5. This license uses the term Software
 to cover programs, libraries, and programming tools. For interactive
 programs it is advised that an "I accept"-button is included in the
 program.</p>

<p class="remark"><a name="rem01" id="rem01"><u>Remarks</u></a><br />
 on <a href="#par01">section 1</a>:
 First sentence was taken from QPL, first paragraph of intro, and
 modified.
 Application of law was taken from QPL, last paragraph. We opt for
 Dutch
 law, since we're located in the Netherlands. We chose the court of
 Amsterdam because it has more experience in international matters
 than
 most other Dutch courts.</p>

<p class="remark"><a name="rem02" id="rem02"><u>Remarks</u></a><br />
 on <a href="#par02">section 2</a>:
 Section was added to define various terms. Inclusion of terms defined
 in the copyright notice was based on Jabber, section 6.</p>

<p class="remark"><a name="rem03" id="rem03"><u>Remarks</u></a><br />
 on <a href="#par03">section 3</a>:
 First and second sentences were taken from QPL, second paragraph.
 Third
 sentence was added to fit the skeleton structure of this license.
 Second
 section added to make the dual licensing policy explicit, partly
 based
 upon MPL1.1, section 4.</p>

<p class="remark"><a name="rem04" id="rem04"><u>Remarks</u></a><br />
 on <a href="#par04">section 4</a>:
 First sentence was inspired by QPL, second sentence of intro.
 Remainder was inspired by the Aladdin Free Public License (not an
 OSI-approved license), introduction.</p>

<p class="remark"><a name="rem05" id="rem05"><u>Remarks</u></a><br />
 on <a href="#par05">section 5</a>:
 Various public licenses allow the User to choose any version of the
 license document. This leaves too much use for misuse of inadvertent
 errors or loopholes in some version of the license. In stead of
 fixing
 Users to the version they once received, we offer them the choice to
 use
 either the version they received with their copy of the Software, or
 to
 replace it with the most current version at the moment of replacement.
<br />
 Licensors, on the other hand, are allowed to authorize or not to
 authorize
 any version available, so they are not forced to accept conditions of
 a
 newer version if these are not acceptable to them.<br />
 Second paragraph was added to allow translations of the License
 and/or
 Copyright Notice. After all, not everybody is equally fluent in
 English.</p>

<p class="remark"><a name="rem06" id="rem06"><u>Remarks</u></a><br />
 on <a href="#par06">section 6</a>:
 First paragraph was taken from QPL, last paragraph. Modified to fit
 the skeleton structure of this license. The additional statement on
 the
 UNCISG was taken from Jabber PL, section 13.<br />
 Second paragraph, first sentence taken from Apple Public License,
 section 13.7. Second sentence derived from same, section 13.4. Third
 sentence taken from MPL1.1 section 11, last sentence.<br />
 Provision for unenforceability taken from IBMPL, section 7, first
 paragraph.</p>

<p class="remark"><a name="rem07" id="rem07"><u>Remarks</u></a><br />
 on <a href="#par07">section 7</a>:
 Claim of intellectual property rights (including copyright and patent
 rights) added to make these matters explicit.<br />
 Second paragraph was based on the Jabber public license, section 3 of
 the license terms. Rephrased it to make it readable and removed some
 of
 the details. Added protection for Contributor's names, trademarks and
 products, which was based on the Apache Software License, sections 4
 and
 5.</p>

<p class="remark"><a name="rem08" id="rem08"><u>Remarks</u></a><br />
 on <a href="#par08">section 8</a>:
 Section was taken from QPL, granted rights, section 1, and merged with
 the Nokia Open Source License, section 2.1.</p>

<p class="remark"><a name="rem0801" id="rem0801"><u>Remarks</u></a>
<br />
 on <a href="#par0801">section 8.1</a>:
 Section was derived from Nokia Open Source license, section 2.1a.</p>

<p class="remark"><a name="rem0802" id="rem0802"><u>Remarks</u></a>
<br />
 on <a href="#par0802">section 8.2</a>:
 Section was derived from Nokia Open Source license, section 2.1b.
 Details from NOKOS section 2.1d were added. Last exception was taken
 from IBMPL, last sentence of section 2b.</p>

<p class="remark"><a name="rem0803" id="rem0803"><u>Remarks</u></a>
<br />
 on <a href="#par0803">section 8.3</a>:
 Section was derived from Nokia Open Source license, section 2.1c.</p>

<p class="remark"><a name="rem0804" id="rem0804"><u>Remarks</u></a>
<br />
 on <a href="#par0804">section 8.4</a>:
 Section was derived from IBMPL, section 2d.</p>

<p class="remark"><a name="rem0805" id="rem0805"><u>Remarks</u></a>
<br />
 on <a href="#par0805">section 8.5</a>:
 Section was derived from IBMPL, section 2c. The words "Expressly
 acknowledge" were taken from the Apple Public Source License, first
 sentence of section 2.3.</p>

<p class="remark"><a name="rem09" id="rem09"><u>Remarks</u></a><br />
 on <a href="#par09">section 9</a>:
 Section was derived from QPL, granted rights, section 3.</p>

<p class="remark"><a name="rem0901" id="rem0901"><u>Remarks</u></a>
<br />
 on <a href="#par0901">section 9.1</a>:
 First sentence was taken from QPL, granted rights, section 3a.
 Protection for trademarks and disclaimers was added. Statement on
 copyright
 notice on produced output added too.</p>

<p class="remark"><a name="rem0902" id="rem0902"><u>Remarks</u></a>
<br />
 on <a href="#par0902">section 9.2</a>:
 Section was added to allow the User to choose the most current
 version
 of the pertinent license in stead of the version that came with
 his/her
 copy. The intention is to allow the redistributing User a choice of
 version, while preventing unnecessary proliferation of outdated or
 repaired versions. See also on <a href="#par05">section&nbsp;5</a>.
</p>

<p class="remark"><a name="rem0903" id="rem0903"><u>Remarks</u></a>
<br />
 on <a href="#par0903">section 9.3</a>:
 Section was added to facilitate recognition of source of changes.</p>

<p class="remark"><a name="rem10" id="rem10"><u>Remarks</u></a><br />
 on <a href="#par10">section 10</a>:
 Section was taken from QPL, granted rights, section 5 and section 6
 except its redistribution clause. Joined the texts and made the text
 applicable to both macro libraries and programs. Added the definition
 of
 the term "Derivatives", since it seems not always to be clear what
 exactly
 "Derivatives" are. Also added the distinction between Derivatives,
 which
 build upon and expand existing Software, and "Dependent Software",
 which
 is created with the aid of Programming Tools supplied with the
 Software,
 but does not derive from the Software.<br />
 We're not too happy with the term "Dependent Software". It was
'invented'
 to denote software items that use the Software, but that are
 not Derivatives of it - a "work that uses the Library" in terms of
 the
 LGPL. We thought "work that uses the Software" rather
 unwieldy. If anyone has a better name for such software, please let
 us
 know; a good name will certainly improve the text of this license.
</p>

<p class="remark"><a name="rem11" id="rem11"><u>Remarks</u></a><br />
 on <a href="#par11">section 11</a>:
 Section was taken from MPL1.1, section 3.7.</p>

<p class="remark"><a name="rem12" id="rem12"><u>Remarks</u></a><br />
 on <a href="#par12">section 12</a>:
 Section was derived from QPL, granted rights, section 4 and section
 6 (just the redistribution clause), with changes to allow for
 distribution
 of changed and/or unchanged versions of the Software in any relevant
 format.</p>

<p class="remark"><a name="rem1201a" id="rem1201a"><u>Remarks</u></a>
<br />
 on <a href="#par1201a">section 12.1a</a>:
 Section was taken from QPL, granted rights, section 4a. The term
 "unchanged" was added for clarity. First sentence was extended to
 allow
 the User to choose the most current version of this license in stead
 of
 the version that came with his/her copy. Analogous to the provision
 under
 on <a href="#par0902">section&nbsp;9.2</a>. The exclusion of
 restrictions
 was based on third sentence of MPL 1.1 section 3.1. Statement on
 alternative licenses was added to give creators of Dependent Software
 more
 freedom in selecting any OSI-approved license.</p>

<p class="remark"><a name="rem1201b" id="rem1201b"><u>Remarks</u></a>
<br />
 on <a href="#par1201b">section 12.1b</a>:
 Section was taken from QPL, granted rights, section 4a. The term
 "unchanged" was added for clarity. First sentence was extended to
 allow
 the User to choose the most current version of this license in stead
 of
 the version that came with his/her copy. Analogous to the provision
 under
 on <a href="#par0902">section&nbsp;9.2</a>. The exclusion of
 restrictions
 was based on third sentence of MPL 1.1 section 3.1. Statement on
 alternative licenses was added to give creators of Dependent Software
 more
 freedom in selecting any OSI-approved license.</p>

<p class="remark"><a name="rem1202" id="rem1202"><u>Remarks</u></a>
<br />
 on <a href="#par1202">section 12.2</a>:
 Section was taken from QPL, granted rights, section 4c. Protection
 expanded to include trademark notices and disclaimers. Added
 dual-license
 option for User's Contribution(s).</p>

<p class="remark"><a name="rem1203a" id="rem1203a"><u>Remarks</u></a>
<br />
 on <a href="#par1203a">section 12.3a</a>:
 Section was derived from QPL, granted rights, section 3, first
 sentence.</p>

<p class="remark"><a name="rem1204" id="rem1204"><u>Remarks</u></a>
<br />
 on <a href="#par1204">section 12.4</a>:
 Section was taken from QPL, granted rights, section 4b.</p>

<p class="remark"><a name="rem1205" id="rem1205"><u>Remarks</u></a>
<br />
 on <a href="#par1205">section 12.5</a>:
 Section was taken from QPL, granted rights, section 3b and 6c. The
 terms
 "world-wide" and "royalty-free" were inserted in accordance with the
 first
 sentence of on <a href="#par08">section&nbsp;8</a>. Distributor
 changed to
 Contributor. Added allowance for waiver of entitlement to Source Code
 of
 Modifications and/or Derivatives because not all Licensors are likely
 to require such entitlement.</p>

<p class="remark"><a name="rem1206" id="rem1206"><u>Remarks</u></a>
<br />
 on <a href="#par1206">section 12.6</a>:
 Section was added to ensure that Dependent Software is not
 distributed
 without the Programming Tools they were based upon.</p>

<p class="remark"><a name="rem13" id="rem13"><u>Remarks</u></a><br />
 on <a href="#par13">section 13</a>:
 Section was derived from Jabber, section 4e.</p>

<p class="remark"><a name="rem14" id="rem14"><u>Remarks</u></a><br />
 on <a href="#par14">section 14</a>:
 Section was taken from SISSL, section 10.0.</p>

<p class="remark"><a name="rem15" id="rem15"><u>Remarks</u></a><br />
 on <a href="#par15">section 15</a>:
 Section was taken from Jabber public license, section 9a and combined
 with IBM public license, section 7, third paragraph. Last sentence
 added
 to close a potential loophole.</p>

<p class="remark"><a name="rem16" id="rem16"><u>Remarks</u></a><br />
 on <a href="#par16">section 16</a>:
 Section was taken from Jabber public license, section 9b and combined
 with IBM public license, section 7, second paragraph. Some rephrasing
 was
 applied in an attempt to make this section more readable to non-lawyer
 types. Largely unsuccessful, I'm afraid. Last sentence closes same
 potential loophole as in section&nbsp;15.</p>

<p class="remark"><a name="rem17" id="rem17"><u>Remarks</u></a><br />
 on <a href="#par17">section 17</a>:
 Uppercase section was taken from Jabber public license, section 8
 with
 addition of some terms from other public licenses. Mixed case section
 was
 taken from IBMPL, mixed case section of section 5.</p>

<p class="remark"><a name="rem18" id="rem18"><u>Remarks</u></a><br />
 on <a href="#par18">section 18</a>:
 Uppercase section was taken from Jabber public license, sections 10
 and
 11 with addition of some terms from other public licenses. Limitation
 to
 USD 50 was based upon Ricoh Source Code Public License, section 9.
 Mixed case section was based on Jabber, section 11, with specific
 risks
 taken from Apple Public Source License Version 1.2, section 8 and
 Ricoh
 Source Code Public License, section 9.</p>

<p class="remark"><a name="rem1801" id="rem1801"><u>Remarks</u></a>
<br />
 on <a href="#par1801">section 18.1</a>:
 Since section 8.5 covers liability-related issues as well this
 section was added for clarity, with a pointer to the real text
 in section 8.5.</p>

<p class="remark"><a name="remexhibita" id="remexhibita"><u>Remarks</u>
</a><br />
 on <a href="#exhibita">exhibit A</a>:
 The Exhibit was based on the Nokia Open Source License and others.
<br />
 See below for the version that will accompany Bixoft's eXtended
 Assembly
 language. In macro's comment lines start with the characters ".*" as
 you may see in the Copyright Notice below.</p>

<pre>
.**********************************************************************
.*
.*          Copyright Notice.
.*
.*      Licensed material - Property of B.V. Bixoft.
.*
.* This source file is part of Bixoft's eXtended Assembly language, or
.* the BXA library. (C) Copyright B.V. Bixoft, the Netherlands,
.* 1999-2002. All rights reserved. Modifications (C) copyrighted by
.* their respective contributors, all rights reserved.
.*
.* The contents of this file are subject to the Bixoft Public License
.* Version 0.N (the "License"); you may not use this file in any way
.* except in compliance with the License. You should have received a
.* copy of the License with this source; see member $LICENSE. You may
.* also obtain a copy of the License at
.* http://www.bixoft.nl/english/license.htm
.*
.* ANY USE OF THE SOFTWARE CONSTITUTES ACCEPTANCE OF THE LICENSE.
.*
.* Anything distributed under the License is distributed on an "AS IS"
.* basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
.* the License for the specific language governing rights and
.* limitations under the License.
.*
.* Entitlement to Source Code of Modifications and/or Derivatives
.* (see section 12.5 of the License for details) is &lt;not&gt; waived.
.*
.* Definitions required by the License:
.* Copyright Holder: B.V. Bixoft, the Netherlands
.*     e-mail: bixoft@bixoft.nl
.* Country: the Netherlands, i.e. the laws of the Netherlands apply.
.* State  : not applicable
.* Court  : any Dutch court with appropriate jurisdiction, i.e. the
.*          court of appropriate jurisdiction will settle any disputes.
.* Programming Tool status: This source is a Programming Tool.
.*
.* Contributor(s):        Contribution:
.* B.V. Bixoft, bixoft@bixoft.nl    Original version
.* .....            .....
.*
.**********************************************************************
</pre>
/HTML
