         HTMLDEF HYDE.UKH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/hyde.htm -->
<!-- -->
<title>Why Learning Assembly Language Is Still a Good Idea</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe" />
<meta http-equiv="description"
      content="Why Learning Assembly Language Is Still a Good Idea."
      />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF HYDE.UKT
<!-- UK -->
<h1 align="center">Why Learning Assembly Language Is Still a Good Idea.
</h1>

<p class="header" align="center">By Randall Hyde, May 06, 2004</p>

<p class="remark">
 Please note:<br />
 The article below was originally written with Intel-type processors
 in mind
 and referred to their assembly language. However, since the arguments
 presented by the author hold for mainframes as well, we thought it
 relevant
 to publish it in the hlasm.com site as well.</p>

<p class="remark">
 Disclaimer:<br />
 Bixoft converted &quot;Why Learning Assembly Language Is Still a Good
 Idea&quot; into a web-document with permission of the original author
 for
 re-publication. We also applied several minor changes. Nevertheless,
 the
 copyrights of Mr. Hyde still apply to the document below.</p>

<p class="remark">
 Contact:<br />
 Mr. Hyde will gladly accept your comments, remarks etc.
 <a href="mailto:rhyde@cs.ucr.edu">e-mail Randall hyde</a>.</p>

<p>This document contains the following sections:</p>
<ul>
 <li><a href="#chap01">Great Code Goes Beyond the Ordinary</a></li>
 <li><a href="#chap02">Efficiency Is the Key</a></li>
 <li><a href="#chap03">Practice Your Skills</a></li>
 <li><a href="#chap04">Learn Assembly Language</a></li>
 <li><a href="#chap05">Assembly Isn't Dead</a></li>
 <li><a href="#chap06">Master Low-Level Statements</a></li>
 <li><a href="#chap07">Conclusion</a></li>
</ul>

/HTML

         HTMLDEF HYDE.UK1
<!-- UK -->
<h2><a name="chap01" id="chap01">
 Great Code Goes Beyond the Ordinary</a></h2>

<p>The world is full of case studies outlining software engineering
 disasters.
 Almost every programmer has had to work on a project involving &quot;
 less
 than stellar&quot; source code that was difficult to read and
 maintain. On
 rare occasion, some programmers get the opportunity to work on a
 well-designed system, an awe-inspiring piece of craftsmanship that
 usually
 produces the exclamation, &quot;This is truly great code!&quot;</p>

<p>Clearly, professional software engineers should strive to achieve
 this
 level of greatness in all their code. But the real question is,
 &quot;What
 makes code great?&quot; Simply &quot;meeting specifications&quot; is
 not
 how one writes great code. True, in today's software environment,
 some
 might actually believe that simply meeting the specifications sets an
 application apart, as many development projects fail to meet their
 basic
 design goals.</p>

<p>However, in other areas greatness is rarely defined by doing the
 expected
 and succeeding; greatness is defined by going above and beyond what
 is
 expected. Software engineers should expect no less from great
 software - it
 should go above and beyond the standard conventions for software
 development.</p>

/HTML

         HTMLDEF HYDE.UK2
<!-- UK -->
<h2><a name="chap02" id="chap02">
 Efficiency Is the Key</a></h2>

<p>Because greatness is a multifaceted attribute, a short article such
 as this
 one cannot begin to describe all the possible components of a great
 piece of
 software. Instead, this article will describe one component of
 writing great
 code that has been neglected in recent years as computer systems
 have
 increased in capacity and power: efficiency.</p>

<p>Anyone who has been around the computer industry for a decade or
 more is
 well aware of this phenomenon: machines are getting exponentially
 more
 powerful per unit cost, yet users do not perceive this improvement in
 the
 applications that they purchase. For example, while word processors
 are
 clearly faster today than they were 21 years ago, they aren't 16,384
 times
 faster as Moore's Law <a href="#note01">[1]</a> would suggest. Part
 of the
 problem, of course, is that some of the additional processing power
 has
 been employed to support new features (such as a bitmapped display),
 but a
 large part of the reason software users aren't seeing an increase in
 speed
 is because many of today's programmers don't take the time to write
 efficient
 software, or they simply don't know how to write fast software.</p>

<p>Outrageous software development schedules that don't give
 programmers
 enough time to develop efficient code is certainly a problem, but
 many of
 today's programmers have grown up with fast CPUs, whose speed has
 made up for
 poor coding habits and, as such, many of these programmers have never
 had to
 learn how to write fast code.</p>

<p>Unfortunately, when software performance is less than optimal,
 these
 programmers generally don't know how to correct the problems with
 their
 software. They'll often spout things like &quot;The 90-10 rule,&quot;
 or
 &quot;I'll just use a profiler to correct the performance problems,
 &quot;
 but the truth is they don't really know how to improve the
 performance of
 their underperforming applications. It's all well and good to say,
 &quot;I'll just find a better algorithm!&quot; However, finding and
 deploying that algorithm, if one actually exists, is another matter.
</p>

<p>Most of the time you can achieve very good performance boosts by
 simply
 improving the implementation of an existing algorithm. A computer
 scientist
 may argue that a constant improvement in performance isn't as good as,
 say,
 going from an algorithm with O(n^2) performance to one with O(n lg n)
 performance, but the truth is that most of the time a constant factor
 of two
 or three times improvement, applied throughout a piece of software,
 can make
 the difference between a practical application and one that is simply
 too
 slow to comfortably use. And it is exactly this type of optimization
 with
 which most modern programmers have little experience.</p>

<p>Unfortunately, writing efficient software is a skill, one that must
 be
 practiced to learn and one that must be practiced to maintain.
 Programmers
 who never practice this skill will never be able to apply it the day
 they
 discover that their software is running too slow. Even if a programmer
 has
 mastered the skill of writing efficient software, the programmer must
 practice them on a regular basis. So, there are two reasons why some
 programmers don't write efficient (and great) software today: they
 never
 learned how to write efficient code in the first place, or they've
 allowed
 their programming skills to atrophy to the point that they no longer
 write
 efficient code as a matter of course.</p>

/HTML

         HTMLDEF HYDE.UK3
<!-- UK -->
<h2><a name="chap03" id="chap03">
 Practice Your Skills</a></h2>

<p>For programmers who have simply allowed their skills to falter from
 lack of
 use, the solution is obvious - practice writing efficient code, even
 when the
 project doesn't absolutely require it. This doesn't mean, of course,
 that a
 practicing engineer should sacrifice project schedules, readable and
 maintainable code, or other important software attributes for the
 sake of
 efficiency.</p>

<p>What it does mean is that the software engineer should keep
 efficiency in
 mind while designing and implementing the software. The programmer
 should
 make a conscious decision to choose a less efficient implementation
 over a
 more efficient implementation based on economic or engineering
 concerns,
 rather than simply utilizing the first implementation that comes to
 mind.
 Just as often as not, this simple consideration of different (and
 possibly
 more efficient) implementations is all that is necessary to produce
 great
 code. After all, sometimes the more efficient implementation is no
 more
 difficult to create than an inefficient one. All an experienced
 engineer
 may need are multiple options from which to choose.</p>

<p>Unfortunately, unrealistic software development schedules have led
 many
 professional engineers to shortcut the careful consideration of
 software
 development and implementation. The end result is that many
 professional
 programmers have gotten out of the habit of writing great code.
 Fortunately, this process is easy to reverse by practicing good
 software
 development methodologies, such as considering multiple algorithms
 and
 their implementations, as often as possible.</p>

/HTML

         HTMLDEF HYDE.UK4
<!-- UK -->
<h2><a name="chap04" id="chap04">
 Learn Assembly Language</a></h2>

<p>What about the programmer who has never learned to write efficien
 code
 in the first place? How does one learn how to efficiently implement
 an
 application? Unfortunately, colleges and universities today largely
 take
 the attitude that if you choose a good algorithm, you don't have to
 worry
 about the implementation of that algorithm. Far too many students
 come out
 of their data structures and algorithms courses with the attitude
 that if you
 can only achieve a constant (that is, O(1)) performance improvement,
 you've
 really achieved nothing at all, and that attempts at improvement are
 a
 waste of time.</p>

<p>Advances in computer architecture have exacerbated this problem -
 for
 example, you might hear a programmer say, &quot;If this program needs
 to be a
 little faster, just wait a year or so and CPUs will be twice as fast;
 there's no need to worry about it.&quot; And this attitude, probably
 more
 than any other, is why software performance doesn't keep pace with
 CPU
 performance.</p>

<p>With every new application, the programmer writes the software
 slower
 than it ought to run, on whatever current CPU they're using,
 believing that
 future CPU performance boosts will solve their problems. Of course,
 by the
 time the CPUs are fast enough to execute their software, the
 programmer has
 &quot;enhanced&quot; the software, and is now depending on yet
 another future
 version of the CPU. The cycle repeats almost endlessly, with CPU
 performance
 never really catching up with the demands of the software, until
 finally, the
 software's life comes to an end and the programmer begins the cycle
 anew
 with a different application.</p>

<p>The truth is, it is possible to write software that executes
 efficiently
 on contemporary processors. Programmers were doing great things with
 software back in the days when their applications were running on
 eight-bit
 5MHz 8088 PCs (or even further back on sub-megaherz mainframe
 processors);
 the same techniques they used to squeeze every last bit of
 performance out of
 those low-end CPUs provides the key to high-performance applications
 today.
 So, how did they achieve reasonable performance on such low-end
 processors?
 The answer is not a secret - they understood how the underlying
 hardware
 operated and they wrote their code accordingly. That same knowledge,
 of the
 underlying hardware, is the key to writing efficient software today.
 </p>

<p>Often, you'll hear old-time programmers make the comment that
 truly
 efficient software is written in assembly language. However, the
 reason
 such software is efficient isn't because the implementation language
 imparts some magical efficiency properties to that software - it's
 perfectly possible to write inefficient software in assembly
 language. No,
 the real reason assembly language programs tend to be more efficient
 than
 programs written in other languages is because assembly language
 forces the
 programmer to consider how the underlying hardware operates with each
 machine instruction they write. And this is the key to learning how
 to
 write efficient code - keeping one's eye on the low-level
 capabilities of
 the machine.</p>

<p>Those same old-time programmers who claim that truly efficient
 software
 is written in assembly language also offer another common piece of
 advice -
 if you want to learn how to write great high-level language code,
 learn how
 to program in assembly language.</p>

<p>This is very good advice. After all, high-level compilers translate
 their
 high-level source statements into low-level machine code. So if you
 know
 assembly language for your particular machine, you'll be able to
 correlate
 high-level language constructs with the machine language sequences
 that a
 compiler generates. And with this understanding, you'll be able to
 choose
 better high-level language statements based on your understanding of
 how
 compilers translate those statements into machine code.</p>

<p>All too often, high-level language programmers pick certain
 high-level
 language sequences without any knowledge of the execution costs of
 those
 statements. Learning assembly language forces the programmer to learn
 the
 costs associated with various high-level constructs. So even if the
 programmer never actually writes applications in assembly language,
 the
 knowledge makes the programmer aware of the problems with certain
 inefficient sequences so they can avoid them in their high-level
 code.</p>

<p>Learning assembly language, like learning any new programming
 language,
 requires considerable effort. The problem is that assembly language
 itself is
 deceptively simple. You can learn the 20 or 30 machine instructions
 found
 in common assembly applications in just a few days. You can even
 learn how
 to put those machine instructions together to solve problems the
 same way
 you'd solve those same problems in a high-level language in just a
 few
 short weeks.</p>

<p>Unfortunately, this isn't the kind of knowledge that a high-level
 language programmer will find useful when attempting to write
 efficient
 high-level code. To reap the benefits of knowing assembly language,
 a
 programmer has to learn to think in assembly language. Then, such a
 programmer can write very efficient high-level language code while
 thinking
 in assembly and writing high-level language statements. Though code
 written
 in this manner is truly great, there is one slight problem with this
 approach - it takes considerable effort to achieve this level. That's
 one
 of the reasons such code is great - because so few practitioners are
 capable of producing it.</p>

/HTML

         HTMLDEF HYDE.UK5
<!-- UK -->
<h2><a name="chap05" id="chap05">
 Assembly Isn't Dead</a></h2>

<p>Assembly language, of course, developed a very bad reputation
 throughout
 the 1990s. Advances in compiler technology, improved CPU performance,
 and
 the &quot;software crisis&quot; all conspired to suggest that
 assembly
 language was a &quot;dead&quot; language that was no longer needed.
 As
 assembly language was a bit more difficult to learn than traditional
 high-level programming languages, students (and instructors!) gladly
 embraced
 this brave new high-level world, abandoning difficult-to-learn
 assembly in
 favor of higher and higher level languages.</p>

<p>The only problem with the demise of assembly language is that as
 its
 popularity waned, so did the percentage of programmers who understood
 the
 low-level ramifications of the code they were writing. Those
 programmers
 who were claiming that assembly language was dead already knew how
 to think
 in assembly language and how to apply that low-level thinking to
 their
 high-level code; in effect, enjoying the benefits of assembly
 language
 while writing high-level language code. However, as new programmers
 worked
 their way into the system, without the benefits of having written
 several
 applications in assembly, the efficiency of software applications
 began to
 decline.</p>

<p>Though it would be foolish to start claiming that programmers
 should
 begin writing commercial applications in assembly language, it is
 clear
 today that the demise of assembly language's popularity has had a
 big
 impact on the efficiency of modern software. To reverse this trend,
 one of
 two things must happen: programmers must once again begin studying
 assembly
 language, or they must somehow pick up this low-level programming
 knowledge
 some other way.</p>

<p>Learning assembly language still remains the best way to learn the
 basic
 organization of the underlying machine. Those programmers who take
 the
 effort to master assembly language become some of the very best
 high-level
 language programmers around. Their ability to choose appropriate
 high-level
 constructs to produce efficient code, their ability to read
 disassembled
 high-level language code and detect heinous bugs in a system, and
 their
 understanding of how the whole system operates elevates them to near
 legendary status among their peers. These are the programmers
 everyone goes
 to when they have questions how to implement something. These are
 the
 engineers who garner the respect of everyone around them. They are
 the ones
 other programmers want to emulate. These are the programmers who
 write
 great code.</p>

<p>If knowing assembly language helps make programmers great, an
 obvious
 question is &quot;Why don't more programmers learn assembly
 language?&quot;
 Part of the problem is prejudice: many college and university
 instructors
 that teach assembly programming begin their course with a statement
 like,
 &quot;No one really needs to know this stuff, and you'll never use
 it, but
 it is required by this program so we've got to struggle through the
 next
 several weeks studying this material.&quot; After four years of this
 type
 of attitude from their instructors, it's no surprise that students
 really
 want nothing whatsoever at all to do with assembly language
 programming.</p>

<p>Still, once it becomes obvious to a coder that the truly great
 programmers are the ones who've mastered assembly language
 programming, you
 might ask why more programmers don't pick up this valuable knowledge.
 The
 only problem is that, traditionally, most programmers have found it
 difficult to master assembly language. Assembly is radically
 different than
 most high-level languages, so learning assembly language is almost as
 much
 work as learning programming from scratch.</p>

<p>To someone attempting to learn assembly, it often seems as though
 none of
 their past programming experience is of any help. All too often, an
 engineer learning assembly becomes frustrated with the fact that they
 know
 how to achieve a goal in a high-level language but they cannot
 figure out
 how to achieve the same thing in assembly. For many programmers,
 switching
 from &quot;thinking in a high-level language&quot; to &quot;thinking
 in an
 assembly language&quot; becomes an insurmountable problem.</p>

<p>As an instructor teaching assembly language for over a decade at
 the
 University of California, I was quite aware of the problems students
 have
 making the transition from the high-level programming paradigm to the
 low-level programming paradigm.</p>

<p>In the early 1990s, Microsoft provided a solution with the
 introduction
 of the Microsoft Macro Assembler (MASM) v6.0 - the inclusion of
 high-level
 control structures in an assembly language translator. While these
 new
 statements are definitely not true assembly language, they do provide
 a
 nice transition path from traditional, imperative, high-level
 programming
 languages to assembly. A programmer can continue to use statements
 like IF,
 WHILE, and FOR while learning other aspects of assembly language
 programs.
 This lets the programmer learn assembly language programming in
 graduated
 steps rather than having to make the plunge all at once.</p>

<p>Equally, for IBM's High-Level Assembler (HLASM) various macro
 libraries
 that implement the same functionality have been around for many
 years.</p>

/HTML

         HTMLDEF HYDE.UK6
<!-- UK -->
<h2><a name="chap06" id="chap06">
 Master Low-Level Statements</a></h2>

<p>Of course, a programmer cannot truly call themselves an assembly
 language
 programmer until they've mastered the equivalent low-level
 statements.
 Nevertheless, these high-level control structures provide an
 excellent
 bridge between high-level languages and assembly language, allowing
 the
 student to leverage their existing high-level programming knowledge
 to
 learn assembly language. Alas, there are few, if any, appropriate
 textbooks
 that teach assembly language programming using this high-level to
 low-level
 approach using the high-level control structures that MASM
 (or HLASM)
 provides.</p>

<p>Another problem with the high-level to low-level transition is that
 most
 high-level languages provide large libraries of routines to handle
 mundane
 tasks such as input/output, numeric conversions, and string
 operations. A
 big problem that beginning assembly programmers face is that they
 typically
 need the ability to input and output numeric quantities or do
 numeric-to-string conversions (and vice versa) in order to write and
 test
 very simple programs. Unfortunately, most assembly language
 development
 systems leave it up to the programmer to provide this functionality
 for
 their applications. This presents a Catch-22 situation: it is
 difficult to
 learn assembly language without these functions, but you can't
 really write
 such functions until you learn assembly language.</p>

<p class="remark">Remark:<br />
 HLASM provides a large number of standard macro's for doing I/O.
 For numeric conversions, various instructions are supported, giving
 HLASM-students an advantage over MASM-students.</p>

<p>These roadblocks effectively prevent all but the most determined
 programmers from mastering assembly language. As such, throughout
 the 1990s
 and early 2000s the use of assembly language continued to wane.
 Seeing the
 decline in software efficiency and quality that seemed to track the
 decline
 of the use of assembly language, I set out on a crusade in the
 mid-1990s to
 encourage programmers to learn assembly language programming.</p>

<p>The first milestone I achieved was the release in the mid-1990s of
 the
 electronic edition of The Art of Assembly Language. This book, along
 with
 the use of the accompanying UCR Standard Library for 80x86 Language
 Programmers, reduced the effort needed to learn assembly language
 programming. Tens of thousands of programmers have learned assembly
 language programming using this textbook and the complementary set of
 library routines.</p>

<p>The only problem with the electronic edition of The Art of Assembly
 Language and the UCR Standard Library for 80x86 Assembly Language
 Programmers is that they were almost obsolete as soon as they
 appeared on
 the Internet because they taught the reader how to create 16-bit
 DOS
 applications (their release almost corresponded with the release of
 Windows
 95, which was one of the last nails in the 16-bit programming
 coffin).</p>

<p>Still on the crusade, I started to work on a brand-new, high-level
 assembler (HLA, the High-Level Assembler), a new version of The Art
 of
 Assembly Language, and a new, 32-bit, HLA-based set of library
 routines.
 This effort culminated with the release of the published edition of
 The Art
 of Assembly (AoA) in 2003. To date, thousands and thousands of
 programmers
 have enthusiastically embraced this new way of learning assembly
 language
 using AoA, HLA, and the HLA Standard Library.</p>

<p>Though The Art of Assembly Language and HLA are increasing the
 ranks of
 assembly language programmers every day, the solution they provide
 is for
 the next generation of programmers.</p>

<p>What about current programmers who've missed the opportunity to
 learn
 assembly language while in school and master the concepts of
 machine
 organization before the realities of project schedules rob them of
 the time
 needed to develop the necessary expertise to write great code? The
 question
 is, &quot;Can machine organization be effectively taught to
 professional
 programmers without simultaneously teaching assembly
 language?&quot;</p>

<p>While it is fairly clear that learning assembly language is the
 best
 advice I can give anyone who is interested in writing great,
 efficient
 code, I am also convinced that someone can study the subject of
 machine
 organization sans assembly and still learn how to write better code.
 Perhaps their code won't be quite as good as the programmer who
 has
 mastered assembly language, but it will be better than the software
 they've
 written devoid of this knowledge.</p>

<p>Most importantly, while it is difficult to sell the idea of
 learning
 assembly language to the current generation of programmers (two
 decades
 of anti-assembly propaganda have assured this), most programmers
 realize
 that if they just &quot;learned a little more about how the
 underlying
 hardware works&quot; they would be able to write better code. So what
 is
 needed is a set of materials that teach data representation, memory
 organization, elements of computer architecture, how input/output
 operates,
 and the correspondence between high-level programming language
 statements.</p>

<p>That is, teach them all the things that they'd have to learn when
 learning assembly language, with the single exception of mastering
 the
 assembly language programming paradigm. Recently, I've begun to
 focus on
 this group, working on books like Write Great Code, Volume One:
 Understanding the Machine, a book on machine organization that
 doesn't
 specifically teach assembly language programming. While someone
 studying
 machine organization might not write code as great as someone who
 takes the
 time to master assembly language, my hope is that those who would
 never
 consider learning assembly language might be willing to pick up a
 book like
 Write Great Code and learn to write better code, if not totally
 great
 code.</p>

/HTML

         HTMLDEF HYDE.UK7
<!-- UK -->
<h2><a name="chap07" id="chap07">
 Conclusion</a></h2>

<p>To write great code requires one to write efficient code. Writing
 efficient code requires good algorithm choices and a good
 implementation of
 those algorithms. The best implementations are going to be written
 by those
 who've mastered assembly language or fully understand the low-level
 implementation of the high-level language statements they're
 choosing. This
 doesn't mean that we'll return to the days when major commercial
 applications were written entirely in assembly language. However,
 to
 reverse the trend of software running slower and slower even though
 CPUs
 are running faster and faster is going to require programmers to
 begin
 considering the low-level implications of the code that they write.
</p>

<p>So, even if you never intend to write a single line of assembly
 language
 code again, learning assembly language, and learning to think in
 assembly
 language, is one of the best things you can do to learn how to write
 better
 assembly code.</p>

<p class="remark"><a name="note01" id="note01">Note 1:</a><br />
 Moore's Law states that semiconductor technology doubles in capacity
 or performance at a given price point about every 18 months.<br />
 Moore's law says nothing about performance. It only states that the
 number of
 transistors doubles every two years. One artifact of the progressions
 of
 Moore's law has been that performance has, until recently, been
 keeping
 pace.</p>

<p class="remark">About the Author:<br />
 Randall Hyde is the author of the recently released &quot;Write Great
 Code&quot; and &quot;The Art of Assembly Language&quot; (both from
 No Starch
 Press), one of the most highly recommended resources on assembly
 language for
 Intel-type processors. For HLASM and mainframe processors comparable
 other
 resources exist.</p>

/HTML

         HTMLDEF HYDE.UKL
<!-- UK -->
<p>
 To <a href="#chap01">Great Code Goes Beyond the Ordinary</a>.<br />
 To <a href="#chap02">Efficiency Is the Key</a>.<br />
 To <a href="#chap03">Practice Your Skills</a>.<br />
 To <a href="#chap04">Learn Assembly Language</a>.<br />
 To <a href="#chap05">Assembly Isn't Dead</a>.<br />
 To <a href="#chap06">Master Low-Level Statements</a>.<br />
 To <a href="#chap07">Conclusion</a>.
</p>

/HTML

         HTMLDEF HYDE.UKF
<!-- UK -->
<p class="footer" align="center">
 This text was written by Randall Hyde<br/>
 &copy; Copyright: Randall Hyde, 2004. All rights reserved.<br />
 <a href="mailto:rhyde@cs.ucr.edu">e-mail</a> the author.</p>

/HTML

         HTMLDEF HYDE.NLH
<!-- NL -->
<!-- -->
<!-- Gekopieerd van http://www.bixoft.nl/hollands/hyde.htm -->
<!-- -->
<title>Waarom het leren van assembler nog steeds een goed idee is
</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<meta http-equiv="keywords"
      content="Assembler, Programmeren, Mainframe" />
<meta http-equiv="description"
      content="HLASM pagina over de voordelen van assembler-kennis." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF HYDE.NLT
<!-- NL -->
<h1 align="center">
 Waarom het leren van Assembler nog steeds een goed idee is.</h1>

<p class="header" align="center">Randall Hyde, 6 mei 2004.</p>

<p class="remark">
 Opmerking:<br />
 Het artikel hieronder is oorspronkelijk geschreven met Intel-type
 processoren
 in gedachte, en refereerde aan de daarbij behorende assembler-taal.
 Maar
 aangezien de argumenten die de auteur hanteert ook voor mainframes
 opgeld
 doen, vinden wij het relevant genoeg om dit artikel ook op de
 hlasm.com
 site te publiceren.</p>

<p class="remark">
 Opmerking:<br />
 Bixoft heeft "Why Learning Assembly Language Is Still a Good Idea"
 met
 toestemming van de auteur omgezet in een web-document voor
 her-publicatie.
 Daarenboven hebben wij enige kleine wijzigingen aangebracht.
 Desalniettemin
 zijn de auteursrechten van de heer Hyde onverkort van toepassing op
 dit
 document.</p>

<p class="remark">
 Contact:<br />
 Dhr. Hyde ontvangt graag uw commentaar, opmerkingen, etc.
 <a href="mailto:rhyde@cs.ucr.edu">e-mail Randall Hyde</a>.
 Wel graag in het engels.<br />
 Als u liever reageert in het nederlands,
 <a href="mailto:bixoft@bixoft.nl">e-mail Bixoft</a>.</p>

<p>Dit document bevat de volgende hoofdstukken:</p>
<ul>
 <li><a href="#chap01">Uitmuntende code gaat voorbij het
  gebruikelijke</a></li>
 <li><a href="#chap02">Effici&euml;ntie is de sleutel</a></li>
 <li><a href="#chap03">Oefen je vaardigheden</a></li>
 <li><a href="#chap04">Leer Assembler</a></li>
 <li><a href="#chap05">Assembly is niet dood</a></li>
 <li><a href="#chap06">Beheers de Low-Level Statements</a></li>
 <li><a href="#chap07">Conclusie</a></li>
</ul>

/HTML

         HTMLDEF HYDE.NL1
<!-- NL -->
<h2><a name="chap01" id="chap01">
 Uitmuntende code gaat voorbij het gebruikelijke</a></h2>

<p>De wereld is vervuld van rapporten over rampen op het gebied van
 software
 engineering. Bijna elke programmeur heeft wel eens moeten werken aan
 een
 project met &quot;niet zo geweldige&quot; broncode die moeilijk te
 lezen en
 te onderhouden was. In zeldzame gevallen krijgen sommige programmeurs
 de
 gelegenheid te werken aan een goed ontworpen systeem, een produkt van
 puur
 vakmanschap dat ontzag inboezemt en niet zelden aanleiding geeft tot
 de
 uitroep: &quot;Dit is waarlijk uitmuntende code!&quot;</p>

<p>Het is duidelijk dat professionele software engineers in al hun
 code dit
 niveau van uitmuntendheid zouden moeten nastreven. De ware vraag is
 echter:
 &quot;Wat maakt code uitmuntend&quot;? Eenvoudigweg &quot;voldoen aan
 de
 specificaties&quot; is niet voldoende om uitmuntende code te
 schrijven.
 Toegegeven, in de huidige software-industrie zou je kunnen menen dat
 eenvoudigweg voldoen aan de specificaties al heel bijzonder is voor
 een
 applicatie, omdat veel projecten er niet in slagen te voldoen aan de
 basis-doelstellingen uit het ontwerp.</p>

<p>Op andere gebieden echter, wordt uitmuntendheid zelden gedefinieerd
 als
 er in slagen om te doen wat er verwacht wordt; uitmuntendheid wordt
 juist
 gedefinieerd als het voorbijstreven van de verwachtingen en er boven
 uit
 stijgen. Software engineers dienen niets minder te verwachten van
 uitmuntende code - deze dient de standaard conventies voor de
 ontwikkeling
 van software verre te overstijgen.</p>

/HTML

         HTMLDEF HYDE.NL2
<!-- NL -->
<h2><a name="chap02" id="chap02">
 Effici&euml;ntie is de sleutel</a></h2>

<p>Omdat uitmuntendheid vele aspecten kent, kan een kort artikel als
 dit nog
 niet beginnen om alle mogelijke componenten van een uitmuntend stuk
 software
 te beschrijven. In plaats daarvan zal dit artikel zich concentreren
 op
 &eacute;&eacute;n component van het schrijven van uitmuntende
 software
 dat de afgelopen jaren verwaarloosd is doordat computers steeds
 verder
 groeiden in kracht en capaciteit: effici&euml;ntie.</p>

<p>Een ieder die al tien jaar of meer met computers te maken heeft is
 zich
 ten zeerste bewust van het fenomeen dat de machines exponentieel
 krachtiger
 worden per Euro, terwijl de gebruikers deze verbetering niet
 waarnemen in
 het gedrag van de applicaties die zij aanschaffen. Tekstverwerkers
 bijvoorbeeld, zijn vandaag-de-dag weliswaar duidelijk sneller dan 21
 jaar
 geleden, maar niet 16.384 keer, zoals de Wet van Moore
 <a href="#note01">[1]</a> zou doen verwachten. Onderdeel van het
 probleem is
 natuurlijk dat een deel van de toegenomen verwerkingskracht gebruikt
 wordt
 om nieuwe voorzieningen te ondersteunen (zoals bitmapped schermen).
 Maar de
 belangrijkste reden waarom software gebruikers geen snelheidstoename
 waarnemen, is dat veel programmeurs niet meer de tijd nemen om
 effici&euml;nte software te schrijven, of ze weten domweg niet hoe
 zij
 snelle software moeten schrijven.</p>

<p>Onhaalbare opleverdata voor te ontwikkelen software, waardoor
 programmeurs
 niet genoeg tijd hebben om effici&euml;nte code te ontwikkelen, zijn
 zeker
 een deel van het probleem, maar vele van de huidige programmeurs zijn
 opgegroeid met snelle processoren, wier snelheid veel goed maakte van
 allerlei slechte codeer-technieken. Zodoende hebben veel van deze
 programmeurs nooit hoeven leren hoe zij snelle code kunnen
 ontwikkelen.</p>

<p>Helaas weten deze programmeurs in het algemeen niet hoe zij
 problemen met
 hun software moeten oplossen, wanneer de prestaties van de software
 niet
 optimaal zijn. Vaak kramen zij dan dingen uit als &quot;De 90-10
 regel&quot;,
 of &quot;Ik zal even een profiler gebruiken om de prestatie-problemen
 te
 corrigeren&quot;, maar in feite weten ze niet echt hoe ze de
 prestaties van
 hun onderpresterende applicaties moeten verbeteren. Het is allemaal
 leuk en
 aardig om te zeggen &quot;ik ga op zoek naar een beter algoritme!
 &quot;,
 maar dat algoritme - als er al een bestaat - te vinden en te
 implementeren is
 een totaal andere zaak.</p>

<p>Meestal kun je een hele goede prestatie-verbetering bereiken door
 eenvoudigweg de implementatie van een bestaand algoritme te
 verbeteren.
 Een wetenschapper kan dan wel beargumenteren dat een &quot;
 constante&quot;
 verbetering minder goed is dan bijvoorbeeld een overstap van een
 algoritme
 met O(n^2) prestaties naar een met O(n log(n) ) prestaties, maar in
 de
 praktijk kan een verbetering met een constante factor twee of drie,
 doorgevoerd voor een compleet stuk software, het verschil maken
 tussen
 een bruikbare applicatie en een die gewoon te traag is om er
 plezierig mee
 te kunnen werken. En het is nou net dit soort optimalisatie waarmee
 de meeste
 moderne programmeurs zo bitter weinig ervaring hebben.</p>

<p>Jammer genoeg is het schrijven van effici&euml;nte software een
 vaardigheid; een die geoefend moet worden om haar te leren en die
 geoefend
 moet worden om haar te onderhouden. Programmeurs die deze vaardigheid
 nooit
 oefenen zullen haar onmogelijk kunnen inzetten op de dag dat zij
 ontdekken
 dat hun applicatie te traag is. Zelfs wanneer een programmeur de
 vaardigheid
 eenmaal heeft opgebouwd om effici&euml;nte software te schrijven, dan
 nog
 moet die programmeur deze vaardigheid regelmatig oefenen om die
 vaardigheid
 te behouden. Zodoende zijn er twee redenen waarom programmeurs
 vandaag de dag
 geen effici&euml;nte (en uitmuntende) code schrijven: ze hebben
 allereerst
 nooit geleerd hoe ze effici&euml;nte code kunnen schrijven, of zij
 hebben
 hun vaardigheid op dit punt laten atrofi&euml;ren tot op het punt
 waarop zij
 als vanzelfsprekend geen effici&euml;nte code meer schrijven.</p>

/HTML

         HTMLDEF HYDE.NL3
<!-- NL -->
<h2><a name="chap03" id="chap03">
 Oefen je vaardigheden</a></h2>

<p>Voor programmeurs die hun vaardigheden hebben laten verwateren door
 gebrek
 aan oefening is de oplossing overduidelijk: oefen je in het schrijven
 van
 effici&euml;nte code, zelfs als dat voor het project niet per se
 nodig is.
 Dit betekent natuurlijk niet dat een oefenende programmeur
 belangrijke zaken
 als opleverdata, leesbare en onderhoudbare code, etc. zou moeten
 opofferen
 aan de effici&euml;ntie van zijn code.</p>

<p>Wat het wel betekent, is dat de programmeur de effici&euml;ntie in
 het oog
 moet houden als hij/zij de software aan het ontwerpen en
 implementeren is.
 De programmeur dient een bewuste beslissing te nemen wanneer hij/zij
 een
 minder effici&euml;nte implementatie verkiest boven een meer
 effici&euml;nte.
 Deze keuze dient gebaseerd te zijn op economische of technische
 overwegingen,
 in plaats van het eerste het beste wat opkomt maar te implementeren.
 In veel gevallen is deze simpele afweging van verschillende
 (en mogelijk meer
 effici&euml;nte) implementaties alles wat nodig is om uitmuntende
 code te
 produceren. Uiteindelijk is het schrijven van de effici&euml;ntere
 implementatie vaak niet eens moeilijker dan het schrijven van de
 minder
 effici&euml;ntere. Alles wat een ervaren programmeur nodig heeft zijn
 een
 aantal alternatieven om uit te kiezen.</p>

<p>Helaas hebben onrealistische planningen voor software ontwikkeling
 vele
 professionele ontwikkelaars ertoe verleid om de zorgvuldige
 afwegingen in
 de ontwikkeling en implementatie van de software over te slaan.
 Het
 gevolg is, dat vele professionele programmeurs de gewoonte om
 uitmuntende
 code te schrijven hebben opgegeven. Gelukkig is dit proces eenvoudig
 om te
 keren door zo vaak als mogelijk goede methodologie&euml;n voor
 software
 ontwikkeling te hanteren, zoals het overwegen van verschillende
 algoritmen en
 hun alternatieve implementaties.</p>

/HTML

         HTMLDEF HYDE.NL4
<!-- NL -->
<h2><a name="chap04" id="chap04">
 Leer Assembler</a></h2>

<p>Maar hoe zit het dan met de programmeurs die &uuml;berhaupt nooit
 geleerd
 hebben om effici&euml;nte code te schrijven? Hoe leert men hoe men
 een
 applicatie effici&euml;nt implementeert? Helaas verbreiden
 universiteiten
 en hogescholen tegenwoordig in hoofdzaak het idee dat je je over de
 implementatie van een algoritme niet druk hoeft te maken, zolang je
 maar een
 goed algoritme kiest. Veel te veel studenten be&euml;indigen hun
 studie
 inzake data structuren en algoritmen met de houding dat het bereiken
 van een
 constante prestatie-verbetering (dat wil zeggen: O(1)) eigenlijk de
 moeite
 niet loont, en dat dit soort pogingen tot verbetering verspilling van
 tijd
 zijn.</p>

<p>De voortdurende vooruitgang in computer architectuur heeft dit
 probleem
 alleen maar verergerd. Je zou bijvoorbeeld een programmeur kunnen
 horen
 zeggen: &quot;Als dit programma een beetje sneller moet lopen, wacht
 dan maar
 een jaartje, dan zijn de processoren twee keer zo snel; er is dus
 geen
 reden om je zorgen te maken.&quot; Het is deze houding, wellicht nog
 meer dan
 enige andere reden, die maakt dat de prestaties van software geen
 gelijke
 tred houden met de prestaties van processoren.</p>

<p>In het volste vertrouwen dat toekomstige verbeteringen in de
 prestaties van
 processoren hun problemen zullen oplossen, schrijven zulke
 programmeurs
 steeds weer nieuwe applicaties die langzamer zijn dan nodig, ongeacht
 welke
 processor zij op dat moment gebruiken. Natuurlijk heeft de
 programmeur,
 tegen de tijd dat de processoren snel genoeg geworden zijn om deze
 programmatuur te kunnen draaien, alweer allerlei &quot;
 verbeteringen&quot;
 aangebracht in de software, die daardoor opnieuw afhankelijk is
 geworden van
 nog meer toekomstige verbeteringen in processor-prestaties. De
 cyclus
 herhaalt zich vrijwel eindeloos, doordat de processor-prestaties de
 toenemende capaciteitsvraag van de applicaties niet kunnen bijbenen,
 totdat
 uiteindelijk de levenscyclus van de software ten einde loopt en de
 programmeur de cyclus opnieuw opstart met een andere applicatie.</p>

<p>Feitelijk is het echter goed mogelijk om software te schrijven die
 effici&euml;nt draait op huidige processoren. Jaren terug deden
 programmeurs
 al geweldige dingen met software die draaide op acht-bit 5MHz 8088
 processoren (of nog langer geleden op sub-megahertz mainframe
 processoren).
 De technieken die zij toen gebruikten om de allerhoogste prestaties
 uit hun
 eenvoudige processoren te persen vormen vandaag ook de sleutel tot
 goed presterende applicaties. En hoe verkregen zij dan wel een
 redelijke
 prestatie uit zulke eenvoudige processoren? Het antwoord is geen
 geheim:
 zij begrepen hoe de onderliggende hardware werkte, en zij schreven
 hun
 software dienovereenkomstig. Diezelfde kennis van de onderliggende
 hardware
 is ook vandaag nog de sleutel tot het schrijven van effici&euml;nte
 software.</p>

<p>Van oudere programmeurs kun je vaak het commentaar horen dat
 waarlijk
 effici&euml;nte software geschreven wordt in assembler. Echter, de
 reden dat
 zulke software effici&euml;nt is, zit hem niet in het feit dat de
 taal van
 implementatie op magische wijze de software effici&euml;nt maakt -
 het is
 heel goed mogelijk om ineffici&euml;nte software te schrijven in
 assembler.
 Neen, de werkelijke reden waarom assembler programma's meer
 effici&euml;nt
 plegen te zijn is gelegen in de omstandigheid, dat de taal de
 programmeurs
 dwingt om bij elke instructie die zij schrijven na te gaan hoe de
 onderliggende hardware er mee om gaat. En dat is precies waar het om
 gaat als
 je wilt leren hoe je effici&euml;nte code kunt schrijven: de sterke
 en zwakke
 punten van de machine in de gaten houden.</p>

<p>Diezelfde oudere programmeurs die claimen dat waarlijk effici&euml;
 nte code
 geschreven is in assembler, hebben nog een waardevol advies: als je
 wilt
 leren hoe je uitmuntende code kunt schrijven in een hogere taal, leer
 dan
 eerst te programmeren in assembler.</p>

<p>Dit is een heel goed advies. Per slot van rekening vertalen
 compilers hun
 broncode van &quot;hoog niveau&quot; in &quot;laag niveau&quot;
 machine
 instructies. En als je de assembler-taal voor jouw specifieke
 machine kent,
 dan ben je dus ook in staat om de constructies in je hogere taal te
 relateren
 aan de instructies in machine-taal die de compiler genereert. En dan
 zul je
 beter in staat zijn om een keuze te maken uit de beschikbare
 constructies in
 je hogere taal, gebaseerd op je begrip van de wijze waarop compilers
 de hun
 aangeboden broncode vertalen in machine code.</p>

<p>Maar al te vaak kiezen programmeurs in een hogere taal bepaalde
 constructies in hun taal zonder te weten wat het kost om de
 betreffende
 statements uit te voeren. Bij het leren van assembler leert
 programmeur
 automatisch ook de kosten in te schatten van diverse constructies in
 hogere
 talen. Zelfs als de programmeur nimmer werkelijk applicaties schrijft
 in
 assembler, dan nog wordt de programmeur zich door deze kennis bewust
 van de
 problemen met bepaalde ineffici&euml;nte constructies in hogere talen,
 waardoor hij/zij deze kan vermijden in zijn/haar code.</p>

<p>Het leren van assembler vereist, net als het leren van elke andere
 programmeertaal, een behoorlijke inspanning. Het probleem hierbij is,
 dat
 de assembler-taal op zich verraderlijk eenvoudig is. De 20 tot 30
 machine
 instructies die je in een gewone assembler applicatie tegenkomt, kunt
 je in
 een paar dagen leren. Je kunt in een paar weken zelfs wel leren hoe
 je die
 instructies kunt gebruiken om problemen op te lossen op dezelfde
 manier als
 je die op zou lossen in een hogere taal.</p>

<p>Helaas is dit niet het soort kennis dat een hogere-taal programmeur
 nuttig
 vindt wanneer het er op aan komt om effici&euml;nte code te schrijven
 in een
 hogere taal. Om voordeel te halen uit assembler-kennis dient een
 programmeur
 leren om in assembler te denken. Dan kan zo'n programmeur zeer
 effici&euml;nte code schrijven in een hogere taal door in assembler
 te denken
 en in die hogere taal te schrijven. Hoewel op deze wijze geschreven
 programmatuur waarlijk uitzonderlijk is, kleeft er een klein
 probleempje aan
 deze benadering: het vergt een behoorlijke inspanning om dit niveau
 te
 bereiken. En dat is een van de redenen waarom dergelijke code
 uitzonderlijk
 is: omdat zo weinig beoefenaren in staat zijn om haar te produceren.
</p>

/HTML

         HTMLDEF HYDE.NL5
<!-- NL -->
<h2><a name="chap05" id="chap05">
 Assembly is niet dood</a></h2>

<p>In de loop van de jaren 90 van de vorige eeuw heeft assembler een
 slechte
 reputatie ontwikkeld. Vooruitgang in compiler technologie, verbeterde
 CPU
 prestaties, alsmede de &quot;software crisis&quot; droegen alle bij
 aan de
 beeldvorming dat assembler een &quot;dode taal&quot; was geworden,
 die
 nergens meer toe diende. Doordat assembler iets lastiger te leren is
 dan
 de traditionele hogere programmeertalen omarmden studenten (en
 leerkrachten!)
 maar al te graag dit nieuwe paradigma, waarbij zij de moeilijk te
 leren
 assembler-taal lieten voor wat het was ten faveure van steeds hogere
 en
 hogere talen.</p>

<p>Het enige probleem met de neergang van de assembler-taal is, dat
 met het
 verminderen van haar populariteit ook het percentage programmeurs
 afnam dat
 begreep welke gevolgen de code die zij schreven had op de lagere
 niveaus.
 De programmeurs die verkondigden dat assembler dood was, waren al in
 staat om
 in assembler te denken, en wisten hoe zij hun begrip voor de
 onderliggende
 zaken konden toepassen in hun hogere code. Zo genoten zij voordeel
 uit
 hun assembler-kennis bij het schrijven van hun code in hogere talen.
 Maar
 naarmate er meer nieuwe programmeurs kwamen die niet het voordeel
 hadden om
 ooit enkele applicaties in assembler te hebben geschreven, begon de
 effici&euml;ntie van software toepassingen af te nemen.</p>

<p>Hoewel het onzinnig zou zijn om te stellen dat programmeurs weer
 commerci&euml;le toepassingen zouden moeten schrijven in assembler,
 is het
 inmiddels wel duidelijk dat het in onbruik raken van de
 assembler-taal grote
 gevolgen heeft gehad voor de effici&euml;ntie van moderne software.
 Om deze
 trend te keren dienen programmeurs ofwel opnieuw beginnen met het
 aanleren
 van de assembler-taal, of zij moeten de benodigde kennis van
 onderliggende
 zaken op een andere manier verwerven.</p>

<p>Het leren van assembler is nog steeds de beste manier om de
 fundamentele
 organisatie, de architectuur, van de onderliggende machine te leren
 kennen.
 De programmeurs die de moeite nemen om de assembler-taal te leren
 beheersen
 worden vaak de toppers van de programmeurs die met hogere talen
 werken.
 Hun vermogen om de juiste constructies te kiezen in de hogere taal
 teneinde
 effici&euml;nte code te produceren, hun vermogen om
 gedisassembleerde
 hogere code te lezen en om geniepige bugs te ontdekken, alsmede hun
 begrip
 van de werking van het gehele systeem verheft hen tot welhaast
 legendarische
 status onder hun gelijken. Dit zijn de programmeurs waar eenieder
 naar toe
 gaat wanneer zij zich afvragen hoe iets te implementeren. Dit zijn
 de
 vakmensen ieders respect afdwingen. Dit zijn degenen die door anderen
 worden
 nagevolgd. Dit zijn de programmeurs die waarlijk uitmuntende code
 schrijven.</p>

<p>Als kennis van assembler programmeurs helpt om uitzonderlijk te
 worden,
 dan rijst een voor de hand liggende vraag: &quot;Waarom leren niet
 meer
 programmeurs de assembler-taal?&quot; Een deel van het probleem
 bestaat uit
 vooroordelen: veel leerkrachten aan hogescholen en universiteiten
 beginnen
 bij het geven van een assembler-cursus met een opmerking in de trant
 van
 &quot;Niemand hoeft dit echt te weten, en je zult het nooit gebruiken,
 maar het staat op het programma, en dus moeten we ons er maar
 doorheen zien
 te worstelen.&quot; Na vier jaar geconfronteerd te zijn met een
 dergelijke
 benadering door hun leerkrachten, is het niet verwonderlijk dat de
 studenten
 vervolgens werkelijk helemaal niets meer met programmeren in
 assembler te
 maken willen hebben.</p>

<p>En toch kun je je afvragen waarom niet meer programmeurs deze
 waardevolle
 kennis oppikken als het hun eenmaal duidelijk wordt dat de waarlijk
 uitmuntende programmeurs diegenen zijn, die de assembler-taal
 beheersen.
 Het voornaamste probleem is dat - traditioneel gezien - de meeste
 programmeurs het moeilijk vinden om assembler te leren. Assembler
 is
 radicaal anders dan de meeste hoger talen; daardoor is het leren van
 assembler bijna net zo veel werk als voor de eerste keer leren
 programmeren.</p>

<p>Voor iemand die assembler wil leren, lijkt het vaak alsof geen van
 de reeds
 eerder opgedane kennis en ervaring nog bruikbaar is. Maar al te vaak
 raakt
 een programmeur die assembler wil leren gefrustreerd over het feit
 dat
 hij/zij een bepaald doel moet bereiken in een hogere taal, maar er
 niet in
 slaagt te bedenken hoe datzelfde doel in assembler bereikt kan worden.
 Voor veel programmeurs blijkt het uiteindelijk een onoverkomelijk
 probleem
 om de omschakeling te maken van &quot;denken in een hogere taal&quot;
 naar
 &quot;denken in assembler&quot;.</p>

<p>Al meer dan tien jaar ben ik als docent assembler verbonden aan de
 Universiteit van Californi&euml;, en ik ben mij al die tijd bewust
 geweest van de
 problemen die studenten hebben om de overgang te maken van de hun
 bekende
 manier van programmeren in een hogere taal naar de werkwijze die
 verband
 houdt met programmeren op een lager niveau.</p>

<p>In de vroege 1990-er jaren kwam Microsoft met een oplossing in de
 vorm van
 Microsoft Macro Assembler (MASM) v6.0 - waarin ondersteuning was
 opgenomen
 voor structuur-elementen uit hogere talen in de assembler-omgeving.
 Hoewel
 deze nieuwe statements beslist niet tot de echte assembler behoren,
 verschaffen zij wel een vereenvoudigd overgangspad van traditionele,
 opdracht-geori&euml;nteerde, hogere programmeertalen naar assembler.
 Programmeurs kunnen bekende statements als IF, WHILE, en FOR gewoon
 blijven
 gebruiken terwijl zij andere aspecten van assembler programma's aan
 het leren
 zijn. Hierdoor kan de programmeur bij her leren programmeren in
 assembler
 kleinere stappen maken, en hoeft niet ineens in het diepe te springen.
</p>

<p>Ook voor IBM's High-Level Assembler (HLASM) zijn al heel lang
 verschillende
 macro bibliotheken beschikbaar, waarin dezelfde functionaliteit wordt
 ge&iuml;mplementeerd.</p>

/HTML

         HTMLDEF HYDE.NL6
<!-- NL -->
<h2><a name="chap06" id="chap06">
 Beheers de Low-Level Statements</a></h2>

<p>Vanzelfsprekend kunnen programmeurs zichzelf geen assembler
 programmeur
 noemen totdat zij de overeenkomstige low-level statements beheersen.
 Desalniettemin vormen deze structuur-elementen uit hogere talen een
 prima
 brug tussen de hogere talen en de assembler-taal, waardoor de
 studenten
 hun kennis van programmeren in hogere talen kunnen hergebruiken bij
 het
 leren van assembler. Helaas zijn er weinig tot geen studieboeken die
 het programmeren in assembler leren met behulp van deze benadering
 waarbij de hogere structuur-elementen die in MASM (en HLASM)
 tegenwoordig
 beschikbaar zijn.</p>

<p>Een ander probleem met de overgang van hogere talen naar de lagere
 niveaus
 is dat veel hogere talen grote bibliotheken leveren, met routines die
 allerlei
 taken kunnen uitvoeren, zoals input, output, conversies van getallen,
 en
 tekst-bewerkingen. Een groot probleem waar beginnende
 assembler-programmeurs
 mee geconfronteerd worden, is dat zij bij voorbeeld numerieke
 gegevens
 moeten kunnen in- of uitvoeren, dan wel dat zij numerieke gegevens
 moeten
 omzetten in tekstuele weergave (of andersom) om zelfs maar de meest
 eenvoudige programma's te kunnen schrijven en testen.
 Ongelukkigerwijze
 laten de meeste assembler ontwikkel-omgevingen het over aan de
 programmeur
 om deze basis-functionaliteit voor hun applicaties op te bouwen. Dit
 stelt
 ons voor een kip-ei probleem: het is moeilijk om assembler te leren
 zonder
 deze functies, maar je kunt zulke functies pas schrijven als je
 assembler
 geleerd hebt.</p>

<p class="remark">Opmerking:<br />
 HLASM beschikt standaard over een groot aantal macro's voor het
 plegen van
 I/O. Voor het converteren van getallen worden verscheidene
 instructies
 ondersteund. Dit verschaft HLASM-studenten een voordeel ten opzichte
 van
 MASM-studenten.</p>

<p>Alleen de meest vastberaden programmeurs slagen er in deze
 obstakels
 effectief te overwinnen en de assembler-taal te leren. Hierdoor is
 het
 gebruik van assembler gedurende de 1990-er jaren en de vroege jaren
 van de
 huidige eeuw blijven afnemen. Omdat ik zag hoe de vermindering van de
 effici&euml;ntie en kwaliteit van software volgde op het afnemend
 gebruik
 van assembler, begon halverwege de jaren 90 aan een kruistocht om
 programmeurs aan te moedigen om te leren programmeren in assembler.
</p>

<p>De eerste mijlpaal die ik bereikte was het uitbrengen, halverwege
 de jaren
 90, van de elektronische editie van &quot;The Art of Assembly
 Language&quot;.
 Dit boek, tezamen met de bijbehorende &quot;UCR Standard Library for
 80x86
 Language Programmers&quot; verminderde de moeite die het kostte om
 assembler
 te leren. Tienduizenden programmeurs hebben de assembler-taal geleerd
 aan de
 hand van dit boek en de bijbehorende bibliotheek met routines.</p>

<p>Het enige probleem met de elektronische editie van &quot;The Art
 of
 Assembly Language&quot; en de &quot;UCR Standard Library for 80x86
 Language Programmers&quot; was dat zij bij hun verschijning op het
 internet
 al bijna verouderd waren, omdat zij de lezer leerden om 16-bit DOS
 applicaties te schrijven. De uitgave viel bijna samen met het
 uitbrengen
 van windows 95, wat een van de laatste nagels was in de doodkist
 voor
 het 16-bits programmeren.</p>

<p>Nog steeds op kruistocht begon ik te werken aan een volkomen
 nieuwe
 assembler met hogere structuur-elementen (HLA, de High-Level
 Assembler),
 een nieuwe versie van &quot;The Art of Assembly Language&quot;, en
 een
 nieuwe 32-bits, HLA-gebaseerde verzameling routines. Deze
 inspanningen
 resulteerden in de uitgave van de geschreven editie &quot;The Art of
 Assembly&quot; (AoA) in 2003. Tot nu toe hebben duizenden en
 duizenden
 programmeurs deze nieuwe manier van assembler leren omarmd, gebruik
 makend van AoA, HLA, en de HLA Standaard Bibliotheek.</p>

<p>Hoewel &quot;The Art of Assembly Language&quot; en HLA dagelijks de
 rijen der assembler-programmeurs aanvullen, is de oplossing die zij
 bieden er een voor de volgende generatie programmeurs.</p>

<p>Maar hoe moet dat dan met programmeurs die de gelegenheid gemist
 hebben
 om tijdens hun opleiding assembler te leren en zich de concepten van
 machine-organisatie eigen te maken - voordat de harde realiteit van
 project-planningen hen berooft van de tijd die nodig is om de
 vereiste
 ervaring op te doen voor het schrijven van uitmuntende code? De vraag
 is &quot;kun je effectief machine-organisatie leren aan professionele
 programmeurs zonder tegelijkertijd de assembler-taal te
 onderwijzen?&quot;</p>

<p>Hoewel het redelijk duidelijk is dat assembler leren het beste
 advies is dat ik kan geven aan eenieder die ge&iuml;nteresseerd is
 in
 het schrijven van uitmuntende en effici&euml;nte code, ben ik er
 tevens
 van overtuigd dat men studie kan maken van machine-organisatie
 zonder
 assembler te leren, en daarbij toch te leren om betere code te
 schrijven.
 Wellicht zal dergelijke code minder goed zijn dan die van de
 programmeurs
 die zich wel assembler-kennis hebben eigen gemaakt, maar het zal beter
 zijn dan de software die zij geschreven zouden hebben zonder die
 kennis.</p>

<p>Hoewel het moeilijk is om het idee van assembler leren te verkopen
 aan
 de huidige generatie programmeurs (twintig jaar anti-assembler
 propaganda
 heeft daar wel voor gezorgd), is het heel belangrijk dat de meeste
 programmeurs zich realiseren dat zij betere code zouden kunnen
 schrijven
 als zij maar &quot;een beetje meer kennis hadden van de werking van
 de
 onderliggende hardware&quot;. Wat dus nodig is, is lesmateriaal om
 gegevens-weergave, geheugen-organisatie, elementen van computer
 architectuur, input/output te onderwijzen in samenhang met de
 statements in de hogere programmeertalen.</p>

<p>Dat wil zeggen: leer ze alle dingen die ze ook zouden opsteken als
 zij zouden leren programmeren in assembler, maar dan met uitzondering
 van het leren werken met de concepten van de assembler-taal.
 Recentelijk ben ik begonnen om specifiek voor deze groep boeken
 te schrijven zoals &quot;Write Great Code, Volume One: Understanding
 the Machine&quot;; een boek over machine-organisatie die niet
 specifiek
 ingaat op het programmeren in assembler. Hoewel iemand die studie
 maakt
 van machine-organisatie wellicht niet zulke geweldige code zal
 schrijven
 als iemand die de tijd neemt om zich het programmeren in assembler
 eigen te maken, is het mijn hoop dat diegenen die nooit zouden
 overwegen
 om assembler te leren, wel bereid zullen zijn om een boek als
 &quot;Write Great Code, Volume One: Understanding the Machine&quot;
 op te pakken en zo toch te leren om betere code te schrijven, zelfs
 als
 dat geen waarlijk uitmuntende code zal zijn.</p>

/HTML

         HTMLDEF HYDE.NL7
<!-- NL -->
<h2><a name="chap07" id="chap07">
 Conclusie</a></h2>

<p>Om uitmuntende code te schrijven moet je effici&euml;nte code
 schrijven.
 Om effici&euml;nte code te schrijven moet een goed algoritme kiezen
 en moet je dat algoritme goed implementeren. De beste implementaties
 zullen geschreven worden door hen die de assembler-taal beheersen of
 die de consequenties voor de lagere niveaus overzien voor de keuzes
 die zij maken in hun hogere programmeertaal. Dit betekent niet dat we
 terug zullen keren naar de dagen waarin grote commerci&euml;le
 applicaties volledig in assembler werden geschreven. Maar om de trend
 van software steeds langzamer lopende software op steeds snellere
 processoren tegen te gaan, zullen programmeurs moeten gaan overwegen
 welke gevolgen de code die zij schrijven zal hebben op de
 onderliggende
 niveaus.</p>

<p>Dus is het leren van de assembler-taal, en het denken in assembler,
 een van de beste dingen die je kunt doen als je betere code wilt gaan
 schrijven; zelfs je niet van plan bent om ooit nog een regel
 assembler-code te gaan schrijven.</p>

<p class="remark"><a name="note01" id="note01">Opmerking 1:</a><br />
 De wet van Moore stelt dat de semiconductor technologie de capaciteit
 of prestaties per prijs-eenheid elke 18 maanden verdubbelt.<br />
 De wet van Moore zegt niets over prestaties. Zij stelt slechts dat het
 aantal transistors elke twee jaar verdubbelt. Een gevolg van de
 vooruitgang inzake de wet van Moore is, dat tot op heden de prestaties
 gelijke tred hebben kunnen houden.</p>

<p class="remark">Over de auteur:<br />
 Randall Hyde is de auteur van de recentelijk verschenen boeken
 &quot;Write Great Code&quot; en &quot;The Art of Assembly
 Language&quot;
 (beide van &quot;No Starch Press&quot;). Beide hogelijk aanbevolen
 bronnen van informatie over assembler voor Intel-type processoren.
 Voor HLASM en mainframe processoren bestaan vergelijkbare bronnen.
</p>

/HTML

         HTMLDEF HYDE.NLL
<!-- NL -->
<p>
 Naar <a href="#chap01">Uitmuntende code gaat voorbij het
 gebruikelijke</a>.<br />
 Naar <a href="#chap02">Effici&euml;ntie is de sleutel</a>.<br />
 Naar <a href="#chap03">Oefen je vaardigheden</a>.<br />
 Naar <a href="#chap04">Leer Assembler</a>.<br />
 Naar <a href="#chap05">Assembly is niet dood</a>.<br />
 Naar <a href="#chap06">Beheers de Low-Level Statements</a>.<br />
 Naar <a href="#chap07">Conclusie</a>.
</p>

/HTML

         HTMLDEF HYDE.NLF
<!-- NL -->
<p class="footer" align="center">
 Deze tekst is geschreven door Randall Hyde,
 vertaald door A.F. Kornelis.<br/>
 &copy; Copyright: Randall Hyde, 2004. Alle rechten voorbehouden.
<br />
 Deze vertaling: &copy; Copyright: A.F. Kornelis, 2004.
 Alle rechten voorbehouden.<br />
 E-mail <a href="mailto:rhyde@cs.ucr.edu">de auteur</a>
 of <a href="mailto:abe@bixoft.nl">de vertaler</a>.</p>

/HTML

         HTMLDEF HYDE.DEH
<!-- DE -->
<!-- -->
<!-- Saved from http://www.bixoft.com/deutsch/hyde.htm -->
<!-- -->
<title>Warum es immer noch Sinn macht, Assembler zu lernen</title>
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe" />
<meta http-equiv="description"
      content="Warum es immer noch Sinn macht, Assembler zu lernen." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF HYDE.DET
<!-- UK -->
<h1 align="center">Warum es immer noch Sinn macht, Assembler zu lernen.
</h1>

<p class="header" align="center">Von Randall Hyde, 06 Mai 2004<br />
&uuml;bersetzt von Martin Tr&uuml;bner, Januar 2005.</p>

<p class="remark">
 Anmerkung:<br />
 Der nachfolgende Artikel wurde urspr&uuml;nglich geschrieben mit
 Intel-Type
 Prozessoren im Hinterkopf und meint eigentlich deren Assembler. Da
 die vom
 Autor pr&auml;sentierten Argumente auch auf den Mainframe zutreffen,
 dachten
 wir, dass es hilfreich ist, diesen Artikel auch auf hlasm.com zu
 ver&ouml;ffentlichen.</p>

<p class="remark">
 Disclaimer: (left on purpose in english):<br />
 Bixoft converted &quot;Why Learning Assembly Language Is Still a
 Good
 Idea&quot; into a web-document with permission of the original author
 for
 re-publication. We also applied several minor changes. Nevertheless,
 the
 copyrights of Mr. Hyde still apply to the document below.</p>

<p class="remark">Disclaimer:<br />
 Pi-Sysprog hat diesen Text aufgrund des von Bixoft als web-document
 pr&auml;sentierten Artikels &uuml;bersetzt. Kleinere
 &Uuml;bersetzungsfreiheiten sind m&ouml;glich. Nichtsdestotrotz: Das
 Copyright des Originals verbleibt bei Herrn Hyde. Das Copyright der
 deutschen
 &Uuml;bersetzung liegt gemeinsam bei Herrn Hyde und Herrn Tr&uuml;
 bner</p>

<p class="remark">
 Contact:<br />
 Mr. Hyde nimmt Ihre Kommentare, Anmerkungen etc. unter dieser E-Mail
 an:
 <a href="mailto:rhyde@cs.ucr.edu">e-mail Randall hyde</a>.</p>

<p>Dieser Artikel enth&auml;lt folgende Abschnitte:</p>
<ul>
 <li><a href="#chap01">Gro&szlig;artiger Code geht weiter</a></li>
 <li><a href="#chap02">Effizienz ist der Schl&uuml;ssel</a></li>
 <li><a href="#chap03">Bleiben Sie fit</a></li>
 <li><a href="#chap04">Lerne Sie Assembler</a></li>
 <li><a href="#chap05">Assembler ist nicht tot</a></li>
 <li><a href="#chap06">Basis-Instruktionen verstehen</a></li>
 <li><a href="#chap07">Zusammenfassung</a></li>
</ul>

/HTML

         HTMLDEF HYDE.DE1
<!-- DE -->
<h2>
 <a name="chap01" id="chap01">Gro&szlig;artiger Code geht weiter</a>
</h2>

<p>Die Welt ist voll von Fallstudien &uuml;ber
 Software-Entwicklungs-Desaster. Fast jeder Programmierer hat schon in
 Projekten gearbeitet, in denen er an &quot;nicht optimalem&quot;
 Quell-Code arbeiten musste. In seltenen F&auml;llen bekommen
 Programmierer die Gelegenheit, an gutem, ordentlich entworfenem und
 implementiertem Code zu arbeiten. Code, der nach allen Regeln der
 Kunst geschrieben ist und zu Ausrufen wie &quot;Das ist wirklich
 gro&szlig;artiger Code&quot; Anlass gibt.</p>

<p>Nat&uuml;rlich sollte jeder professionelle Softwareentwickler diese
 Qualit&auml;tsstufe in jedem Code anstreben. Aber die grundlegende
 Frage ist: &quot;Was macht Code gro&szlig;artig?&quot;. Einfach nur
 &quot;trifft die Spezifikationen&quot; ist es wahrscheinlich nicht.
 Sicher, in den heutigen Software-Entwicklungs-Umgebungen mag manch
 einer glauben, dass ein einfaches Erf&uuml;llen der Spezifikationen
 eine Anwendung hervorhebt, da viele Projekte bereits an dieser
 Basisforderung scheitern.</p>

<p>Jedenfalls wird in anderen Bereichen &quot;gro&szlig;artig&quot;
 selten durch das erwartete Handeln definiert:
 &quot;Gro&szlig;artigkeit&quot; ist definiert durch: &uuml;ber das
 &Uuml;bliche und Erwartete hinausgehen. Softwareentwickler sollten
 nicht weniger von &quot;gro&szlig;artiger&quot; Software erwarten -
 sie sollte &uuml;ber die Standardkonventionen hinausgehen.</p>

/HTML

         HTMLDEF HYDE.DE2
<!-- DE -->
<h2>
 <a name="chap02" id="chap02">Effizienz ist der Schl&uuml;ssel</a>
</h2>

<p>Die &quot;Gro&szlig;artigkeit&quot; hat viele Seiten, daher kann ein
 kurzer Artikel wie dieser nicht alle Komponenten von
 &quot;gro&szlig;artiger&quot; Software beschreiben. Stattdessen wird
 dieser Artikel eine Komponente dieser &quot;Gro&szlig;artigkeit&quot;
 beschreiben, die in den letzten Jahren vernachl&auml;ssigt wurde. Dies
 insbesondere, weil Computersysteme in ihrer Kapazit&auml;t und
 M&auml;chtigkeit enorm erweitert wurden: Effizienz</p>

<p>Jeder, der in der Computerbranche seit einer Dekade oder mehr aktiv
 ist, kennt das Ph&auml;nomen: Maschinen werden exponentiell zu ihren
 Kosten m&auml;chtiger, aber Endanwender sehen diese Verbesserungen in
 den Anwendungen, die sie nutzen, nicht. Zum Beispiel ist
 Textverarbeitung heute schneller als vor 21 Jahren, aber bei weitem
 nicht 16,384-mal so schnell wie Moore's Gesetz
 <a href="#note01">[1]</a> erwarten l&auml;sst. Teil des Problems ist
 nat&uuml;rlich, dass etwas von der zus&auml;tzlichen
 Verabeitungsgeschwindigkeit f&uuml;r neue Eigenschaften (z.B.
 bitorientierte Anzeige) genutzt wird, aber ein Gro&szlig;teil der
 Gr&uuml;nde, warum Softwarebenutzer keinen Geschwindigkeitszuwachs
 sehen, liegt daran, dass viele der heutigen Programmierer sich nicht
 die Zeit nehmen, effiziente Software zu schreiben, oder sie wissen
 einfach nicht, wie schnelle Software erstellt wird.</p>

<p>Kurze Softwareentwicklungenszeitr&auml;ume geben den Programmierern
 nicht genug Zeit, um effizienten Code zu entwickeln. Dies ist sicher
 ein Problem, aber viele der heutigen Programmierer sind aufgewachsen
 mit schnellen CPUs, deren Geschwindigkeit schlechte Kodiergewohnheiten
 ausb&uuml;gelt. Daher haben viele dieser Programmierer niemals lernen
 m&uuml;ssen, wie man schnellen Code schreibt.</p>

<p>Wenn die Softwareperformance suboptimal ist, wissen diese
 Programmierer ungl&uuml;cklicherweise im Allgemeinen nicht, wie sie
 das Problem mit ihrer Software beheben. Aussagen wie &quot;Die 90-10
 Regel&quot; oder &quot;Ich werde einen Profiler einsetzen, um das
 Performanceproblem zu beheben&quot; kann man h&ouml;ren- Aber die
 Wahrheit ist: Sie wissen nicht, wie sie die Performance ihrer
 Anwendung verbessern. Es ist leicht zu sagen &quot;Ich werde einen
 besseren Algorithmus einsetzen!&quot;. Schwierig wird es, ihn zu
 finden (wenn es denn einen gibt) und gar umzusetzen.
 .........korrekter</p>

<p>Meistens kann man sehr gute Performanceverbesserungen erzielen indem
 man die Umsetzung eines existierenden Algorithmus verbessert.
 Wissenschaftlich betrachtet mag man argumentieren, dass eine konstante
 Performanceverbesserung nicht so gut ist wie das Wechseln des
 Algorithmus A (z.B. von n hoch 2 Durchl&auml;ufen zu n lg n
 Durchl&auml;ufen), aber in Wahrheit kann eine konstante Verbesserung
 in einer gegebenen Software den Unterschied zwischen einer praktischen
 Anwendung und einer, die einfach zu langsam ist, um benutzt zu werden.
 Und es ist exakt diese Art der Optimierung mit der viele der heutigen
 Programmierer wenig Erfahrung haben.</p>

<p>Ungl&uuml;cklicherweise ist das Schreiben effizienter Software eine
 Fertigkeit, die man durch &Uuml;bung erwerben kann. Diese Fertigkeit
 muss man aber auch &uuml;ben, um sie zu erhalten. Programmierer die
 diese Fertigkeit nie ge&uuml;bt haben, werden niemals in der Lage
 sein, sie an dem Tag, an dem entdeckt wird, dass ihre Software zu
 langsam l&auml;uft, einzusetzen. Sogar ein Programmierer der diese
 F&auml;higkeit beherrscht, muss diese regelm&auml;&szlig;ig anwenden.
 Es gibt also zwei Gr&uuml;nde warum manche Programmierer keinen
 effizienten (und damit gro&szlig;artigen) Code schreiben: Sie haben es
 nie gelernt oder ihre Kenntnisse sind verk&uuml;mmert.</p>

/HTML

         HTMLDEF HYDE.DE3
<!-- DE -->
<h2><a name="chap03" id="chap03">Bleiben Sie fit</a></h2>

<p>F&uuml;r Programmierer die einfach nur vers&auml;umt haben, ihre
 F&auml;higkeit zu trainieren ist die L&ouml;sung einfach:
 &quot;&Uuml;be regelm&auml;&szlig;ig effizienten Code schreiben, auch
 wenn das Projekt nicht absolut erfordert&quot;. Dies hei&szlig;t
 nat&uuml;rlich nicht dass f&uuml;r &Uuml;bungen Projektpl&auml;ne,
 les- und pflegbarer Code oder andere wichtige Softwareattribute
 geopfert werden sollen.&nbsp;</p>

<p>Es hei&szlig;t dass der Entwickler beim Entwurf und bei der
 Umsetzung Effizienz im Hinterkopf behalten sollte. Der Entwickler
 sollte eine bewusste Entscheidung zwischen einer weniger effizienten
 Umsetzung und einer besseren Umsetzung basierend auf &ouml;konomischen
 und technischen Gr&uuml;nden treffen, statt die erste Implementation
 die zuf&auml;llig eingefallen ist zu nutzen. Genauso oft wie nicht ist
 diese einfache Entscheidung zwischen unterschiedlichen (und
 m&ouml;glicherweise effizienteren) Umsetzungen die Grundlage f&uuml;r
 gro&szlig;artigen Code. Schlie&szlig;lich ist oft die effizientere
 Umsetzung genauso leicht zu erstellen wie die uneffektive. Alles was
 ein erfahrener Entwickler manchmal ben&ouml;tigt sind Alternativen.
</p>

<p>Ungl&uuml;cklicherweise haben unrealistische Zeitpl&auml;ne viele
 Entwickler verf&uuml;hrt, die gr&uuml;ndliche Entwicklung und
 Umsetzung zu verk&uuml;rzen. Das Ergebnis ist das viele Entwickler
 nicht mehr gew&ouml;hnt sind gro&szlig;artigen Code zu schreiben. Zum
 Gl&uuml;ck kann dieser Vorgang leicht r&uuml;ckg&auml;ngig gemacht
 werden, indem man gute Softwareentwicklungsmethoden so oft als
 m&ouml;glich &uuml;bt, wie zum Beispiel das Ber&uuml;cksichtigen
 mehrerer Algorithmen.</p>

/HTML

         HTMLDEF HYDE.DE4
<!-- DE -->
<h2><a name="chap04" id="chap04">Lernen Sie Assembler</a></h2>

<p>Und was ist nun mit dem Entwickler der nie gelernt hat effizienten
 Code zu  schreiben? Wie lernt man effiziente Umsetzung einer
 Anwendung? Universit&auml;ten und Hochschulen haben den Standpunkt,
 dass wenn ein guter Algorithmus gew&auml;hlt wird, man sich nicht mehr
 &uuml;ber dessen Umsetzung den Kopf zerbrechen muss. Viel zu viele
 Studenten kommen aus ihren Datenstruktur- und Algorithmen-Kursen mit
 der Vorstellung, das wenn man nur eine konstante (das ist, O(1))
 Verbesserung erzielen kann, hat man nichts erreicht und jeder Versuch
 einer Verbesserung ist eine Zeitverschwendung.</p>

<p>Fortschritte in der Computer-Architektur haben diese Problem noch
 verst&auml;rkt - zum Beispiel mag man einen Programmierer h&ouml;ren,
 &quot;Wenn dieses Programm ein bisschen schneller sein soll, warte ein
 Jahr oder so und CPUs werden doppelt so schnell sein; es gibt keinen
 Grund sich Gedanken zu machen.&quot; Und diese Einstellung, mehr als
 jede andere, ist der Grund das Software-Performance nicht Schritt
 gehalten hat mit CPU-Performance.</p>

<p>Mit jeder neuen Anwendung schreibt der Programmierer die Software
 langsamer als sie sein sollte. Im festen Glauben das zuk&uuml;nftige
 CPU-Performance-Sch&uuml;be das Problem l&ouml;sen werden.
 Nat&uuml;rlich ist die Software, wenn die CPU dann schnell genug ist,
 &quot;erweitert&quot; und braucht eine weitere Version von Hardware.
 Der Zyklus wiederholt sich fast endlos, mit einer CPU-Performance die
 niemals wirklich aufholt zum Bedarf der Software, bis
 schlie&szlig;lich die Software zu Ihrem Nutzungsende kommt und der
 Entwickler den Zyklus mit einer neuen Anwendung wiederholt.</p>

<p>Die Wahrheit ist, es ist m&ouml;glich Software zu schreiben die
 effizient auf gebr&auml;uchlichen Prozessoren l&auml;uft.
 Programmierer haben gro&szlig;artige Dinge getan mit Software in den
 Tagen in denen ihre Anwendungen auf acht-bit 5MHz 8088 PCs (oder noch
 fr&uuml;her auf 0.01 Mips Mainframes); die gleiche Technik die damals
 genutzt wurde um auch das letzte Bisschen aus diesen CPUs zu quetschen
 enth&auml;lt die L&ouml;sung f&uuml;r exzellente Performance von
 heutigen Anwendungen. Wie also wurde befriedigende Performance aus
 diesen langsamen Prozessoren herausgeholt? Die Antwort ist kein
 Geheimnis - Man verstand wie die darunterliegende Hardware
 funktionierte und man schrieb den Code entsprechend. Diese Kenntnis
 der unterst&uuml;tzenden Hardware ist auch heute der Schl&uuml;ssel
 zum Schreiben effizienten Codes.</p>

<p>Oft h&ouml;rt man old-time Programmierer sagen das effiziente
 Software in Assembler geschrieben ist. Aber der Grund das solche
 Software effizient ist liegt nicht in irgendeiner magischen Effizienz
 die durch die Sprache der &nbsp;Umsetzung in die Software eingepflanzt
 wird - es ist sehr gut m&ouml;glich ineffiziente Software in Assembler
 zu schreiben. Nein der wahre Grund das Assembler-Programme tendenziell
 effektiver sind als Programme in anderen Sprachen ist weil Assembler
 den Programmiere zwingt mit jeder Anweisung, die er schreibt, zu
 ber&uuml;cksichtigen wie die darunterliegende Hardware funktioniert.
 Und das ist der Schl&uuml;ssel zum lernen wie effizienter Code
 geschrieben wird - Im Auge behalten wo die M&ouml;glichkeiten der
 Maschine liegen.</p>

<p>Die gleichen Old-timer, die behaupten das wirklich effiziente
 Software in Assembler geschrieben ist, haben einen weiteren Hinweis
 - Wenn man lernen m&ouml;chte gro&szlig;artigen Hochsprachen-Code zu
 schreiben, soll man programmieren in Assembler lernen.</p>

<p>Sehr guter Ratschlag. Schlie&szlig;lich &uuml;bersetzen
 Hochsprachen-Compiler die Hochsprachenanweisungen in Maschinen-Code.
 Wenn man also Assembler f&uuml;r spezielle Maschine kennt, kann man
 sich die Maschinensprache, die aus den Hochsprachenkonstrukten
 generiert wird, vorstellen. Mit dieser Vorstellung, kann man bessere
 Hochsprachenkonstrukte schreiben.</p>

<p>Viel zu oft w&auml;hlen Hochsprachenentwickler eine spezielle
 Instruktionsfolge ohne jedes Wissen der Ausf&uuml;hrungskosten dieser
 Instruktionen. Das Lernen von Assembler zwingt die Programmierer die
 Kosten, verbunden mit den verschiedenen Hochsprachekonstrukten, zu
 erkennen. Selbst wenn ein Entwickler niemals &nbsp;in Assembler
 programmieren wird, macht das Wissen bewusst welche Probleme mit
 bestimmten uneffektiven Instruktionsfolgen verbunden sind, und
 k&ouml;nnen somit vermieden werden in ihrem Hochsprachen-Code.</p>

<p>Das lernen von Assembler, wie jede neue Programmiersprache,
 erfordert erhebliche Anstrengungen. Das Problem ist das Assembler
 tr&uuml;gerisch einfach erscheint. Man kann die 20 oder 30
 Maschineninstruktionen, die in den meisten Assembler-Anwendungen
 genutzt werden, in ein paar Tagen lernen. In ein paar Wochen kann man
 sogar lernen diese Maschineninstruktionen so zu kombinieren, dass man
 die gleichen Probleme, die man in Hochsprachen gel&ouml;st hat,
 l&ouml;st.</p>

<p>Ungl&uuml;cklicherweise ist dies nicht die Art von Kenntnis, die ein
 Hochsprachenentwickler n&uuml;tzlich finden wird, um effizienten
 Hochsprachen-Code zu schreiben.<br />
 Um den Vorteil der Assemblerkenntnis zu nutzen, muss ein Entwickler
 lernen in Assembler zu denken. Dann kann ein solcher Programmierer
 sehr effizienten Hochsprachen-Code schreiben.</p>

<p>Obwohl so geschriebener Code wirklich gro&szlig;artig ist, gibt es
 ein kleines Problem mit dieser Vorgehensweise - Es braucht
 geh&ouml;rige Anstrengungen um diesen Zustand zu ereichen. Dies ist
 einer der Gr&uuml;nde warum solcher Code gro&szlig;artig ist - weil es
 so wenig Praktiker gibt die f&auml;hig sind ihn zu produzieren.</p>

/HTML

         HTMLDEF HYDE.DE5
<!-- DE -->
<h2><a name="chap05" id="chap05">Assembler ist nicht tot</a></h2>

<p>Assembler entwickelte einen sehr schlechten Ruf in den neunziger
 Jahren. Fortschritte im Compilerbau, schnellere CPUs und die
 &quot;Softwarekrise&quot; haben alle mitgewirkt an der Vorstellung das
 Assembler eine &quot;tote&quot; Sprache ist und man sie nicht
 l&auml;nger braucht. Weil Assembler ein bisschen schwerer zu lernen
 ist als normale Hochsprachen, Stundenten (und Lehrer) haben sich der
 sch&ouml;nen neuen Hochsprachenwelt hingegeben und aufgegeben diesen
 schwer zu lernenden Assembler zu vermitteln.</p>

<p>Das zentrale Problem mit dem Verschwinden von Assembler ist das
 immer weniger Programmierer die Folgen ihres Codes auf
 &nbsp;Maschinenlevel verstehen.<br />
 Die Programmierer die das Ende von Assembler verk&uuml;ndeten, dachten
 in Assembler und konnten dieses Denken beim Schreiben von
 Hochsprachen-Code nutzen. Aber mit der Ankunft neuer Programmierer,
 die nicht mehrere Anwendungen in Assembler geschrieben haben, begann
 sich die Effizienz der Software zu verringern.</p>

<p>Obwohl es dumm w&auml;re zu fordern das Programmierer kommerzielle
 Software in Assembler zu schreiben, ist es heute klar das die
 Verringerung der Kenntnis in Assembler umfangreiche Folgen hat
 f&uuml;r die Effizienz moderner Software. Um diesen Trend umzukehren
 muss eine von zwei Dingen passieren: Programmierer m&uuml;ssen wieder
 Assembler studieren, oder sie m&uuml;ssen diese low-level
 Programmierkenntnisse auf andere Art erwerben.</p>

<p>Das Lernen von Assembler bleibt die beste Methode die Struktur der
 darunterliegenden Maschine kennen zu lernen. Die Programmier die diese
 Anstrengung auf sich nehmen, werden die besten Hochsprachen
 Programmierer werden. Ihre F&auml;higkeit die entsprechenden
 Hochsprachenkonstrukte auszuw&auml;hlen um effizienten Code zu
 produzieren, ihre F&auml;higkeit disassemblierten Hochsprachen-Code zu
 lesen um den absonderlichste Fehler in einem System zu entdecken und
 ihr Verst&auml;ndnis des gesamten Systems erhebt sie zu ann&auml;hernd
 legend&auml;rem Status unter ihren Kollegen. Das sind die
 Programmierer die man aufsucht wenn Fragen auftreten wie etwas
 umzusetzen ist. Das sind die Ingenieure die den Respekt aller ernten.
 Das sind die Vorbilder von Entwicklern. Das sind die Programmierer die
 gro&szlig;artigen Code schreiben.</p>

<p>Wenn die Kenntnis von Assembler hilft einen Programmier
 gro&szlig;artig zu machen, ist eine offensichtliche Frage &quot;Warum
 lernen dann nicht mehr Programmierer Assembler?&quot; Ein Teil des
 Problems ist Voreingenommenheit: Viele Hochschul- und
 Universit&auml;tstrainer beginnen einen Assemblerkurs mit
 Spr&uuml;chen wie diesen: &quot;Niemand braucht dieses Zeugs
 eigentlich, und Sie werden es niemals benutzen, aber es ist
 Bestandteil dieses Programms. Also werden wir uns durch die
 n&auml;chsten Wochen abm&uuml;hen dieses Material zu studieren.&quot;
 Nach vier Jahren mit dieser Attitute vom Trainer ist es nicht
 verwunderlich wenn Studenten nichts mit zu tun haben wollen mit
 Assemblerprogrammierung.</p>

<p>Wenn es einmal f&uuml;r den Codierer offensichtlich geworden ist,
 dass wirklich gro&szlig;artige Programmierer die sind, die Assembler
 beherrschen, warum versuchen dann nicht mehr Programmierer diese
 wertvolle F&auml;higkeit zu erwerben. Das Problem ist das es viele
 Programmierer als schwer empfinden Assembler zu meistern. Assembler
 ist grunds&auml;tzlich unterschiedlich zu den meisten Hochsprachen.
 Das Lernen von Assembler ist daher fast wie das neue Lernen von
 Programmieren. </p>

<p>F&uuml;r jemanden der versucht Assembler zu lernen ist es oft so
 dass ihre bisherige Programmiererfahrung scheinbar nichts nutzt. Zu
 oft wird ein Lernender frustriert durch die Tatsache das man sehr wohl
 wei&szlig; wie das Ziel in einer Hochsprache zu erreichen ist, aber
 das selbe Ziel in Assembler erscheint unerreichbar. F&uuml;r viele
 Programmierer ist das umschalten vom Denken in Hochsprache zum Denken
 in Assembler ein un&uuml;berwindliches Hindernis.</p>

<p>Als Instruktor f&uuml;r Assembler f&uuml;r mehr als 10 Jahre an der
 University of California, bin ich mir bewusst &uuml;ber die Probleme
 der Studenten beim Umschalten von
 Hochsprachenprogrammierungs-paradigma zum
 Low-Level-Programmierungs-paradigma.</p>

<p>In den fr&uuml;hen 90er Jahren hat Microsoft mit der Einf&uuml;hrung
 des Microsoft Macro Assembler (MASM) v6.0 eine L&ouml;sung geboten -
 Die Einschlie&szlig;ung von Hochsprachen-Kontrol-Strukturen in eine
 Assembler-&Uuml;bersetzer. Wiewohl diese neuen Instruktionen definitiv
 keine Assembler-Sprache sind, boten sie doch einen sch&ouml;nen
 &Uuml;bergang von traditionellen befehlsorientierten Hochsprachen zu
 Assembler. Ein Programmierer kann weiterhin seine Instruktionen wie
 IF, WHILE und FOR w&auml;hrend er andere Aspekte von
 Assemblerprogrammen lernt. Dies erlaubt einen schrittweise
 &Uuml;bergang statt einem gro&szlig;en einmaligen Schritt.</p>

<p>Ebenso existieren seit vielen Jahren f&uuml;r IBM's High-Level
 Assembler (HLASM) verschiedene Bibliotheken, die die gleichen
 Funktionen zur Verf&uuml;gung stellen.</p>

/HTML

         HTMLDEF HYDE.DE6
<!-- DE -->
<h2><a name="chap06" id="chap06">Basis-Instruktionen verstehen</a></h2>

<p>Nat&uuml;rlich kann sich ein Programmierer nicht Assembler
 Programmierer nennen bis er es geschafft hat die Basisinstruktionen zu
 verstehen. Nichtsdestotrotz bieten diese Kontroll-Strukturen einen
 exzellenten &Uuml;bergang zwischen Hochsprachen und Assembler.
 Weiterhin gibt es verschiedene B&uuml;cher die Assembler
 Programmierung mit dieser top-down Methode lehren.</p>

<p>Ein weiteres Problem mit dem top-down &Uuml;bergang ist das viele
 Hochsprachen eine gro&szlig;e Bibliothek mit Routinen besitzen, welche
 so Allerweltsaufgaben wie Ein/Ausgabe, numerische Konvertierung, und
 Kettenoperationen erledigen. Ein gro&szlig;es Problem f&uuml;r
 Assembleranf&auml;nger ist das sie typischerweise
 Ein/Ausgabeoperationen, numerische Konvertierung und Kettenoperationen
 ben&ouml;tigen um einfache Programme zu schreiben und zu testen.
 Ungl&uuml;cklicherweise &uuml;berlassen es viele Assembler
 Entwicklungssysteme dem Programmierer diese Funktionen f&uuml;r ihre
 Anwendungen selbst bereitzustellen. Hier bei&szlig;t die Katze sich in
 den Schwanz: Es ist schwer Assembler ohne diese Funktionen zu lernen,
 aber man kann solche Funktionen nicht schreiben, wenn man nicht
 Assembler kann.</p>

<p class="remark">Anmerkung:<br />
 HLASM bietet eine gro&szlig;e Anzahl Standardmacros f&uuml;r
 Ein/Ausgabeoperationen. F&uuml;r numerische Konvertierungen gibt es
 diverse Instruktionen in Assembler. Dies ergibt einen Vorteil f&uuml;r
 HLASM-Studenten gegen&uuml;ber MASM-Studenten.</p>

<p>Diese Blockaden halten alle (bis auf die wirklich hartn&auml;ckigen)
 ab Assembler zu beherrschen. Daher nimmt die Benutzung von Assembler
 seit 1990 konstant ab. Im Angesicht der abnehmenden Software-Effizienz
 und -qualit&auml;t, die parallel zur Abnahme der Benutzung von
 Assembler l&auml;uft, habe ich mich Mitte der 90er Jahre zu einem
 Kreuzzug, zur Ermunterung von Programmierern die Assemblersprache zu
 lernen, entschlossen.</p>

<p>Der erste von mir erreichte Meilenstein war die Freigabe der
 elektronischen Version von &quot;The Art of Assembly Language&quot;.
 Dieses Buch, mit der begleitenden &quot;UCR Standard Library for 80x86
 Language Programmers&quot;, vermindert den Aufwand Assembler zu
 lernen. Zehntausende von Programmierern haben Assembler programmieren
 gelernt mit diesem Textbuch und den erg&auml;nzenden
 Bibliotheksroutinen.</p>

<p>Das einzige Problem mit der elektronischen Version von &quot;The Art
 of Assembly Language&quot; und der &quot;UCR Standard Library for
 80x86 Assembly Language Programmers&quot; ist das sie fast
 &uuml;berfl&uuml;ssig wurden in dem Moment in dem sie
 ver&ouml;ffentlicht wurden, weil sie dem Leser beibrachten wie man
 16-Bit DOS Anwendungen programmiert (Ihre Ver&ouml;ffentlichung ist
 fast zeitgleich mit der Freigabe von Windows 95, welches einer der
 letzten Sargn&auml;gel f&uuml;r 16-bit Programme war).</p>

<p>Im noch auf dem Kreuzzug, habe ich angefangen an dem brandneuen,
 high-level assembler (HLA, the High-Level Assembler), einer neuen
 Version von &quot;The Art of Assembly Language&quot; und einem neuen
 HLA-basierenden Satz von Bibliotheksroutinen zu arbeiten. Die
 Anstrengung gipfelte in der Ver&ouml;ffentlichung der
 &quot;published edition of The Art of Assembly (AoA)&quot; in 2003.
 Bis heute haben tausende und abertausende von Programmierern
 enthusiastisch diese neue Methode Assembler zu lernen benutzt.</p>

<p>Obwohl &quot;The Art of Assembly Language&quot; und &quot;HLA&quot;
 die Qualifizierung der Assemblerprogrammierer jeden Tag steigern, ist
 dies eine L&ouml;sung f&uuml;r die n&auml;chste Generation von
 Programmierern.</p>

<p>Was ist mit den jetzigen Programmierern die es vers&auml;umt haben
 in der Schule Assembler zu lernen und die Konzepte von Maschinen zu
 bernerschen, bevor das Leben in Form von knappen Zeitpl&auml;nen sie
 einholt. Einholt bevor sie die n&ouml;tige Erfahrung gesammelt haben
 um gro&szlig;artigen Code zu schreiben. Die Frage ist,
 &quot;K&ouml;nnen Maschinenorganisation effektiv an professionelle
 Programmierer vermittelt werden ohne gleichzeitig Assembler zu
 lehren?&quot;</p>

<p>Es ist klar, das der beste Rat den ich geben kann &quot;lerne
 Assembler&quot; ist, dennoch bin ich &uuml;berzeugt dass man
 Maschinenorganisation ohne Assembler studieren kann und dadurch lernt
 besseren Code zu schreiben. Dieser Code mag vielleicht nicht so gut
 werden wie der von Programmierern die Assembler beherrschen, aber er
 wird besser als der Code der vorher ohne das neue Wissen produziert
 wurde.<br />
 Und am Wichtigsten, obwohl es schwer ist die Idee Assembler zu lernen
 an die derzeitige Generation von Programmierern zu verkaufen (zwei
 Jahrzehnte Anti Assembler Propaganda haben das sicher gemacht),
 erkennen viele Programmierer, wenn sie nur ein bisschen mehr lernen
 w&uuml;rden &uuml;ber die darunterliegenden Hardware k&ouml;nnten sie
 besseren Code schreiben. Ergo ist alles was n&ouml;tig ist ein Satz
 Material welcher Datenrepresentation Speicherorganisation, Elemente
 einer Rechnerarchitektur, wie Ein/Ausgabe funktioniert und die
 Relation zwischen Hochspracheninstruktionen. </p>

<p>Das hei&szlig;t, lehrt ihnen alles was sie lernen m&uuml;ssen wenn
 sie Assembler lernen, mit der einzigen Ausnahme der Assembler Sprache.
 K&uuml;rzlich habe ich angefangen mich auf diese Gruppe zu
 konzentrieren. Das Buch &quot; &quot;Write Great Code, Volume One:
 Understanding the Machine&quot;, beschreibt Maschinenorganisation ohne
 spezifisch Assembler zu lehren. W&auml;hrend jemand der
 Maschinenorganisation studiert keinen so gro&szlig;artigen Code
 schreiben wird wie jemand der sich die Zeit nehmt Assembler zu
 beherrschen, ist meine Hoffnung das jene, die nicht bereit Assembler
 zu lernen, bereit sind ein Buch wie &quot;Writing great Code&quot;
 durchzuarbeiten, um so, wenn schon nicht gro&szlig;artigen Code,
 so doch besseren Code zu produzieren. </p>

/HTML

         HTMLDEF HYDE.DE7
<!-- DE -->
<h2><a name="chap07" id="chap07">Zusammenfassung</a></h2>

<p>Um gro&szlig;artigen Code zu schreiben muss man effizienten Code
 schreiben. Das Schreiben von Effizienten Code bedarf gute Wahl der
 Algorithmen und eine gute Umsetzung dieser Algorithmen. Die besten
 Umsetzungen werden von jenen geschrieben, die Assembler gelernt haben
 oder die Basisinstruktionen, in die Hochspracheninstruktionen
 umgesetzt werden, verstehen. Dies bedeutet nicht, das wir zu den Tagen
 als gro&szlig;e kommerzielle Pakete vollst&auml;ndig in Assembler
 geschrieben wurden zur&uuml;ckkehren sollten. Aber um den Trend von
 Software langsamer und langsamer zu laufen, obwohl die CPUs
 st&auml;ndig schneller werden, umzukehren, bedarf es Programmierer,
 die die Folgen Ihres Codes auf die Basisinstruktionen absch&auml;tzen
 k&ouml;nnen. </p>

<p>Selbst wenn Sie nie vorhaben eine einzige Zeile Assembler zu
 schreiben, ist das Lernen von Assembler und das Denken darin die beste
 Methode, um zu lernen besseren Code zu schreiben. </p>

<p class="remark"><a name="note01" id="note01">Note 1:</a><br />
 Moore's Gesetz sagt das die Semiconduktortechnik die Kapazit&auml;t
 bei einem gegebenen Preis alle 18 Monate verdoppelt.<br />
 Das Gesetz sagt nichts &uuml;ber Performance. Es sagt nur dass die
 Anzahl Transistoren sich alle zwei Jahre verdoppelt.</p>

<p class="remark">&Uuml;ber den Autor:<br />
 Randall Hyde ist der Autor der k&uuml;rzlichen Ver&ouml;ffentlichungen
 &quot;Write Great Code&quot; und &quot;The Art of Assembly
 Language&quot; (beide von No Starch Press), eine der am meisten
 empfohlenen Quellen &uuml;ber Assembler f&uuml;r Intel-Type
 Prozessoren. F&uuml;r HLASM und Mainframeprozessoren gibt es andere
 Quellen.</p>

/HTML

         HTMLDEF HYDE.DEL
<!-- DE -->
<p>Nach <a href="#chap01">Gro&szlig;artiger Code geht weiter</a>.<br />
 Nach <a href="#chap02">Effizienz ist der Schl&uuml;ssel</a>.<br />
 Nach <a href="#chap03">Bleiben Sie fit</a>.<br />
 Nach <a href="#chap04">Lernen Sie Assembler</a>.<br />
 Nach <a href="#chap05">Assembler ist nicht tot</a>.<br />
 Nach <a href="#chap06">Basis-Instruktionen verstehen</a>.<br />
 Nach <a href="#chap07">Zusammenfassung</a>.</p>

/HTML

         HTMLDEF HYDE.DEF
<!-- DE -->
<p class="footer" align="center">
  Diese Text wurde geschrieben von Randall Hyde,
 &Uuml;bersetzt durch Martin Tr&uuml;bner.<br/>
 &copy; Copyright: Randall Hyde, 2004. All rights reserved.<br />
 Diese &Uuml;bersetzung: &copy; Copyright: Martin Tr&uuml;bner, 2005.
 All rights reserved.<br />
 E-mail an <a href="mailto:rhyde@cs.ucr.edu">den Autor</a> oder an
 <a href="mailto:martin@pi-sysprog.de">den &Uuml;bersetzer</a>.</p>

/HTML

         HTMLDEF HYDE.ESH
<!-- ES -->
<!-- -->
<!-- Saved from http://www.bixoft.com/espanol/hyde.htm -->
<!-- -->
<title>Por qu&eacute; es a&uacute;n una buena idea aprender Ensamblador
</title>
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe" />
<meta http-equiv="description"
      content="Por qu&eacute; es a&uacute;n una buena idea aprender
      Ensamblador." />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF HYDE.EST
<!-- ES -->
<h1 align="center">
 Por qu&eacute; es a&uacute;n una buena idea aprender Ensamblador.
</h1>

<p class="header" align="center">Por Randall Hyde, Mayo 06, 2004</p>

<p class="remark">
 N&oacute;ta:<br />
 Este art&iacute;culo fu&eacute; originalmente escrito pensando en el
 lenguaje ensamblador para procesadores Intel Pentium. Sin embargo,
 como los argumentos presentados  por el autor se aplican
 tambi&eacute;n en mainframes, pensamos que es relevante publicarlo en
 en esta p&aacute;gina web tambi&eacute;n.</p>

<p class="remark">
 Advertencia:<br />
 Bixoft convirti&oacute; &quot;Por qu&eacute; es a&uacute;n una buena
 idea aprender Ensamblador&quot; en un documento HTML con el permiso
 del autor original para republicarse. Tambi&eacute;n le hicimos
 algunos cambios menores. Con todo esto, a&uacute;n aplican los
 derechos de autor del Sr. Hyde al documento a continuaci&oacute;n.</p>

<p class="remark">
 Contacto:<br />
 El Sr. Hyde gustosamente aceptar&aacute; sus comentarios,
 observaciones, etc. <a href="mailto:rhyde@cs.ucr.edu">env&iacute;e
 un e-mail a Randall hyde</a>.</p>

<p>Este documento contiene las siguientes secciones:</p>
<ul>
 <li><a href="#chap01">Un excelente c&oacute;digo va mas all&aacute; de
  lo ordinario</a></li>
 <li><a href="#chap02">La clave es la eficiencia</a></li>
 <li><a href="#chap03">Practique sus habilidades</a></li>
 <li><a href="#chap04">Aprenda el Lenguaje Ensamblador</a></li>
 <li><a href="#chap05">El Ensamblador no est&aacute; muerto</a></li>
 <li><a href="#chap06">Domine las instrucciones de bajo nivel</a></li>
 <li><a href="#chap07">Conclusi&oacute;n</a></li>
</ul>

/HTML

         HTMLDEF HYDE.ES1
<!-- ES -->
<h2><a name="chap01" id="chap01">
 Un excelente c&oacute;digo va mas all&aacute; de lo ordinario</a></h2>

<p>El mundo est&aacute; lleno de estudios que esbozan los desastres de
 ingenier&iacute;a de software. Casi todos los programadores han
 trabajado en alg&uacute;n projecto que incluye c&oacute;digo
 &quot;punto menos que estelar&quot;, el c&oacute;digo fuente era
 dif&iacute;cil de leer y mantener. En raras ocasiones, algunos
 programadores tienen la oportunidad de trabajar en un sistema bien
 dise&ntilde;ado, una verdadera obra de arte que los inspira y
 usualmente provoca admiraci&oacute;n, y exclaman, &quot;&iexcl;Este es
 verdaderamente un gran c&oacute;digo!&quot;</p>

<p>Claramente, los ingenieros profesionales de software deber&iacute;an
 esforzarse para alcanzar este nivel de grandeza en todos su
 c&oacute;digo. Pero la verdadera pregunta es, &quot;
 &iquest;Qu&eacute; hace excelente al c&oacute;digo?&quot; No se llega
 a escribir un gran c&oacute;digo con el solo &quot;cumplir las
 especificaciones&quot;. Es verdad, en las condiciones actuales de
 desarrollo, algunos podr&iacute;an creer que el solo hecho de cumplir
 las especificaciones hace que una aplicaci&oacute;n sobresalga, ya que
 muchos projectos de desarrollo fracasan para cumplir los objetivos de
 su dise&ntilde;o original.</p>

<p>Sin embargo, en otras &aacute;reas, la grandeza es raramente
 definida al hacer lo esperado exitosamente; la grandeza es definida
 por realizar algo mas all&aacute; de lo esperado. Los ingenieros de
 Software no deber&iacute;an conformarse con menos que un gran
 c&oacute;digo - deber&iacute;an ir m&aacute;s all&aacute; y por encima
 de los est&aacute;ndares convencionales para el desarrollo.</p>

/HTML

         HTMLDEF HYDE.ES2
<!-- ES -->
<h2><a name="chap02" id="chap02">
 La clave es la eficiencia</a></h2>

<p>Debido a que la grandeza es una virtud con m&uacute;ltiples facetas,
 un art&iacute;culo tan corto como este, no puede tratar de cubrir
 todos los componentes de una gran pieza de c&oacute;digo. En su lugar,
 este art&iacute;culo describir&aacute; un componente de escribir un
 gran c&oacute;digo, que ha caido en el olvido en los &uacute;ltimos
 a&ntilde;os, al mismo tiempo que las computadoras han incrementado en
 capacidad y poder: La eficiencia.</p>

<p>Cualquiera que haya estado en esta industria alrededor de una
 d&eacute;cada o m&aacute;s, conoce perfectamente este fen&oacute;meno:
 las m&aacute;quinas son exponencialmente mas poderosas por unidad de
 costo, sin embargo, los usuarios no perciben estas mejor&iacute;as en
 las aplicaciones que ellos compran. Por ejemplo, mientras los
 procesadores de palabra son claramente m&aacute;s r&aacute;pidos hoy,
 que lo que eran hace 21 a&ntilde;os, no son 16,384 veces m&aacute;s
 r&aacute;pidos como la Ley de Moore <a href="#note01">[1]</a>
 sugerir&iacute;a. Desde luego parte del problema es que algo del poder
 de procesamiento adicional se emplea para soportar las nuevas
 caracter&iacute;sticas (tales como el desplegado a nivel de bits),
 pero una gran parte de la raz&oacute;n de que los usuarios del
 software no vean incrementarse la rapidez, es porque muchos de los
 programadores de hoy, no se toman el tiempo para escribir un
 c&oacute;digo eficiente, o simplemente no saben como escribir software
 r&aacute;pido.</p>

<p>Los m&iacute;seros per&iacute;odos otorgados al desarrollo de
 programas, no dan tiempo suficiente para desarrollar un c&oacute;digo
 eficiente; Tambi&eacute;n es verdad que muchos programadores actuales,
 han crecido con ordenadores r&aacute;pidos, cuya velocidad encubre
 pobres h&aacute;bitos de codificaci&oacute;n, y es as&iacute; como
 muchos de estos programadores nunca han tenido que aprender como
 escribir un c&oacute;digo r&aacute;pido.</p>

<p>Desafortunadamente, cuando el desempe&ntilde;o de las aplicaciones
 es punto menos que &oacute;ptimo, estos programadores generalmente no
 saben como corregir los problemas con su c&oacute;digo. Frecuentemente
 mencionan cosas como &quot;la regla del 90-10,&quot; o &quot;Yo
 usar&eacute; un analizador de c&oacute;digo para corregir los
 problemas de desempe&ntilde;o &quot;, pero la verdad es que no saben
 realmente como mejorar el desempe&ntilde;o de sus aplicaciones con
 bajo rendimiento. Solamente mencionan, &quot;&iexcl;ya
 encontrar&eacute; un mejor algoritmo!&quot; Sin embargo, el encontrar
 y plasmar el algoritmo, si realmente existe, es otra cosa
 completamente distinta.</p>

<p>La mayor&iacute;a de las veces Ud. puede lograr un rendimiento
 m&aacute;s elevado al mejorar la implementaci&oacute;n de un algoritmo
 existente. Un cient&iacute;fico en computaci&oacute;n, puede alegar
 que una mejor&iacute;a constante en rendimiento no es tan buena, como
 por ejemplo, al ir de un algoritmo con rendimiento O(n^2) a uno con
 desempe&ntilde;o O(n lg n), pero la verdad es que la mayor parte del
 tiempo un factor constante de mejor&iacute;a de dos o tres veces,
 aplicada a trav&eacute;s de un programa, puede hacer la diferencia
 entre una aplicaci&oacute;n pr&aacute;ctica y otra que es simplemente
 muy lenta para usarse confortablemente. Y es exactamente este tipo de
 optimizaci&oacute;n con la cual la mayor&iacute;a de los programadores
 modernos tienen poca experiencia.</p>

<p>Desafortunadamente, el escribir un c&oacute;digo eficiente es una
 habilidad; una, que debe ser practicada para aprenderla y otra, que
 debe ser practicada para mantenerla. Los programadores que nunca
 practican esta habilidad, nunca ser&aacute;n capaces de aplicarla el
 dia que ellos descubran que su c&oacute;odigo esta corriendo muy
 lentamente. A&uacute;n si el programador ha dominado la habilidad de
 escribir un c&oacute;digo eficiente, debe practicarla constantemente.
 Asi que hay dos razones por las cuales algunos programadores no
 escriben (un gran y) eficiente c&oacute;digo hoy: ellos nunca
 aprendieron como escribir c&oacute;digo eficiente en primer lugar, o
 ellos han permitido que sus habilidades de desarrollo se atrofien al
 punto que no son capaces de escribir m&aacute;s un c&oacute;digo
 eficiente.</p>

/HTML

         HTMLDEF HYDE.ES3
<!-- ES -->
<h2><a name="chap03" id="chap03">
 Practique Sus Habilidades</a></h2>

<p>Para programadores quienes han permitido simplemente que sus
 habilidades desmayen por falta de uso, la soluci&oacute;n es obvia;
 practique codificar eficientemente, a&uacute;n cuando el projecto no
 lo requiere en lo absoluto. Esto desde luego no significa que el
 ingeniero practicante, debe sacrificar los tiempos destinados para el
 projecto, o que deje de realizar un c&oacute;digo f&aacute;cil de
 entender y mantener, u otros atributos importantes, en favor de la
 eficiencia.</p>

<p>Lo que si significa, es que el Ing. en desarrollo de sistemas debe
 mantener en mente la eficiencia mientras dise&ntilde;a o implementa el
 c&oacute;digo. El programador debe elegir concientemente una
 implementaci&oacute;n menos eficiente, por sobre una
 implementaci&oacute;n m&aacute;s eficiente, basado en decisiones
 econ&oacute;micas o de ingenier&iacute;a, m&aacute;s que simplemente
 codificar lo primero que le viene a la mente. La simple
 consideraci&oacute;n de implementar un c&oacute;digo diferente
 (y posiblemente m&aacute;s eficiente), es todo lo que se necesita
 para producir un gran c&oacute;digo. Despues de todo, algunas veces la
 implementaci&oacute;n m&aacute;s eficiente no es m&aacute;s
 dif&iacute;cil de crear que la ineficiente. Todos los ingenieros
 experimentados pueden necesitar m&uacute;ltiples opciones de las
 cuales elegir.</p>

<p>Desafortunadmente, los tiempos irreales otorgados al desarrollo, han
 llevado a muchos ingenieros profesionales a desechar la
 revisi&oacute;n y la implementaci&oacute;n minuciosa. El resultado es
 que muchos programadores profesionales han abandonado el h&aacute;bito
 de escribir un gran c&oacute;digo. Afortunadamente, este proceso es
 f&aacute;cil de reversar al emplear metodolog&iacute;as de desarrollo
 efectivas, tales como la consideraci&oacute;n de m&uacute;ltiples
 algoritmos y sus implementaciones, tan frequentemente como sea
 posible.</p>

/HTML

         HTMLDEF HYDE.ES4
<!-- ES -->
<h2><a name="chap04" id="chap04">
 Aprenda el Lenguaje Ensamblador</a></h2>

<p>&iquest;Y en primer lugar, qu&eacute; hay del programador que nunca
 ha aprendido a codificar eficientemente? &iquest;Como aprende uno a
 implementar eficientemente una aplicaci&oacute;n? Desafortunadamente
 las escuelas t&eacute;cnicas y universidades, intencionalmente toman
 la actitud de que si Ud. elige un buen algoritmo, no tiene que
 preocuparse de la implementaci&oacute;n de &eacute;se algoritmo. La
 mayor&iacute;a de los estudiantes salen de sus cursos de estructuras
 de datos y algoritmos, con la actitud de que si Ud. puede lograr una
 unidad de contante de mejor&iacute;a (esto es O(1)), Ud, realmente no
 ha logrado nada, y cualquier intento de mejorar es una p&eacute;rdida
 de tiempo.</p>

<p>Los avances en arquitectura de los ordenadores han exacerbado este
 problema - por ejemplo, Ud. podr&iacute;a escuchar a un programador
 decir, &quot;Y si este programa necesita ser un poco m&aacute;s
 r&aacute;pido, solo esperen un a&ntilde;o o un poco m&aacute;s y el
 CPU ser&aacute; dos veces m&aacute;s r&aacute;pido; no hay de que
 preocuparse&quot;. Y esta actitud, probablemente m&aacute;s que
 cualquier otra, es el por qu&eacute; el rendimiento del c&oacute;digo
 no crece a la par con el desempe&ntilde;o del CPU.</p>

<p>Con cada nueva aplicaci&oacute;n, el programador escribe el
 c&oacute;digo mas lento de lo que deber&iacute;a correr en cualquier
 CPU que ellos usen, creyendo que en el futuro, la mejor&iacute;a en el
 rendimiento del CPU solucionar&aacute; sus problemas. Desde luego,
 para el momento que el CPU es lo suficientemente r&aacute;pido para
 ejecutar su c&oacute;digo, el programador ha &quot;mejorado&quot; el
 programa, y ahora depende de una nueva versi&oacute;n del CPU para
 &quot;mejorarlo&quot; de nuevo. El ciclo se repite casi
 invariablemente, con el rendimiento del CPU sin darse abasto para
 satisfacer las demandas del software, hasta que finalmente, la vida
 del software llega a su fin, y el programador comienza de nuevo el
 ciclo con una aplicaci&oacute;n distinta.</p>

<p>La verdad es que si es posible escribir programas eficientes que se
 ejecuten eficientemente en procesadores contempor&aacute;neos. Los
 programadores estaban haciendo grandes cosas con su c&oacute;digo en
 los dias en que sus aplicaciones corr&iacute;an en ocho bits a 5 MHZ
 en PCs 8088 (o a&uacute;n m&aacute;s atr&aacute;s en procesadores de
 mainframe corriendo en sub-megaherz); Las mismas t&eacute;cnicas que
 ellos usaron para exprimir hasta el &uacute;ltimo bit de
 desempe&ntilde;o de esos ordenadores de bajo poder, es la clave para
 el alto rendimiento de las aplicaciones actuales. Asi, que
 &iquest;como lograron ellos un desempe&ntilde;o razonable en
 procesadores de tan bajo poder? La respuesta no es un secreto - ellos
 comprendieron como operaban esencialmente los &quot;fierros&quot; y
 escribieron su c&oacute;digo de acuerdo a eso. Ese mismo conocimiento
 esencial del hardware, es la clave para codificar eficientemente hoy
 en dia.</p>

<p>Frecuentemente, Ud. escucha a los viejos programadores comentar que
 el software realmente eficiente esta escrito en lenguaje ensamblador.
 Sin embargo, la raz&oacute;n la raz&oacute;n de que los programas sean
 eficientes, no es porque el lenguaje otorgue propiedades
 m&aacute;gicas de eficiencia a ese c&oacute;digo - es perfectamente
 posible escribir software ineficiente en lenguaje ensamblador-. No, la
 raz&oacute;n real del porque los programas en lenguaje ensamblador
 tienden a ser m&aacute;s eficientes que los programas escritos en
 otros lenguajes, es simplemente porque el lenguaje ensamblador forza
 al programador a considerar como el hardware opera con cada
 instrucci&oacute;n que ellos escriben. Y esto es la llave para
 aprender a codificar eficientemente - manteniendo la mirada atenta en
 la capacidad de bajo nivel de la m&aacute;quina.</p>

<p>Esos mismos viejos programadores que reclaman que los programas
 realmente eficiente est&aacute; escrito en lenguaje ensamblador,
 tambi&eacute;n ofrecen otro consejo igualmente v&aacute;lido - si
 quiere aprender a escribir un gran c&oacute;digo en un lenguaje de
 alto nivel, aprenda a programar en lenguaje ensamblador.</p>

<p>Este es un consejo muy bueno. Despues de todo, los compiladores de
 alto nivel trasladan las intrucciones de alto nivel a c&oacute;digo
 m&aacute;quina de bajo nivel. Asi que si conoce el lenguaje
 ensamblador para su m&aacute;quina en particular ser&aacute; capaz de
 correlacionar las instrucciones del lenguaje de alto nivel con el
 lenguaje de m&aacute;quina que el compilador genera. Y con este
 entendimiento, Ud. ser&aacute; capaz de escoger las mejores
 instrucciones del lenguaje de alto nivel basado en su conocimiento de
 como convierten los compiladores estas instrucciones a c&oacute;digo
 de m&aacute;quina.</p>

<p>Frecuentemente, los programadores de lenguaje de alto nivel eligen
 ciertas instrucciones del lenguaje, sin conocimiento alguno del costo
 de ejecuci&oacute;n de esas instrucciones. El aprender el lenguaje
 ensamblador forza al programador a aprender los costos asociados con
 varias contrucciones de alto nivel. Asi que, a&uacute;n si el
 programador realmente nunca escribe aplicaciones en lenguaje
 ensamblador, ese conocimiento, hace que el programador est&eacute;
 conciente de los problemas que causan ciertas secuencias ineficaces,
 asi que ellos las evitan en su c&oacute;digo.</p>

<p>El aprender el lenguaje ensamblador, asi como cualquier otro
 lenguaje, requiere de un esfuerzo considerable. El problema es que el
 lenguaje ensamblador en si mismo, es enga&ntilde;osamente simple. Ud.
 puede aprender las 20 o 30 instrucciones que se encuentan
 com&uacute;nmente en las aplicaciones en solo unos cuantos dias. Ud.
 inclusive puede aprender a encadenar varias instrucciones de esas para
 solucionar problemas, de la misma manera que solucionar&iacute;a esos
 mismos problemas, con otro lenguaje en unas cuantas semanas.</p>

<p>Desafortunadamente, este no es el tipo de conocimiento que un
 programador de lenguaje de alto nivel encontrar&aacute; lo
 suficientemente &uacute;til al intentar escribir c&oacute;digo
 eficiente de alto nivel. Para alcanzar los beneficios del conocer el
 lenguaje ensamblador, un programador tiene que aprender a pensar en
 lenguaje ensamblador. Solo entonces, tal programador puede escribir
 c&oacute;digo de alto nivel muy eficiente, mientras piensa en
 ensamblador y escribe instrucciones de lenguaje de alto nivel. Aunque
 el c&oacute;digo escrito de esta manera es grande realmente, hay un
 ligero problema con este acercamiento - que toma un esfuerzo
 considerable alcanzar este nivel. Esa es una de las razones por la
 cuales tal c&oacute;digo es excelente - porque muy pocos practicantes
 son capaces de producirlo.</p>

/HTML

         HTMLDEF HYDE.ES5
<!-- ES -->
<h2><a name="chap05" id="chap05">
 El Ensamblador No Est&aacute; Muerto</a></h2>

<p>Desde luego, el lenguaje ensamblador desarroll&oacute; una mala
 reputaci&oacute;n en todos los 90's. Avances en tecnolog&iacute;a del
 compilador, mejoras en el desempe&ntilde;o del CPU, y la &quot;crisis
 del software&quot; todos conspiraron para sugerir que el ensamblador
 era un lenguaje &quot;muerto&quot;, que no se necesitaba m&aacute;s.
 Como el lenguaje ensamblador era un poco mas dif&iacute;cil de
 aprender que los lenguajes tradicionales de alto nivel, los
 estudiantes (&iexcl;y los maestros!) gustosamente abrazaron estos
 nuevos lenguajes r&aacute;pidamente asimilables, abandonando el
 dif&iacute;cil-de-aprender ensamblador, en favor de lenguajes de cada
 vez m&aacute;s alto nivel.</p>

<p>El &uacute;nico problema fue que con el olvido del lenguaje
 ensamblador es que asi como su popularidad se desvaneci&oacute;,
 tambi&eacute;n lo hizo el gran porcentaje de programadores que
 entend&iacute;an las ramificaciones en el bajo nivel, de las
 aplicaciones que ellos estaban escribiendo. Esos programadores quienes
 clamaban que el lenguaje ensamblador ya hab&iacute;a muerto, ya
 sab&iacute;an como pensar en lenguaje ensamblador, y como aplicar el
 pensamiento de bajo nivel a su c&oacute;digo de alto nivel; en efecto,
 gozaron los beneficios del lenguaje ensamblador mientras
 escrib&iacute;an lenguaje de alto nivel. Sin embargo, cuando la nueva
 oleada de programadores se abrieron camino en el ambiente, lo hicieron
 sin los beneficios de haber escrito varias aplicaciones en
 ensamblador, y la eficiencia de las aplicaciones comenz&oacute; a
 declinar.</p>

<p>Aunque ser&iacute;a tonto reclamar que los programadores comenzaran
 a escribir aplicaciones comerciales en lenguaje ensamblador, hoy es
 claro, que la desaparici&oacute;n de la popularidad del lenguaje
 ensamblador ha tenido un gran impacto en la eficiencia del software
 moderno. Para reversar esta tendencia, tiene que suceder una de estas
 dos alternativas: Los programadores deben empezar a estudiar el
 lenguaje ensamblador, o ellos deben obtener ese conocimiento a bajo
 nivel de alguna otra manera.</p>

<p>El aprendizaje del lenguaje ensamblador a&uacute;n permanece como la
 mejor manera de aprender la organizaci&oacute;n fundamental de la
 m&aacute;quina. Esos programadores quienes se esfuerzan en dominar el
 lenguaje ensamblador, llegan a ser de los mejores programadores de
 lenguaje de alto nivel en estos tiempos. Su habilidad para elegir
 instrucciones apropiadas de c&oacute;digo eficiente del m&aacute;s
 alto nivel, su habilidad para leer c&oacute;digo de alto nivel
 desensamblado, y detectar errores nefastos en un sistema, y su
 conocimiento de como opera todo el sistema en su totalidad, los eleva
 a ellos a estaturas legendarias entre sus compa&ntilde;eros de
 trabajo. Estos son los programadores a los que todos van cuando tienen
 preguntas de como implementar algo, Estos son los ingenieros que se
 ganan el respeto de todos a su alrededor. Esos son los programadores
 que todos tratan de emular. Estos son los programadores que escriben
 un gran c&oacute;digo.</p>

<p>Si el conocimiento del lenguaje ensamblador, ayuda a hacer grandes
 programadores, la pregunta obvia es &quot;&iquest;Por qu&eacute; no
 hay m&aacute;s programadores que aprendan ensamblador?&quot; Parte
 del problema es el prejuicio: Muchos instructores de escuelas
 t&eacute;cnicas y universidades que ense&ntilde;an lenguaje
 ensamblador, comienzan su curso con un comentario como &quot;Realmente
 nadie necesita conocer esto, y ustedes nunca lo van a usar, pero este
 programa lo requiere, asi que vamos a batallar las pr&oacute;ximas
 semanas estudiando este material&quot;. Despues de cuatro a&ntilde;os
 de este tipo de actitud de sus profesores, no es sorprendente que los
 estudiantes realmente no quieran tener nada que ver con utilizar el
 lenguaje ensamblador para programar.</p>

<p>A&uacute;n asi, una vez que es obvio para el codificador que los
 verdaderos programadores son aquellos que han dominado el lenguaje
 ensamblador, Ud. podr&iacute;a preguntar, &iquest;por qu&eacute; no
 hay m&aacute;s programadores dispuestos a aprender este conocimiento
 tan valuable?. El &uacute;nico problema, es que tradicionalmente la
 mayor&iacute;a de los programadores se han topado con la dificultad
 de dominar el lenguaje ensamblador. El ensamblador es radicalmente
 diferente de los lenguajes de alto nivel, asi que el aprender el
 lenguaje ensamblador, es casi tanto como volver a empezar a
 programar.</p>

<p>Para alguien que intenta aprender ensamblador, invariablemente
 parece que nada de su conocimiento de los otros lenguajes pudiera ser
 de mucha ayuda. Frecuentemente, un ingeniero aprendiendo ensamblador
 se frusta con el hecho de que ya saben como lograr los objetivos en
 otro lenguaje de alto nivel, pero simplemente no se figuran como
 lograr lo mismo con el ensamblador. Para muchos programadores, el
 cambio de &quot;pensar en un lenguaje de alto nivel&quot; a
 &quot;pensar en lenguaje ensamblador&quot; constituye una barrera
 infranqueable.</p>

<p>Como instructor de lenguaje ensamblador por m&aacute;s de una
 d&eacute;cada en la Universidad de California, ten&iacute;a pleno
 conocimiento de los problemas que los estudiantes tienen para hacer la
 transici&oacute;n del paradigma de lenguaje de alto nivel al paradigma
 de programar a un bajo nivel.</p>

<p>A principios de los 90's, Microsoft proporcion&oacute; una
 soluci&oacute;n con la introducci&oacute;n del Microsoft Macro
 Assembler (MASM) v6.0 - la inclusi&oacute;n de estructuras de control
 de alto nivel en el traductor del lenguaje ensamblador. Mientras estas
 instrucciones no son realmente lenguaje ensamblador, ellas
 proporcionan una agradable transici&oacute;n de los tradicionales e
 imperativos lenguajes de alto nivel, al ensamblador. Un programador
 puede continuar usando instrucciones como IF, WHILE, y FOR mientras
 aprende otros aspectos de los programas en lenguaje ensamblador. Esto
 le permite al programador aprender gradualmente el ensamblador, en
 lugar de tener que aprenderlo todo de una vez.</p>

<p>Igualmente, para el High-Level Assembler (HLASM) de IBM, se cuenta
 con varias bibliotecas macro que implementan la misma funcionalidad
 desde hace varios a&ntilde;os.</p>

/HTML

         HTMLDEF HYDE.ES6
<!-- ES -->
<h2><a name="chap06" id="chap06">
 Domine las Instrucciones de Bajo Nivel</a></h2>

<p>Desde luego, un programador no se puede llamar asimismo programador
 de lenguaje ensamblador, hasta que haya dominado las instrucciones de
 bajo nivel equivalentes. A&uacute;n asi, estas estructuras de control
 de alto nivel, proveen un puente excelente entre los lenguajes de alto
 nivel y el lenguaje ensamblador, permitiendo a los estudiantes
 utilizar su conocimiento de programaci&oacute;n de alto nivel, para
 aprender el lenguaje ensamblador.&iexcl;Ahh!, tambi&eacute;n hay unos
 cuantos textos apropiados que ense&ntilde;an la programaci&oacute;n en
 lenguaje ensamblador usando este enfoque de estructuras de control de
 alto nivel que proporciona el MASM (o el HLASM).</p>

<p>Otro problema con la transici&oacute;n de alto nivel a un bajo
 nivel, es que la mayor&iacute;a de lenguajes de alto nivel
 proporcionan grandes bibliotecas que manejan tareas mundanas como
 entrada/salida, conversiones num&eacute;ricas, y operaciones de
 encadenamiento. Un gran problema al que se enfrentran los
 programadores en ensamblador principiantes, es que ellos
 t&iacute;picamente necesitan la habilidad de introducir y obtener
 cantidades num&eacute;ricas o realizar conversiones num&eacute;ricas a
 cadenas (y viceversa), para escribir y probar programas muy simples.
 Desafortunadamente la mayor&iacute;a de los sistemas de desarrollo en
 lenguaje ensamblador, le dejan la responsabilidad al programador de
 proporcionar esta funcionalidad para sus aplicaciones. Esto presenta
 una situaci&oacute;n muy sui-generis: es dif&iacute;cil aprender el
 lenguaje ensamblador sin estas funciones, ni tampoco puede codificar
 tales funciones, hasta que aprenda a programar en ensamblador.</p>

<p>Estas piedras en el camino evitan efectivamente dominar el lenguaje
 ensamblador a la mayor parte de los programadores, con
 excepci&oacute;n de los m&aacute;s determinados. De esta manera,
 durante los 90s y principios de este siglo, el uso del ensamblador
 continua mengu&aacute;ndose. Al ver la declinaci&oacute;n en la
 eficiencia y calidad del software, percat&aacute;ndome que se
 relaciona con el bajo uso del ensamblador, comenc&eacute; una cruzada
 a mediados de los 90s para motivar a los programadores a aprender a
 programar en lenguaje ensamblador.</p>

<p>El primer gran logro que tuve, fue la liberaci&oacute;n a mediados
 de los 90s de la edici&oacute;n electr&oacute;nica de El Arte del
 Lenguaje Ensamblador. Este libro, junto con el uso de la
 correspondiente biblioteca UCR Estandar para programadores de Lenguaje
 Ensamblador en 80x86, redujo el esfuerzo necesario para el aprendizaje
 del lenguaje ensamblador. Decenas de miles de programadores han
 aprendido a programar en ensamblador usando esto libro de texto y el
 conjunto de bibliotecas de rutinas complementarias.</p>

<p>El &uacute;nico problema con la edici&oacute;n electr&oacute;nica de
 El Arte del Lenguaje Ensamblador y las Bibliotecas UCR Est&aacute;ndar
 para programadores de lenguaje ensamblador para m&aacute;quina 80x86,
 es que se hicieron obsoletas al momento de la aparici&oacute;n en el
 Internet, porque ense&ntilde;aban al lector como crear aplicaciones
 DOS en 16-bits (su aparici&oacute;n casi coincidi&oacute; con la
 liberaci&oacute;n de Windows 95, que fu&eacute; uno de los
 &uacute;ltimos clavos en el ata&uacute;d de programaci&oacute;n de
 16 bits.</p>

<p>A&uacute;n en la cruzada, empec&eacute; a trabajar en un
 completamente nuevo ensamblador de Alto Nivel (HLA), una nueva
 versi&oacute;n de el Arte del Lenguaje Ensamblador, y un nuevo
 conjunto de bibliotecas de rutinas basadas en HLA para 32-bit. Este
 esfuerzo culmin&oacute; con la publicaci&oacute;n de la edici&oacute;n
 de El Arte del Ensamblador (AoA) en el 2003. A la fecha, miles y miles
 de programadores han adoptado entusiastamente esta nueva manera de
 aprender el lenguaje ensamblador, usando AoA, HLA, y la Biblioteca
 Est&aacute;ndar de HLA.</p>

<p>Aunque el Arte del Lenguaje Ensamblador y el HLA han logrado
 incrementar el n&uacute;mero de programadores en ensamblador dia a
 dia, la soluci&oacute;n que ellos proporcionan es para la siguiente
 generaci&oacute;n de programadores.</p>

<p>&iquest;Que hay acerca de los actuales programadores, que han
 perdido la oportunidad de aprender el lenguaje ensamblador cuando
 estuvieron en la escuela y lograron dominar los conceptos de
 organizaci&oacute;n de la m&aacute;quina antes que la realidad de los
 projectos les robaran el tiempo para desarrollar el conocimiento
 necesario para escribir un gran c&oacute;digo? La pregunta es,
 &quot;&iquest;La organizaci&oacute;n de la m&aacute;quina puede ser
 efectivamente ense&ntilde;ada a programadores profesionales sin
 ense&ntilde;arles el lenguaje ensamblador
 simult&aacute;neamente?&quot;</p>

<p>Mientras est&aacute; perfectamente claro que el aprendizaje del
 lenguaje ensamblador es el mejor consejo que yo le puedo dar a alguien
 interesado en escribir un gran y eficiente c&oacute;digo,
 tambi&eacute;n estoy convencido que alguien puede estudiar la
 organizaci&oacute;n de la m&aacute;quina SANS ensamblador y a&uacute;n
 aprender como escribir un mejor c&oacute;digo. Quiz&aacute;s su
 c&oacute;digo no ser&aacute; tan bueno como el de quienes dominen el
 lenguaje ensamblador, pero ser&aacute; mejor que el software que han
 escrito desprovistos de este conocimiento.</p>

<p>M&aacute;s importantemente, mientras es dif&iacute;cil vender la
 idea de aprender el lenguaje ensamblador a la generaci&oacute;n actual
 de programadores (dos d&eacute;cadas de propaganda anti-ensamblador se
 han asegurado de esto), la mayor parte de los programadores se dan
 cuenta que si solo &quot;aprendieran un poco m&aacute;s acerca de como
 trabaja las capas fundamentales del hardware&quot;, ellos
 ser&iacute;an capaces de escribir un mejor c&oacute;digo. Asi que lo
 que se necesita es una colecci&oacute;n de materiales que
 ense&ntilde;en representaci&oacute;n de datos, organizaci&oacute;n de
 la memoria, elementos de arquitectura de la computadora, como funciona
 el proceso de entrada/salida y la correspondencia entre las
 instrucciones de programaci&oacute;n del lenguaje de alto nivel.</p>

<p>Esto es, ense&ntilde;arles todas las cosas que tendr&iacute;an que
 aprender cuando aprenden el lenguaje ensamblador, con la sola
 excepci&oacute;n de dominar la programaci&oacute;n en ensamblador.
 Recientemente, me he comenzado a enfocar en este grupo, trabajando en
 libros como Escriba Gran C&oacute;digo, Primer Volumen: Entendiendo la
 M&aacute;quina (Write Great Code, Volume One: Understanding the
 Machine), un libro sobre la organizaci&oacute;n de la m&aacute;quina
 que no ense&ntilde;a a programar en ensamblador
 espec&iacute;ficamente. Mientas que alguien que estudia la
 organizaci&oacute;n de la m&aacute;quina podr&iacute;a no escribir un
 gran c&oacute;digo como alguien que se ha tomado el tiempo de dominar
 el lenguaje ensamblador, mi esperanza es que esos que nunca
 considerar&iacute;an aprender el lenguaje ensamblador, podr&iacute;an
 interesarse en rescatar un libro como Escriba un Gran C&oacute;digo, y
 aprenda a codificar mejor, aunque no sea un gran c&oacute;digo.</p>

/HTML

         HTMLDEF HYDE.ES7
<!-- ES -->
<h2><a name="chap07" id="chap07">
 Conclusi&oacute;n</a></h2>

<p>Para escribir un gran c&oacute;digo, se requiere escribir un
 c&oacute;digo eficiente. El escribir un c&oacute;digo eficiente
 requiere la elecci&oacute;n de buenos algoritmos y la
 implementaci&oacute;n buena de esos algoritmos. Las mejores
 implementaciones van a escribirlas aquellos que hayan dominado el
 lenguaje ensamblador, o aquellos que entiendan completamente la
 implementaci&oacute;n de bajo nivel de las instrucciones de alto
 nivel que ellos han seleccionado. Esto no significa que regresaremos
 a los dias cuando las mayores aplicaciones comerciales eran escritas
 por completo en lenguaje ensamblador. Sin embargo, para reversar la
 tendencia de los programas corriendo cada vez m&aacute;s lento,
 a&uacute;n con los CPUs corriendo cada vez m&aacute;s r&aacute;pido,
 se requieren programadores que comiencen a consideras las
 implicaciones de bajo nivel del c&oacute;digo que ellos han escrito.
</p>

<p>De esta manera, a&uacute;n si Ud. nunca pretende escribir la
 m&aacute;s sencilla l&iacute;nea de c&oacute;digo en ensamblador, el
 aprender el lenguaje ensamblador y el aprender a pensar en lenguaje
 ensamblador, es una de las mejores cosas que Ud. puede hacer para
 aprender como codificar mejor.</p>

<p class="remark"><a name="note01" id="note01">Nota 1:</a><br />
 La ley de Moore establece que la tecnolog&iacute;a de los
 semiconductores se duplica en capacidad o desempe&ntilde;o cada 18
 meses.<br />
 La ley de Moore no dice nada acerca del rendimiento. Solo menciona que
 el n&uacute;mero de transistores se duplica cada dos a&ntilde;os. Un
 ARTIFACT de las progresiones de la Ley de Moore ha sido que el
 desempe&ntilde;o hasta hace poco, ha crecido a la par.</p>

<p class="remark">Acerca del Autor:<br />
 Randall Hyde es el autor de las recientes publicaciones &quot;Write
 Great Code&quot; y &quot;The Art of Assembly Language&quot; (ambos de
 No Starch Press), una de las publicaciones m&aacute;s altamente
 recomendadas para el lenguaje ensamblador para procesadores tipo
 Intel. Existen similares recursos comparables para HLASM y los
 procesadores de mainframe.</p>

/HTML

         HTMLDEF HYDE.ESL
<!-- ES -->
<p>
 Ir a <a href="#chap01">Un Excelente C&oacute;digo Va Mas All&aacute;
 de lo Ordinario</a>.<br />
 Ir a <a href="#chap02">La Clave es la Eficiencia</a>.<br />
 Ir a <a href="#chap03">Practique Sus Habilidades</a>.<br />
 Ir a <a href="#chap04">Aprenda el Lenguaje Ensamblador</a>.<br />
 Ir a <a href="#chap05">El Ensamblador No Est&aacute; Muerto</a>.<br />
 Ir a <a href="#chap06">Domine las Instrucciones de Bajo Nivel</a>.
 <br />
 Ir a <a href="#chap07">Conclusi&oacute;n</a>.
</p>

/HTML

         HTMLDEF HYDE.ESF
<!-- ES -->
<p class="footer" align="center">
 Este texto fue escrito por Randall Hyde, traducido por Miguel Soltero
 Diaz<br/>
 &copy; Copyright: Randall Hyde, 2004. Derechos reservados.<br />
 This translation: &copy; Copyright: Miguel Soltero Diaz, 2003-2006.
 Derechos reservados.<br />
 E-mail <a href="mailto:rhyde@cs.ucr.edu">el autor</a>
 o <a href="mailto:migusd@yahoo.com">el traductor </a>.</p>

/HTML

         HTMLDEF HYDE.FRH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/hyde.htm -->
<!-- -->
<title>Why Learning Assembly Language Is Still a Good Idea</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe" />
<meta http-equiv="description"
      content="Why Learning Assembly Language Is Still a Good Idea."
      />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF HYDE.FRT
<!-- UK -->
<h1 align="center">Why Learning Assembly Language Is Still a Good Idea.
</h1>

<p class="header" align="center">By Randall Hyde, May 06, 2004</p>

<p class="remark">
 Please note:<br />
 The article below was originally written with Intel-type processors
 in mind
 and referred to their assembly language. However, since the arguments
 presented by the author hold for mainframes as well, we thought it
 relevant
 to publish it in the hlasm.com site as well.</p>

<p class="remark">
 Disclaimer:<br />
 Bixoft converted &quot;Why Learning Assembly Language Is Still a Good
 Idea&quot; into a web-document with permission of the original author
 for
 re-publication. We also applied several minor changes. Nevertheless,
 the
 copyrights of Mr. Hyde still apply to the document below.</p>

<p class="remark">
 Contact:<br />
 Mr. Hyde will gladly accept your comments, remarks etc.
 <a href="mailto:rhyde@cs.ucr.edu">e-mail Randall hyde</a>.</p>

<p>This document contains the following sections:</p>
<ul>
 <li><a href="#chap01">Great Code Goes Beyond the Ordinary</a></li>
 <li><a href="#chap02">Efficiency Is the Key</a></li>
 <li><a href="#chap03">Practice Your Skills</a></li>
 <li><a href="#chap04">Learn Assembly Language</a></li>
 <li><a href="#chap05">Assembly Isn't Dead</a></li>
 <li><a href="#chap06">Master Low-Level Statements</a></li>
 <li><a href="#chap07">Conclusion</a></li>
</ul>

/HTML

         HTMLDEF HYDE.FR1
<!-- UK -->
<h2><a name="chap01" id="chap01">
 Great Code Goes Beyond the Ordinary</a></h2>

<p>The world is full of case studies outlining software engineering
 disasters.
 Almost every programmer has had to work on a project involving &quot;
 less
 than stellar&quot; source code that was difficult to read and
 maintain. On
 rare occasion, some programmers get the opportunity to work on a
 well-designed system, an awe-inspiring piece of craftsmanship that
 usually
 produces the exclamation, &quot;This is truly great code!&quot;</p>

<p>Clearly, professional software engineers should strive to achieve
 this
 level of greatness in all their code. But the real question is,
 &quot;What
 makes code great?&quot; Simply &quot;meeting specifications&quot; is
 not
 how one writes great code. True, in today's software environment,
 some
 might actually believe that simply meeting the specifications sets an
 application apart, as many development projects fail to meet their
 basic
 design goals.</p>

<p>However, in other areas greatness is rarely defined by doing the
 expected
 and succeeding; greatness is defined by going above and beyond what
 is
 expected. Software engineers should expect no less from great
 software - it
 should go above and beyond the standard conventions for software
 development.</p>

/HTML

         HTMLDEF HYDE.FR2
<!-- UK -->
<h2><a name="chap02" id="chap02">
 Efficiency Is the Key</a></h2>

<p>Because greatness is a multifaceted attribute, a short article such
 as this
 one cannot begin to describe all the possible components of a great
 piece of
 software. Instead, this article will describe one component of
 writing great
 code that has been neglected in recent years as computer systems
 have
 increased in capacity and power: efficiency.</p>

<p>Anyone who has been around the computer industry for a decade or
 more is
 well aware of this phenomenon: machines are getting exponentially
 more
 powerful per unit cost, yet users do not perceive this improvement in
 the
 applications that they purchase. For example, while word processors
 are
 clearly faster today than they were 21 years ago, they aren't 16,384
 times
 faster as Moore's Law <a href="#note01">[1]</a> would suggest. Part
 of the
 problem, of course, is that some of the additional processing power
 has
 been employed to support new features (such as a bitmapped display),
 but a
 large part of the reason software users aren't seeing an increase in
 speed
 is because many of today's programmers don't take the time to write
 efficient
 software, or they simply don't know how to write fast software.</p>

<p>Outrageous software development schedules that don't give
 programmers
 enough time to develop efficient code is certainly a problem, but
 many of
 today's programmers have grown up with fast CPUs, whose speed has
 made up for
 poor coding habits and, as such, many of these programmers have never
 had to
 learn how to write fast code.</p>

<p>Unfortunately, when software performance is less than optimal,
 these
 programmers generally don't know how to correct the problems with
 their
 software. They'll often spout things like &quot;The 90-10 rule,&quot;
 or
 &quot;I'll just use a profiler to correct the performance problems,
 &quot;
 but the truth is they don't really know how to improve the
 performance of
 their underperforming applications. It's all well and good to say,
 &quot;I'll just find a better algorithm!&quot; However, finding and
 deploying that algorithm, if one actually exists, is another matter.
</p>

<p>Most of the time you can achieve very good performance boosts by
 simply
 improving the implementation of an existing algorithm. A computer
 scientist
 may argue that a constant improvement in performance isn't as good as,
 say,
 going from an algorithm with O(n^2) performance to one with O(n lg n)
 performance, but the truth is that most of the time a constant factor
 of two
 or three times improvement, applied throughout a piece of software,
 can make
 the difference between a practical application and one that is simply
 too
 slow to comfortably use. And it is exactly this type of optimization
 with
 which most modern programmers have little experience.</p>

<p>Unfortunately, writing efficient software is a skill, one that must
 be
 practiced to learn and one that must be practiced to maintain.
 Programmers
 who never practice this skill will never be able to apply it the day
 they
 discover that their software is running too slow. Even if a programmer
 has
 mastered the skill of writing efficient software, the programmer must
 practice them on a regular basis. So, there are two reasons why some
 programmers don't write efficient (and great) software today: they
 never
 learned how to write efficient code in the first place, or they've
 allowed
 their programming skills to atrophy to the point that they no longer
 write
 efficient code as a matter of course.</p>

/HTML

         HTMLDEF HYDE.FR3
<!-- UK -->
<h2><a name="chap03" id="chap03">
 Practice Your Skills</a></h2>

<p>For programmers who have simply allowed their skills to falter from
 lack of
 use, the solution is obvious - practice writing efficient code, even
 when the
 project doesn't absolutely require it. This doesn't mean, of course,
 that a
 practicing engineer should sacrifice project schedules, readable and
 maintainable code, or other important software attributes for the
 sake of
 efficiency.</p>

<p>What it does mean is that the software engineer should keep
 efficiency in
 mind while designing and implementing the software. The programmer
 should
 make a conscious decision to choose a less efficient implementation
 over a
 more efficient implementation based on economic or engineering
 concerns,
 rather than simply utilizing the first implementation that comes to
 mind.
 Just as often as not, this simple consideration of different (and
 possibly
 more efficient) implementations is all that is necessary to produce
 great
 code. After all, sometimes the more efficient implementation is no
 more
 difficult to create than an inefficient one. All an experienced
 engineer
 may need are multiple options from which to choose.</p>

<p>Unfortunately, unrealistic software development schedules have led
 many
 professional engineers to shortcut the careful consideration of
 software
 development and implementation. The end result is that many
 professional
 programmers have gotten out of the habit of writing great code.
 Fortunately, this process is easy to reverse by practicing good
 software
 development methodologies, such as considering multiple algorithms
 and
 their implementations, as often as possible.</p>

/HTML

         HTMLDEF HYDE.FR4
<!-- UK -->
<h2><a name="chap04" id="chap04">
 Learn Assembly Language</a></h2>

<p>What about the programmer who has never learned to write efficien
 code
 in the first place? How does one learn how to efficiently implement
 an
 application? Unfortunately, colleges and universities today largely
 take
 the attitude that if you choose a good algorithm, you don't have to
 worry
 about the implementation of that algorithm. Far too many students
 come out
 of their data structures and algorithms courses with the attitude
 that if you
 can only achieve a constant (that is, O(1)) performance improvement,
 you've
 really achieved nothing at all, and that attempts at improvement are
 a
 waste of time.</p>

<p>Advances in computer architecture have exacerbated this problem -
 for
 example, you might hear a programmer say, &quot;If this program needs
 to be a
 little faster, just wait a year or so and CPUs will be twice as fast;
 there's no need to worry about it.&quot; And this attitude, probably
 more
 than any other, is why software performance doesn't keep pace with
 CPU
 performance.</p>

<p>With every new application, the programmer writes the software
 slower
 than it ought to run, on whatever current CPU they're using,
 believing that
 future CPU performance boosts will solve their problems. Of course,
 by the
 time the CPUs are fast enough to execute their software, the
 programmer has
 &quot;enhanced&quot; the software, and is now depending on yet
 another future
 version of the CPU. The cycle repeats almost endlessly, with CPU
 performance
 never really catching up with the demands of the software, until
 finally, the
 software's life comes to an end and the programmer begins the cycle
 anew
 with a different application.</p>

<p>The truth is, it is possible to write software that executes
 efficiently
 on contemporary processors. Programmers were doing great things with
 software back in the days when their applications were running on
 eight-bit
 5MHz 8088 PCs (or even further back on sub-megaherz mainframe
 processors);
 the same techniques they used to squeeze every last bit of
 performance out of
 those low-end CPUs provides the key to high-performance applications
 today.
 So, how did they achieve reasonable performance on such low-end
 processors?
 The answer is not a secret - they understood how the underlying
 hardware
 operated and they wrote their code accordingly. That same knowledge,
 of the
 underlying hardware, is the key to writing efficient software today.
 </p>

<p>Often, you'll hear old-time programmers make the comment that
 truly
 efficient software is written in assembly language. However, the
 reason
 such software is efficient isn't because the implementation language
 imparts some magical efficiency properties to that software - it's
 perfectly possible to write inefficient software in assembly
 language. No,
 the real reason assembly language programs tend to be more efficient
 than
 programs written in other languages is because assembly language
 forces the
 programmer to consider how the underlying hardware operates with each
 machine instruction they write. And this is the key to learning how
 to
 write efficient code - keeping one's eye on the low-level
 capabilities of
 the machine.</p>

<p>Those same old-time programmers who claim that truly efficient
 software
 is written in assembly language also offer another common piece of
 advice -
 if you want to learn how to write great high-level language code,
 learn how
 to program in assembly language.</p>

<p>This is very good advice. After all, high-level compilers translate
 their
 high-level source statements into low-level machine code. So if you
 know
 assembly language for your particular machine, you'll be able to
 correlate
 high-level language constructs with the machine language sequences
 that a
 compiler generates. And with this understanding, you'll be able to
 choose
 better high-level language statements based on your understanding of
 how
 compilers translate those statements into machine code.</p>

<p>All too often, high-level language programmers pick certain
 high-level
 language sequences without any knowledge of the execution costs of
 those
 statements. Learning assembly language forces the programmer to learn
 the
 costs associated with various high-level constructs. So even if the
 programmer never actually writes applications in assembly language,
 the
 knowledge makes the programmer aware of the problems with certain
 inefficient sequences so they can avoid them in their high-level
 code.</p>

<p>Learning assembly language, like learning any new programming
 language,
 requires considerable effort. The problem is that assembly language
 itself is
 deceptively simple. You can learn the 20 or 30 machine instructions
 found
 in common assembly applications in just a few days. You can even
 learn how
 to put those machine instructions together to solve problems the
 same way
 you'd solve those same problems in a high-level language in just a
 few
 short weeks.</p>

<p>Unfortunately, this isn't the kind of knowledge that a high-level
 language programmer will find useful when attempting to write
 efficient
 high-level code. To reap the benefits of knowing assembly language,
 a
 programmer has to learn to think in assembly language. Then, such a
 programmer can write very efficient high-level language code while
 thinking
 in assembly and writing high-level language statements. Though code
 written
 in this manner is truly great, there is one slight problem with this
 approach - it takes considerable effort to achieve this level. That's
 one
 of the reasons such code is great - because so few practitioners are
 capable of producing it.</p>

/HTML

         HTMLDEF HYDE.FR5
<!-- UK -->
<h2><a name="chap05" id="chap05">
 Assembly Isn't Dead</a></h2>

<p>Assembly language, of course, developed a very bad reputation
 throughout
 the 1990s. Advances in compiler technology, improved CPU performance,
 and
 the &quot;software crisis&quot; all conspired to suggest that
 assembly
 language was a &quot;dead&quot; language that was no longer needed.
 As
 assembly language was a bit more difficult to learn than traditional
 high-level programming languages, students (and instructors!) gladly
 embraced
 this brave new high-level world, abandoning difficult-to-learn
 assembly in
 favor of higher and higher level languages.</p>

<p>The only problem with the demise of assembly language is that as
 its
 popularity waned, so did the percentage of programmers who understood
 the
 low-level ramifications of the code they were writing. Those
 programmers
 who were claiming that assembly language was dead already knew how
 to think
 in assembly language and how to apply that low-level thinking to
 their
 high-level code; in effect, enjoying the benefits of assembly
 language
 while writing high-level language code. However, as new programmers
 worked
 their way into the system, without the benefits of having written
 several
 applications in assembly, the efficiency of software applications
 began to
 decline.</p>

<p>Though it would be foolish to start claiming that programmers
 should
 begin writing commercial applications in assembly language, it is
 clear
 today that the demise of assembly language's popularity has had a
 big
 impact on the efficiency of modern software. To reverse this trend,
 one of
 two things must happen: programmers must once again begin studying
 assembly
 language, or they must somehow pick up this low-level programming
 knowledge
 some other way.</p>

<p>Learning assembly language still remains the best way to learn the
 basic
 organization of the underlying machine. Those programmers who take
 the
 effort to master assembly language become some of the very best
 high-level
 language programmers around. Their ability to choose appropriate
 high-level
 constructs to produce efficient code, their ability to read
 disassembled
 high-level language code and detect heinous bugs in a system, and
 their
 understanding of how the whole system operates elevates them to near
 legendary status among their peers. These are the programmers
 everyone goes
 to when they have questions how to implement something. These are
 the
 engineers who garner the respect of everyone around them. They are
 the ones
 other programmers want to emulate. These are the programmers who
 write
 great code.</p>

<p>If knowing assembly language helps make programmers great, an
 obvious
 question is &quot;Why don't more programmers learn assembly
 language?&quot;
 Part of the problem is prejudice: many college and university
 instructors
 that teach assembly programming begin their course with a statement
 like,
 &quot;No one really needs to know this stuff, and you'll never use
 it, but
 it is required by this program so we've got to struggle through the
 next
 several weeks studying this material.&quot; After four years of this
 type
 of attitude from their instructors, it's no surprise that students
 really
 want nothing whatsoever at all to do with assembly language
 programming.</p>

<p>Still, once it becomes obvious to a coder that the truly great
 programmers are the ones who've mastered assembly language
 programming, you
 might ask why more programmers don't pick up this valuable knowledge.
 The
 only problem is that, traditionally, most programmers have found it
 difficult to master assembly language. Assembly is radically
 different than
 most high-level languages, so learning assembly language is almost as
 much
 work as learning programming from scratch.</p>

<p>To someone attempting to learn assembly, it often seems as though
 none of
 their past programming experience is of any help. All too often, an
 engineer learning assembly becomes frustrated with the fact that they
 know
 how to achieve a goal in a high-level language but they cannot
 figure out
 how to achieve the same thing in assembly. For many programmers,
 switching
 from &quot;thinking in a high-level language&quot; to &quot;thinking
 in an
 assembly language&quot; becomes an insurmountable problem.</p>

<p>As an instructor teaching assembly language for over a decade at
 the
 University of California, I was quite aware of the problems students
 have
 making the transition from the high-level programming paradigm to the
 low-level programming paradigm.</p>

<p>In the early 1990s, Microsoft provided a solution with the
 introduction
 of the Microsoft Macro Assembler (MASM) v6.0 - the inclusion of
 high-level
 control structures in an assembly language translator. While these
 new
 statements are definitely not true assembly language, they do provide
 a
 nice transition path from traditional, imperative, high-level
 programming
 languages to assembly. A programmer can continue to use statements
 like IF,
 WHILE, and FOR while learning other aspects of assembly language
 programs.
 This lets the programmer learn assembly language programming in
 graduated
 steps rather than having to make the plunge all at once.</p>

<p>Equally, for IBM's High-Level Assembler (HLASM) various macro
 libraries
 that implement the same functionality have been around for many
 years.</p>

/HTML

         HTMLDEF HYDE.FR6
<!-- UK -->
<h2><a name="chap06" id="chap06">
 Master Low-Level Statements</a></h2>

<p>Of course, a programmer cannot truly call themselves an assembly
 language
 programmer until they've mastered the equivalent low-level
 statements.
 Nevertheless, these high-level control structures provide an
 excellent
 bridge between high-level languages and assembly language, allowing
 the
 student to leverage their existing high-level programming knowledge
 to
 learn assembly language. Alas, there are few, if any, appropriate
 textbooks
 that teach assembly language programming using this high-level to
 low-level
 approach using the high-level control structures that MASM
 (or HLASM)
 provides.</p>

<p>Another problem with the high-level to low-level transition is that
 most
 high-level languages provide large libraries of routines to handle
 mundane
 tasks such as input/output, numeric conversions, and string
 operations. A
 big problem that beginning assembly programmers face is that they
 typically
 need the ability to input and output numeric quantities or do
 numeric-to-string conversions (and vice versa) in order to write and
 test
 very simple programs. Unfortunately, most assembly language
 development
 systems leave it up to the programmer to provide this functionality
 for
 their applications. This presents a Catch-22 situation: it is
 difficult to
 learn assembly language without these functions, but you can't
 really write
 such functions until you learn assembly language.</p>

<p class="remark">Remark:<br />
 HLASM provides a large number of standard macro's for doing I/O.
 For numeric conversions, various instructions are supported, giving
 HLASM-students an advantage over MASM-students.</p>

<p>These roadblocks effectively prevent all but the most determined
 programmers from mastering assembly language. As such, throughout
 the 1990s
 and early 2000s the use of assembly language continued to wane.
 Seeing the
 decline in software efficiency and quality that seemed to track the
 decline
 of the use of assembly language, I set out on a crusade in the
 mid-1990s to
 encourage programmers to learn assembly language programming.</p>

<p>The first milestone I achieved was the release in the mid-1990s of
 the
 electronic edition of The Art of Assembly Language. This book, along
 with
 the use of the accompanying UCR Standard Library for 80x86 Language
 Programmers, reduced the effort needed to learn assembly language
 programming. Tens of thousands of programmers have learned assembly
 language programming using this textbook and the complementary set of
 library routines.</p>

<p>The only problem with the electronic edition of The Art of Assembly
 Language and the UCR Standard Library for 80x86 Assembly Language
 Programmers is that they were almost obsolete as soon as they
 appeared on
 the Internet because they taught the reader how to create 16-bit
 DOS
 applications (their release almost corresponded with the release of
 Windows
 95, which was one of the last nails in the 16-bit programming
 coffin).</p>

<p>Still on the crusade, I started to work on a brand-new, high-level
 assembler (HLA, the High-Level Assembler), a new version of The Art
 of
 Assembly Language, and a new, 32-bit, HLA-based set of library
 routines.
 This effort culminated with the release of the published edition of
 The Art
 of Assembly (AoA) in 2003. To date, thousands and thousands of
 programmers
 have enthusiastically embraced this new way of learning assembly
 language
 using AoA, HLA, and the HLA Standard Library.</p>

<p>Though The Art of Assembly Language and HLA are increasing the
 ranks of
 assembly language programmers every day, the solution they provide
 is for
 the next generation of programmers.</p>

<p>What about current programmers who've missed the opportunity to
 learn
 assembly language while in school and master the concepts of
 machine
 organization before the realities of project schedules rob them of
 the time
 needed to develop the necessary expertise to write great code? The
 question
 is, &quot;Can machine organization be effectively taught to
 professional
 programmers without simultaneously teaching assembly
 language?&quot;</p>

<p>While it is fairly clear that learning assembly language is the
 best
 advice I can give anyone who is interested in writing great,
 efficient
 code, I am also convinced that someone can study the subject of
 machine
 organization sans assembly and still learn how to write better code.
 Perhaps their code won't be quite as good as the programmer who
 has
 mastered assembly language, but it will be better than the software
 they've
 written devoid of this knowledge.</p>

<p>Most importantly, while it is difficult to sell the idea of
 learning
 assembly language to the current generation of programmers (two
 decades
 of anti-assembly propaganda have assured this), most programmers
 realize
 that if they just &quot;learned a little more about how the
 underlying
 hardware works&quot; they would be able to write better code. So what
 is
 needed is a set of materials that teach data representation, memory
 organization, elements of computer architecture, how input/output
 operates,
 and the correspondence between high-level programming language
 statements.</p>

<p>That is, teach them all the things that they'd have to learn when
 learning assembly language, with the single exception of mastering
 the
 assembly language programming paradigm. Recently, I've begun to
 focus on
 this group, working on books like Write Great Code, Volume One:
 Understanding the Machine, a book on machine organization that
 doesn't
 specifically teach assembly language programming. While someone
 studying
 machine organization might not write code as great as someone who
 takes the
 time to master assembly language, my hope is that those who would
 never
 consider learning assembly language might be willing to pick up a
 book like
 Write Great Code and learn to write better code, if not totally
 great
 code.</p>

/HTML

         HTMLDEF HYDE.FR7
<!-- UK -->
<h2><a name="chap07" id="chap07">
 Conclusion</a></h2>

<p>To write great code requires one to write efficient code. Writing
 efficient code requires good algorithm choices and a good
 implementation of
 those algorithms. The best implementations are going to be written
 by those
 who've mastered assembly language or fully understand the low-level
 implementation of the high-level language statements they're
 choosing. This
 doesn't mean that we'll return to the days when major commercial
 applications were written entirely in assembly language. However,
 to
 reverse the trend of software running slower and slower even though
 CPUs
 are running faster and faster is going to require programmers to
 begin
 considering the low-level implications of the code that they write.
</p>

<p>So, even if you never intend to write a single line of assembly
 language
 code again, learning assembly language, and learning to think in
 assembly
 language, is one of the best things you can do to learn how to write
 better
 assembly code.</p>

<p class="remark"><a name="note01" id="note01">Note 1:</a><br />
 Moore's Law states that semiconductor technology doubles in capacity
 or performance at a given price point about every 18 months.<br />
 Moore's law says nothing about performance. It only states that the
 number of
 transistors doubles every two years. One artifact of the progressions
 of
 Moore's law has been that performance has, until recently, been
 keeping
 pace.</p>

<p class="remark">About the Author:<br />
 Randall Hyde is the author of the recently released &quot;Write Great
 Code&quot; and &quot;The Art of Assembly Language&quot; (both from
 No Starch
 Press), one of the most highly recommended resources on assembly
 language for
 Intel-type processors. For HLASM and mainframe processors comparable
 other
 resources exist.</p>

/HTML

         HTMLDEF HYDE.FRL
<!-- UK -->
<p>
 To <a href="#chap01">Great Code Goes Beyond the Ordinary</a>.<br />
 To <a href="#chap02">Efficiency Is the Key</a>.<br />
 To <a href="#chap03">Practice Your Skills</a>.<br />
 To <a href="#chap04">Learn Assembly Language</a>.<br />
 To <a href="#chap05">Assembly Isn't Dead</a>.<br />
 To <a href="#chap06">Master Low-Level Statements</a>.<br />
 To <a href="#chap07">Conclusion</a>.
</p>

/HTML

         HTMLDEF HYDE.FRF
<!-- UK -->
<p class="footer" align="center">
 This text was written by Randall Hyde<br/>
 &copy; Copyright: Randall Hyde, 2004. All rights reserved.<br />
 <a href="mailto:rhyde@cs.ucr.edu">e-mail</a> the author.</p>

/HTML

         HTMLDEF HYDE.ITH
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/hyde.htm -->
<!-- -->
<title>Why Learning Assembly Language Is Still a Good Idea</title>
<link rel="shortcut icon" href="../images/hlasm.ico"
      type="image/x-icon" />
<meta http-equiv="keywords"
      content="Assembler, Programming, Mainframe" />
<meta http-equiv="description"
      content="Why Learning Assembly Language Is Still a Good Idea."
      />
<meta http-equiv="robots"
      content="index,follow" />
/HTML

         HTMLDEF HYDE.ITT
<!-- UK -->
<h1 align="center">Why Learning Assembly Language Is Still a Good Idea.
</h1>

<p class="header" align="center">By Randall Hyde, May 06, 2004</p>

<p class="remark">
 Please note:<br />
 The article below was originally written with Intel-type processors
 in mind
 and referred to their assembly language. However, since the arguments
 presented by the author hold for mainframes as well, we thought it
 relevant
 to publish it in the hlasm.com site as well.</p>

<p class="remark">
 Disclaimer:<br />
 Bixoft converted &quot;Why Learning Assembly Language Is Still a Good
 Idea&quot; into a web-document with permission of the original author
 for
 re-publication. We also applied several minor changes. Nevertheless,
 the
 copyrights of Mr. Hyde still apply to the document below.</p>

<p class="remark">
 Contact:<br />
 Mr. Hyde will gladly accept your comments, remarks etc.
 <a href="mailto:rhyde@cs.ucr.edu">e-mail Randall hyde</a>.</p>

<p>This document contains the following sections:</p>
<ul>
 <li><a href="#chap01">Great Code Goes Beyond the Ordinary</a></li>
 <li><a href="#chap02">Efficiency Is the Key</a></li>
 <li><a href="#chap03">Practice Your Skills</a></li>
 <li><a href="#chap04">Learn Assembly Language</a></li>
 <li><a href="#chap05">Assembly Isn't Dead</a></li>
 <li><a href="#chap06">Master Low-Level Statements</a></li>
 <li><a href="#chap07">Conclusion</a></li>
</ul>

/HTML

         HTMLDEF HYDE.IT1
<!-- UK -->
<h2><a name="chap01" id="chap01">
 Great Code Goes Beyond the Ordinary</a></h2>

<p>The world is full of case studies outlining software engineering
 disasters.
 Almost every programmer has had to work on a project involving &quot;
 less
 than stellar&quot; source code that was difficult to read and
 maintain. On
 rare occasion, some programmers get the opportunity to work on a
 well-designed system, an awe-inspiring piece of craftsmanship that
 usually
 produces the exclamation, &quot;This is truly great code!&quot;</p>

<p>Clearly, professional software engineers should strive to achieve
 this
 level of greatness in all their code. But the real question is,
 &quot;What
 makes code great?&quot; Simply &quot;meeting specifications&quot; is
 not
 how one writes great code. True, in today's software environment,
 some
 might actually believe that simply meeting the specifications sets an
 application apart, as many development projects fail to meet their
 basic
 design goals.</p>

<p>However, in other areas greatness is rarely defined by doing the
 expected
 and succeeding; greatness is defined by going above and beyond what
 is
 expected. Software engineers should expect no less from great
 software - it
 should go above and beyond the standard conventions for software
 development.</p>

/HTML

         HTMLDEF HYDE.IT2
<!-- UK -->
<h2><a name="chap02" id="chap02">
 Efficiency Is the Key</a></h2>

<p>Because greatness is a multifaceted attribute, a short article such
 as this
 one cannot begin to describe all the possible components of a great
 piece of
 software. Instead, this article will describe one component of
 writing great
 code that has been neglected in recent years as computer systems
 have
 increased in capacity and power: efficiency.</p>

<p>Anyone who has been around the computer industry for a decade or
 more is
 well aware of this phenomenon: machines are getting exponentially
 more
 powerful per unit cost, yet users do not perceive this improvement in
 the
 applications that they purchase. For example, while word processors
 are
 clearly faster today than they were 21 years ago, they aren't 16,384
 times
 faster as Moore's Law <a href="#note01">[1]</a> would suggest. Part
 of the
 problem, of course, is that some of the additional processing power
 has
 been employed to support new features (such as a bitmapped display),
 but a
 large part of the reason software users aren't seeing an increase in
 speed
 is because many of today's programmers don't take the time to write
 efficient
 software, or they simply don't know how to write fast software.</p>

<p>Outrageous software development schedules that don't give
 programmers
 enough time to develop efficient code is certainly a problem, but
 many of
 today's programmers have grown up with fast CPUs, whose speed has
 made up for
 poor coding habits and, as such, many of these programmers have never
 had to
 learn how to write fast code.</p>

<p>Unfortunately, when software performance is less than optimal,
 these
 programmers generally don't know how to correct the problems with
 their
 software. They'll often spout things like &quot;The 90-10 rule,&quot;
 or
 &quot;I'll just use a profiler to correct the performance problems,
 &quot;
 but the truth is they don't really know how to improve the
 performance of
 their underperforming applications. It's all well and good to say,
 &quot;I'll just find a better algorithm!&quot; However, finding and
 deploying that algorithm, if one actually exists, is another matter.
</p>

<p>Most of the time you can achieve very good performance boosts by
 simply
 improving the implementation of an existing algorithm. A computer
 scientist
 may argue that a constant improvement in performance isn't as good as,
 say,
 going from an algorithm with O(n^2) performance to one with O(n lg n)
 performance, but the truth is that most of the time a constant factor
 of two
 or three times improvement, applied throughout a piece of software,
 can make
 the difference between a practical application and one that is simply
 too
 slow to comfortably use. And it is exactly this type of optimization
 with
 which most modern programmers have little experience.</p>

<p>Unfortunately, writing efficient software is a skill, one that must
 be
 practiced to learn and one that must be practiced to maintain.
 Programmers
 who never practice this skill will never be able to apply it the day
 they
 discover that their software is running too slow. Even if a programmer
 has
 mastered the skill of writing efficient software, the programmer must
 practice them on a regular basis. So, there are two reasons why some
 programmers don't write efficient (and great) software today: they
 never
 learned how to write efficient code in the first place, or they've
 allowed
 their programming skills to atrophy to the point that they no longer
 write
 efficient code as a matter of course.</p>

/HTML

         HTMLDEF HYDE.IT3
<!-- UK -->
<h2><a name="chap03" id="chap03">
 Practice Your Skills</a></h2>

<p>For programmers who have simply allowed their skills to falter from
 lack of
 use, the solution is obvious - practice writing efficient code, even
 when the
 project doesn't absolutely require it. This doesn't mean, of course,
 that a
 practicing engineer should sacrifice project schedules, readable and
 maintainable code, or other important software attributes for the
 sake of
 efficiency.</p>

<p>What it does mean is that the software engineer should keep
 efficiency in
 mind while designing and implementing the software. The programmer
 should
 make a conscious decision to choose a less efficient implementation
 over a
 more efficient implementation based on economic or engineering
 concerns,
 rather than simply utilizing the first implementation that comes to
 mind.
 Just as often as not, this simple consideration of different (and
 possibly
 more efficient) implementations is all that is necessary to produce
 great
 code. After all, sometimes the more efficient implementation is no
 more
 difficult to create than an inefficient one. All an experienced
 engineer
 may need are multiple options from which to choose.</p>

<p>Unfortunately, unrealistic software development schedules have led
 many
 professional engineers to shortcut the careful consideration of
 software
 development and implementation. The end result is that many
 professional
 programmers have gotten out of the habit of writing great code.
 Fortunately, this process is easy to reverse by practicing good
 software
 development methodologies, such as considering multiple algorithms
 and
 their implementations, as often as possible.</p>

/HTML

         HTMLDEF HYDE.IT4
<!-- UK -->
<h2><a name="chap04" id="chap04">
 Learn Assembly Language</a></h2>

<p>What about the programmer who has never learned to write efficien
 code
 in the first place? How does one learn how to efficiently implement
 an
 application? Unfortunately, colleges and universities today largely
 take
 the attitude that if you choose a good algorithm, you don't have to
 worry
 about the implementation of that algorithm. Far too many students
 come out
 of their data structures and algorithms courses with the attitude
 that if you
 can only achieve a constant (that is, O(1)) performance improvement,
 you've
 really achieved nothing at all, and that attempts at improvement are
 a
 waste of time.</p>

<p>Advances in computer architecture have exacerbated this problem -
 for
 example, you might hear a programmer say, &quot;If this program needs
 to be a
 little faster, just wait a year or so and CPUs will be twice as fast;
 there's no need to worry about it.&quot; And this attitude, probably
 more
 than any other, is why software performance doesn't keep pace with
 CPU
 performance.</p>

<p>With every new application, the programmer writes the software
 slower
 than it ought to run, on whatever current CPU they're using,
 believing that
 future CPU performance boosts will solve their problems. Of course,
 by the
 time the CPUs are fast enough to execute their software, the
 programmer has
 &quot;enhanced&quot; the software, and is now depending on yet
 another future
 version of the CPU. The cycle repeats almost endlessly, with CPU
 performance
 never really catching up with the demands of the software, until
 finally, the
 software's life comes to an end and the programmer begins the cycle
 anew
 with a different application.</p>

<p>The truth is, it is possible to write software that executes
 efficiently
 on contemporary processors. Programmers were doing great things with
 software back in the days when their applications were running on
 eight-bit
 5MHz 8088 PCs (or even further back on sub-megaherz mainframe
 processors);
 the same techniques they used to squeeze every last bit of
 performance out of
 those low-end CPUs provides the key to high-performance applications
 today.
 So, how did they achieve reasonable performance on such low-end
 processors?
 The answer is not a secret - they understood how the underlying
 hardware
 operated and they wrote their code accordingly. That same knowledge,
 of the
 underlying hardware, is the key to writing efficient software today.
 </p>

<p>Often, you'll hear old-time programmers make the comment that
 truly
 efficient software is written in assembly language. However, the
 reason
 such software is efficient isn't because the implementation language
 imparts some magical efficiency properties to that software - it's
 perfectly possible to write inefficient software in assembly
 language. No,
 the real reason assembly language programs tend to be more efficient
 than
 programs written in other languages is because assembly language
 forces the
 programmer to consider how the underlying hardware operates with each
 machine instruction they write. And this is the key to learning how
 to
 write efficient code - keeping one's eye on the low-level
 capabilities of
 the machine.</p>

<p>Those same old-time programmers who claim that truly efficient
 software
 is written in assembly language also offer another common piece of
 advice -
 if you want to learn how to write great high-level language code,
 learn how
 to program in assembly language.</p>

<p>This is very good advice. After all, high-level compilers translate
 their
 high-level source statements into low-level machine code. So if you
 know
 assembly language for your particular machine, you'll be able to
 correlate
 high-level language constructs with the machine language sequences
 that a
 compiler generates. And with this understanding, you'll be able to
 choose
 better high-level language statements based on your understanding of
 how
 compilers translate those statements into machine code.</p>

<p>All too often, high-level language programmers pick certain
 high-level
 language sequences without any knowledge of the execution costs of
 those
 statements. Learning assembly language forces the programmer to learn
 the
 costs associated with various high-level constructs. So even if the
 programmer never actually writes applications in assembly language,
 the
 knowledge makes the programmer aware of the problems with certain
 inefficient sequences so they can avoid them in their high-level
 code.</p>

<p>Learning assembly language, like learning any new programming
 language,
 requires considerable effort. The problem is that assembly language
 itself is
 deceptively simple. You can learn the 20 or 30 machine instructions
 found
 in common assembly applications in just a few days. You can even
 learn how
 to put those machine instructions together to solve problems the
 same way
 you'd solve those same problems in a high-level language in just a
 few
 short weeks.</p>

<p>Unfortunately, this isn't the kind of knowledge that a high-level
 language programmer will find useful when attempting to write
 efficient
 high-level code. To reap the benefits of knowing assembly language,
 a
 programmer has to learn to think in assembly language. Then, such a
 programmer can write very efficient high-level language code while
 thinking
 in assembly and writing high-level language statements. Though code
 written
 in this manner is truly great, there is one slight problem with this
 approach - it takes considerable effort to achieve this level. That's
 one
 of the reasons such code is great - because so few practitioners are
 capable of producing it.</p>

/HTML

         HTMLDEF HYDE.IT5
<!-- UK -->
<h2><a name="chap05" id="chap05">
 Assembly Isn't Dead</a></h2>

<p>Assembly language, of course, developed a very bad reputation
 throughout
 the 1990s. Advances in compiler technology, improved CPU performance,
 and
 the &quot;software crisis&quot; all conspired to suggest that
 assembly
 language was a &quot;dead&quot; language that was no longer needed.
 As
 assembly language was a bit more difficult to learn than traditional
 high-level programming languages, students (and instructors!) gladly
 embraced
 this brave new high-level world, abandoning difficult-to-learn
 assembly in
 favor of higher and higher level languages.</p>

<p>The only problem with the demise of assembly language is that as
 its
 popularity waned, so did the percentage of programmers who understood
 the
 low-level ramifications of the code they were writing. Those
 programmers
 who were claiming that assembly language was dead already knew how
 to think
 in assembly language and how to apply that low-level thinking to
 their
 high-level code; in effect, enjoying the benefits of assembly
 language
 while writing high-level language code. However, as new programmers
 worked
 their way into the system, without the benefits of having written
 several
 applications in assembly, the efficiency of software applications
 began to
 decline.</p>

<p>Though it would be foolish to start claiming that programmers
 should
 begin writing commercial applications in assembly language, it is
 clear
 today that the demise of assembly language's popularity has had a
 big
 impact on the efficiency of modern software. To reverse this trend,
 one of
 two things must happen: programmers must once again begin studying
 assembly
 language, or they must somehow pick up this low-level programming
 knowledge
 some other way.</p>

<p>Learning assembly language still remains the best way to learn the
 basic
 organization of the underlying machine. Those programmers who take
 the
 effort to master assembly language become some of the very best
 high-level
 language programmers around. Their ability to choose appropriate
 high-level
 constructs to produce efficient code, their ability to read
 disassembled
 high-level language code and detect heinous bugs in a system, and
 their
 understanding of how the whole system operates elevates them to near
 legendary status among their peers. These are the programmers
 everyone goes
 to when they have questions how to implement something. These are
 the
 engineers who garner the respect of everyone around them. They are
 the ones
 other programmers want to emulate. These are the programmers who
 write
 great code.</p>

<p>If knowing assembly language helps make programmers great, an
 obvious
 question is &quot;Why don't more programmers learn assembly
 language?&quot;
 Part of the problem is prejudice: many college and university
 instructors
 that teach assembly programming begin their course with a statement
 like,
 &quot;No one really needs to know this stuff, and you'll never use
 it, but
 it is required by this program so we've got to struggle through the
 next
 several weeks studying this material.&quot; After four years of this
 type
 of attitude from their instructors, it's no surprise that students
 really
 want nothing whatsoever at all to do with assembly language
 programming.</p>

<p>Still, once it becomes obvious to a coder that the truly great
 programmers are the ones who've mastered assembly language
 programming, you
 might ask why more programmers don't pick up this valuable knowledge.
 The
 only problem is that, traditionally, most programmers have found it
 difficult to master assembly language. Assembly is radically
 different than
 most high-level languages, so learning assembly language is almost as
 much
 work as learning programming from scratch.</p>

<p>To someone attempting to learn assembly, it often seems as though
 none of
 their past programming experience is of any help. All too often, an
 engineer learning assembly becomes frustrated with the fact that they
 know
 how to achieve a goal in a high-level language but they cannot
 figure out
 how to achieve the same thing in assembly. For many programmers,
 switching
 from &quot;thinking in a high-level language&quot; to &quot;thinking
 in an
 assembly language&quot; becomes an insurmountable problem.</p>

<p>As an instructor teaching assembly language for over a decade at
 the
 University of California, I was quite aware of the problems students
 have
 making the transition from the high-level programming paradigm to the
 low-level programming paradigm.</p>

<p>In the early 1990s, Microsoft provided a solution with the
 introduction
 of the Microsoft Macro Assembler (MASM) v6.0 - the inclusion of
 high-level
 control structures in an assembly language translator. While these
 new
 statements are definitely not true assembly language, they do provide
 a
 nice transition path from traditional, imperative, high-level
 programming
 languages to assembly. A programmer can continue to use statements
 like IF,
 WHILE, and FOR while learning other aspects of assembly language
 programs.
 This lets the programmer learn assembly language programming in
 graduated
 steps rather than having to make the plunge all at once.</p>

<p>Equally, for IBM's High-Level Assembler (HLASM) various macro
 libraries
 that implement the same functionality have been around for many
 years.</p>

/HTML

         HTMLDEF HYDE.IT6
<!-- UK -->
<h2><a name="chap06" id="chap06">
 Master Low-Level Statements</a></h2>

<p>Of course, a programmer cannot truly call themselves an assembly
 language
 programmer until they've mastered the equivalent low-level
 statements.
 Nevertheless, these high-level control structures provide an
 excellent
 bridge between high-level languages and assembly language, allowing
 the
 student to leverage their existing high-level programming knowledge
 to
 learn assembly language. Alas, there are few, if any, appropriate
 textbooks
 that teach assembly language programming using this high-level to
 low-level
 approach using the high-level control structures that MASM
 (or HLASM)
 provides.</p>

<p>Another problem with the high-level to low-level transition is that
 most
 high-level languages provide large libraries of routines to handle
 mundane
 tasks such as input/output, numeric conversions, and string
 operations. A
 big problem that beginning assembly programmers face is that they
 typically
 need the ability to input and output numeric quantities or do
 numeric-to-string conversions (and vice versa) in order to write and
 test
 very simple programs. Unfortunately, most assembly language
 development
 systems leave it up to the programmer to provide this functionality
 for
 their applications. This presents a Catch-22 situation: it is
 difficult to
 learn assembly language without these functions, but you can't
 really write
 such functions until you learn assembly language.</p>

<p class="remark">Remark:<br />
 HLASM provides a large number of standard macro's for doing I/O.
 For numeric conversions, various instructions are supported, giving
 HLASM-students an advantage over MASM-students.</p>

<p>These roadblocks effectively prevent all but the most determined
 programmers from mastering assembly language. As such, throughout
 the 1990s
 and early 2000s the use of assembly language continued to wane.
 Seeing the
 decline in software efficiency and quality that seemed to track the
 decline
 of the use of assembly language, I set out on a crusade in the
 mid-1990s to
 encourage programmers to learn assembly language programming.</p>

<p>The first milestone I achieved was the release in the mid-1990s of
 the
 electronic edition of The Art of Assembly Language. This book, along
 with
 the use of the accompanying UCR Standard Library for 80x86 Language
 Programmers, reduced the effort needed to learn assembly language
 programming. Tens of thousands of programmers have learned assembly
 language programming using this textbook and the complementary set of
 library routines.</p>

<p>The only problem with the electronic edition of The Art of Assembly
 Language and the UCR Standard Library for 80x86 Assembly Language
 Programmers is that they were almost obsolete as soon as they
 appeared on
 the Internet because they taught the reader how to create 16-bit
 DOS
 applications (their release almost corresponded with the release of
 Windows
 95, which was one of the last nails in the 16-bit programming
 coffin).</p>

<p>Still on the crusade, I started to work on a brand-new, high-level
 assembler (HLA, the High-Level Assembler), a new version of The Art
 of
 Assembly Language, and a new, 32-bit, HLA-based set of library
 routines.
 This effort culminated with the release of the published edition of
 The Art
 of Assembly (AoA) in 2003. To date, thousands and thousands of
 programmers
 have enthusiastically embraced this new way of learning assembly
 language
 using AoA, HLA, and the HLA Standard Library.</p>

<p>Though The Art of Assembly Language and HLA are increasing the
 ranks of
 assembly language programmers every day, the solution they provide
 is for
 the next generation of programmers.</p>

<p>What about current programmers who've missed the opportunity to
 learn
 assembly language while in school and master the concepts of
 machine
 organization before the realities of project schedules rob them of
 the time
 needed to develop the necessary expertise to write great code? The
 question
 is, &quot;Can machine organization be effectively taught to
 professional
 programmers without simultaneously teaching assembly
 language?&quot;</p>

<p>While it is fairly clear that learning assembly language is the
 best
 advice I can give anyone who is interested in writing great,
 efficient
 code, I am also convinced that someone can study the subject of
 machine
 organization sans assembly and still learn how to write better code.
 Perhaps their code won't be quite as good as the programmer who
 has
 mastered assembly language, but it will be better than the software
 they've
 written devoid of this knowledge.</p>

<p>Most importantly, while it is difficult to sell the idea of
 learning
 assembly language to the current generation of programmers (two
 decades
 of anti-assembly propaganda have assured this), most programmers
 realize
 that if they just &quot;learned a little more about how the
 underlying
 hardware works&quot; they would be able to write better code. So what
 is
 needed is a set of materials that teach data representation, memory
 organization, elements of computer architecture, how input/output
 operates,
 and the correspondence between high-level programming language
 statements.</p>

<p>That is, teach them all the things that they'd have to learn when
 learning assembly language, with the single exception of mastering
 the
 assembly language programming paradigm. Recently, I've begun to
 focus on
 this group, working on books like Write Great Code, Volume One:
 Understanding the Machine, a book on machine organization that
 doesn't
 specifically teach assembly language programming. While someone
 studying
 machine organization might not write code as great as someone who
 takes the
 time to master assembly language, my hope is that those who would
 never
 consider learning assembly language might be willing to pick up a
 book like
 Write Great Code and learn to write better code, if not totally
 great
 code.</p>

/HTML

         HTMLDEF HYDE.IT7
<!-- UK -->
<h2><a name="chap07" id="chap07">
 Conclusion</a></h2>

<p>To write great code requires one to write efficient code. Writing
 efficient code requires good algorithm choices and a good
 implementation of
 those algorithms. The best implementations are going to be written
 by those
 who've mastered assembly language or fully understand the low-level
 implementation of the high-level language statements they're
 choosing. This
 doesn't mean that we'll return to the days when major commercial
 applications were written entirely in assembly language. However,
 to
 reverse the trend of software running slower and slower even though
 CPUs
 are running faster and faster is going to require programmers to
 begin
 considering the low-level implications of the code that they write.
</p>

<p>So, even if you never intend to write a single line of assembly
 language
 code again, learning assembly language, and learning to think in
 assembly
 language, is one of the best things you can do to learn how to write
 better
 assembly code.</p>

<p class="remark"><a name="note01" id="note01">Note 1:</a><br />
 Moore's Law states that semiconductor technology doubles in capacity
 or performance at a given price point about every 18 months.<br />
 Moore's law says nothing about performance. It only states that the
 number of
 transistors doubles every two years. One artifact of the progressions
 of
 Moore's law has been that performance has, until recently, been
 keeping
 pace.</p>

<p class="remark">About the Author:<br />
 Randall Hyde is the author of the recently released &quot;Write Great
 Code&quot; and &quot;The Art of Assembly Language&quot; (both from
 No Starch
 Press), one of the most highly recommended resources on assembly
 language for
 Intel-type processors. For HLASM and mainframe processors comparable
 other
 resources exist.</p>

/HTML

         HTMLDEF HYDE.ITL
<!-- UK -->
<p>
 To <a href="#chap01">Great Code Goes Beyond the Ordinary</a>.<br />
 To <a href="#chap02">Efficiency Is the Key</a>.<br />
 To <a href="#chap03">Practice Your Skills</a>.<br />
 To <a href="#chap04">Learn Assembly Language</a>.<br />
 To <a href="#chap05">Assembly Isn't Dead</a>.<br />
 To <a href="#chap06">Master Low-Level Statements</a>.<br />
 To <a href="#chap07">Conclusion</a>.
</p>

/HTML

         HTMLDEF HYDE.ITF
<!-- UK -->
<p class="footer" align="center">
 This text was written by Randall Hyde<br/>
 &copy; Copyright: Randall Hyde, 2004. All rights reserved.<br />
 <a href="mailto:rhyde@cs.ucr.edu">e-mail</a> the author.</p>

/HTML
