.*Metadata=NoHTML

*PROCESS FLAG(SUBSTR)
*PROCESS RENT
***********************************************************************
*
* BIXXAMS - Bixoft Cross Access Method Services
* Licensed material - Property of B.V. Bixoft
*
* This program can be licensed or used on an as-is basis.
* No warranty, neither implicit nor explicit, is given.
* It remains your own responsibility to ensure the correct
* working of this program in your installation.
*
* Suggestions for improvement are always welcome at
* http://www.bixoft.com  or mail to  bixoft@bixoft.nl
*
* (C) Copyright B.V. Bixoft, 2006
***********************************************************************
*
* This program generates the html for the bixoft.com site
*
***********************************************************************
         GBLC  &HTMLOUT(50000)         * Text to be punched
         HTMLINIT ,

         COPY  $$OPCD                  * Get all opcode definitions
         $$OPCDNM ,                    * Sort by name
         $$OPCDOP ,                    * Sort by opcode
*
         HTMLGEN  $OPCD00.UK1
         HTMLGEN  $OPCD00.UK2
         HTMLGEN  $OPCD00.UK3
         HTMLGEN  $OPCD01.UK
         HTMLGEN  $OPCD010.UK
         HTMLGEN  $OPCD07.UK
         HTMLGEN  $OPCD47.UK
         HTMLGEN  $OPCD9C.UK
         HTMLGEN  $OPCD9D.UK
         HTMLGEN  $OPCD9E.UK
         HTMLGEN  $OPCD9F.UK
         HTMLGEN  $OPCDA2.UK
         HTMLGEN  $OPCDA3.UK
         HTMLGEN  $OPCDA4.UK
         HTMLGEN  $OPCDA5.UK1
         HTMLGEN  $OPCDA5.UK2
         HTMLGEN  $OPCDA6.UK
         HTMLGEN  $OPCDA7.UK
         HTMLGEN  $OPCDA74.UK
         HTMLGEN  $OPCDAE.UK
         HTMLGEN  $OPCDB2.UK
         HTMLGEN  $OPCDB24.UK
         HTMLGEN  OPCDB2E8.UK
         HTMLGEN  $OPCDB3.UK
         HTMLGEN  $OPCDB9.UK
         HTMLGEN  $OPCDB92.UK
         HTMLGEN  $OPCDB93.UK
         HTMLGEN  $OPCDB96.UK
         HTMLGEN  $OPCDB97.UK
         HTMLGEN  $OPCDB9A.UK
         HTMLGEN  $OPCDB9C.UK
         HTMLGEN  $OPCDB9E.UK
         HTMLGEN  $OPCDB9F.UK
         HTMLGEN  $OPCDC0.UK
         HTMLGEN  $OPCDC04.UK
         HTMLGEN  $OPCDC2.UK
         HTMLGEN  $OPCDC4.UK
         HTMLGEN  $OPCDC6.UK
         HTMLGEN  $OPCDC8.UK
         HTMLGEN  $OPCDCC.UK
         HTMLGEN  $OPCDE0.UK
         HTMLGEN  $OPCDE3.UK
         HTMLGEN  OPCDE347.UK
         HTMLGEN  $OPCDE4.UK
         HTMLGEN  $OPCDE5.UK
         HTMLGEN  $OPCDE6.UK
         HTMLGEN  $OPCDE60.UK
         HTMLGEN  $OPCDE67.UK
         HTMLGEN  $OPCDE7.UK
         HTMLGEN  $OPCDE70.UK
         HTMLGEN  $OPCDE72.UK
         HTMLGEN  $OPCDE73.UK
         HTMLGEN  $OPCDE74.UK
         HTMLGEN  $OPCDE75.UK
         HTMLGEN  $OPCDE76.UK
         HTMLGEN  $OPCDE77.UK
         HTMLGEN  $OPCDE78.UK
         HTMLGEN  $OPCDE79.UK
         HTMLGEN  $OPCDE7A.UK
         HTMLGEN  $OPCDE7B.UK
         HTMLGEN  $OPCDE7C.UK
         HTMLGEN  $OPCDE7D.UK
         HTMLGEN  $OPCDE7E.UK
         HTMLGEN  $OPCDE7F.UK
         HTMLGEN  $OPCDEA.UK
         HTMLGEN  $OPCDEB.UK
         HTMLGEN  $OPCDEB2.UK
         HTMLGEN  $OPCDEB4.UK
         HTMLGEN  $OPCDEBE.UK
         HTMLGEN  $OPCDEBF.UK
         HTMLGEN  $OPCDEC.UK
         HTMLGEN  $OPCDEC4.UK
         HTMLGEN  $OPCDEC5.UK
         HTMLGEN  $OPCDEC6.UK
         HTMLGEN  $OPCDEC7.UK
         HTMLGEN  $OPCDECE.UK
         HTMLGEN  $OPCDECF.UK
         HTMLGEN  $OPCDED.UK
         HTMLGEN  $OPCDEE.UK

*
* Dummy html section
         HTMLDEF  $$OPCD.UK
 <!--  dummy paragraph -->
 <p>&nbsp;</p>
/HTML

         GBLB     &COPY_$$OPCD
&COPY_$$OPCD SETB 1
         HTMLGEN  $$OPCD.UK

.*
.* Check whether we missed any opcodes...
         GBLA  &SIZING
         GBLA  &MNEM_LAST              * Index for tables below
         GBLC  &MNEM(2500)             * Mnemonics
         GBLC  &OPCD(2500)             * Opcodes
         GBLB  &GEND(2500)             * Generated on opcdxxxx pages
         LCLA  &P                      * Pointer for above arrays
         LCLA  &CTR                    * Error counter
         LCLA  &GEN                    * Generated ok counter
         ACTR  2*&SIZING
.LOOP1   ANOP  ,
&P       SETA  &P+1
         AIF   (&P GT &MNEM_LAST).LOOP1X * End of loop
         AIF   (&GEND(&P) EQ 1).LOOP1OK  * Generated: check next one
         MNOTE 8,'Instruction &MNEM(&P) not generated on opcode pages!'
&CTR     SETA  &CTR+1
         AGO   .LOOP1
.LOOP1OK ANOP  ,
&GEN     SETA  &GEN+1
         AGO   .LOOP1
.LOOP1X  ANOP  ,
         AIF   (&CTR EQ 0).SEV0
         MNOTE 8,'&GEN instructions generated, &CTR not generated'
         AGO   .MNOTEOK
.SEV0    ANOP  ,
         MNOTE 0,'&GEN instructions generated, &CTR not generated'
.MNOTEOK ANOP  ,
*
         WTO   '--> &GEN instructions generated, &CTR not generated'
         SLR   15,15
         BR    14
*
         AIF   ('&SYSASM' EQ 'z390').SKIPALL
TESTOPCD DS      0H
         ADB     0,0                    * ED1A
         AEB     0,0                    * ED0A
         AG      0,0                    * E308
         AGF     0,0                    * E318
         AGHIK   0,0,0                  * ECD9
         AGSI    0,0                    * EB7A
         AHIK    0,0,0                  * ECD8
         AHY     0,0                    * E37A
         ALC     0,0                    * E398
         ALCG    0,0                    * E388
         ALG     0,0                    * E30A
         ALGF    0,0                    * E31A
         ALGHSIK 0,0,0                  * ECDB
         ALGSI   0,0                    * EB7E
         ALHSIK  0,0,0                  * ECDA
         ALSI    0,0                    * EB6E
         ALY     0,0                    * E35E
         ASI     0,0                    * EB6A
         AY      0,0                    * E35A
         BCTG    0,0                    * E346
         BRXHG   0,0,TESTOPCD           * EC44
         BRXLG   0,0,TESTOPCD           * EC45
         BXHG    0,0,0                  * EB44
         BXLEG   0,0,0                  * EB45
         CDB     0,0                    * ED19
         CDSG    0,0,0                  * EB3E
         CDSY    0,0,0                  * EB31
         CEB     0,0                    * ED09
         CG      0,0                    * E320
         CGF     0,0                    * E330
         CGH     0,0                    * E334
         CGIB    0,0,0,0                * ECFC
         CGIBE   0,0,0                  * ECFC
         CGIBH   0,0,0                  * ECFC
         CGIBL   0,0,0                  * ECFC
         CGIBNE  0,0,0                  * ECFC
         CGIBNH  0,0,0                  * ECFC
         CGIBNL  0,0,0                  * ECFC
         CGIJ    0,0,0,TESTOPCD         * EC7C
         CGIJE   0,0,TESTOPCD           * EC7C
         CGIJH   0,0,TESTOPCD           * EC7C
         CGIJL   0,0,TESTOPCD           * EC7C
         CGIJNE  0,0,TESTOPCD           * EC7C
         CGIJNH  0,0,TESTOPCD           * EC7C
         CGIJNL  0,0,TESTOPCD           * EC7C
         CGIT    0,0,0                  * EC70
         CGITE   0,0                    * EC70
         CGITH   0,0                    * EC70
         CGITL   0,0                    * EC70
         CGITNE  0,0                    * EC70
         CGITNH  0,0                    * EC70
         CGITNL  0,0                    * EC70
         CGRB    0,0,0,0                * ECE4
         CGRBE   0,0,0                  * ECE4
         CGRBH   0,0,0                  * ECE4
         CGRBL   0,0,0                  * ECE4
         CGRBNE  0,0,0                  * ECE4
         CGRBNH  0,0,0                  * ECE4
         CGRBNL  0,0,0                  * ECE4
         CGRJ    0,0,0,TESTOPCD         * EC64
         CGRJE   0,0,TESTOPCD           * EC64
         CGRJH   0,0,TESTOPCD           * EC64
         CGRJL   0,0,TESTOPCD           * EC64
         CGRJNE  0,0,TESTOPCD           * EC64
         CGRJNH  0,0,TESTOPCD           * EC64
         CGRJNL  0,0,TESTOPCD           * EC64
         CHF     0,0                    * E3CD
         CHY     0,0                    * E379
         CIB     0,0,0,0                * ECFE
         CIBE    0,0,0                  * ECFE
         CIBH    0,0,0                  * ECFE
         CIBL    0,0,0                  * ECFE
         CIBNE   0,0,0                  * ECFE
         CIBNH   0,0,0                  * ECFE
         CIBNL   0,0,0                  * ECFE
         CIJ     0,0,0,TESTOPCD         * EC7E
         CIJE    0,0,TESTOPCD           * EC7E
         CIJH    0,0,TESTOPCD           * EC7E
         CIJL    0,0,TESTOPCD           * EC7E
         CIJNE   0,0,TESTOPCD           * EC7E
         CIJNH   0,0,TESTOPCD           * EC7E
         CIJNL   0,0,TESTOPCD           * EC7E
         CIT     0,0,0                  * EC72
         CITE    0,0                    * EC72
         CITH    0,0                    * EC72
         CITL    0,0                    * EC72
         CITNE   0,0                    * EC72
         CITNH   0,0                    * EC72
         CITNL   0,0                    * EC72
         CLCLU   0,0,0                  * EB8F
         CLFIT   0,0,0                  * EC73
         CLFITE  0,0                    * EC73
         CLFITH  0,0                    * EC73
         CLFITL  0,0                    * EC73
         CLFITNE 0,0                    * EC73
         CLFITNH 0,0                    * EC73
         CLFITNL 0,0                    * EC73
         CLG     0,0                    * E321
         CLGF    0,0                    * E331
         CLGIB   0,0,0,0                * ECFD
         CLGIBE  0,0,0                  * ECFD
         CLGIBH  0,0,0                  * ECFD
         CLGIBL  0,0,0                  * ECFD
         CLGIBNE 0,0,0                  * ECFD
         CLGIBNH 0,0,0                  * ECFD
         CLGIBNL 0,0,0                  * ECFD
         CLGIJ   0,0,0,TESTOPCD         * EC7D
         CLGIJE  0,0,TESTOPCD           * EC7D
         CLGIJH  0,0,TESTOPCD           * EC7D
         CLGIJL  0,0,TESTOPCD           * EC7D
         CLGIJNE 0,0,TESTOPCD           * EC7D
         CLGIJNH 0,0,TESTOPCD           * EC7D
         CLGIJNL 0,0,TESTOPCD           * EC7D
         CLGIT   0,0,0                  * EC71
         CLGITE  0,0                    * EC71
         CLGITH  0,0                    * EC71
         CLGITL  0,0                    * EC71
         CLGITNE 0,0                    * EC71
         CLGITNH 0,0                    * EC71
         CLGITNL 0,0                    * EC71
         CLGRB   0,0,0,0                * ECE5
         CLGRBE  0,0,0                  * ECE5
         CLGRBH  0,0,0                  * ECE5
         CLGRBL  0,0,0                  * ECE5
         CLGRBNE 0,0,0                  * ECE5
         CLGRBNH 0,0,0                  * ECE5
         CLGRBNL 0,0,0                  * ECE5
         CLGRJ   0,0,0,TESTOPCD         * EC65
         CLGRJE  0,0,TESTOPCD           * EC65
         CLGRJH  0,0,TESTOPCD           * EC65
         CLGRJL  0,0,TESTOPCD           * EC65
         CLGRJNE 0,0,TESTOPCD           * EC65
         CLGRJNH 0,0,TESTOPCD           * EC65
         CLGRJNL 0,0,TESTOPCD           * EC65
         CLHF    0,0                    * E3CF
         CLIB    0,0,0,0                * ECFF
         CLIBE   0,0,0                  * ECFF
         CLIBH   0,0,0                  * ECFF
         CLIBL   0,0,0                  * ECFF
         CLIBNE  0,0,0                  * ECFF
         CLIBNH  0,0,0                  * ECFF
         CLIBNL  0,0,0                  * ECFF
         CLIJ    0,0,0,TESTOPCD         * EC7F
         CLIJE   0,0,TESTOPCD           * EC7F
         CLIJH   0,0,TESTOPCD           * EC7F
         CLIJL   0,0,TESTOPCD           * EC7F
         CLIJNE  0,0,TESTOPCD           * EC7F
         CLIJNH  0,0,TESTOPCD           * EC7F
         CLIJNL  0,0,TESTOPCD           * EC7F
         CLIY    0,0                    * EB55
         CLMH    0,0,0                  * EB20
         CLMY    0,0,0                  * EB21
         CLRB    0,0,0,0                * ECF7
         CLRBE   0,0,0                  * ECF7
         CLRBH   0,0,0                  * ECF7
         CLRBL   0,0,0                  * ECF7
         CLRBNE  0,0,0                  * ECF7
         CLRBNH  0,0,0                  * ECF7
         CLRBNL  0,0,0                  * ECF7
         CLRJ    0,0,0,TESTOPCD         * EC77
         CLRJE   0,0,TESTOPCD           * EC77
         CLRJH   0,0,TESTOPCD           * EC77
         CLRJL   0,0,TESTOPCD           * EC77
         CLRJNE  0,0,TESTOPCD           * EC77
         CLRJNH  0,0,TESTOPCD           * EC77
         CLRJNL  0,0,TESTOPCD           * EC77
         CLY     0,0                    * E355
         CRB     0,0,0,0                * ECF6
         CRBE    0,0,0                  * ECF6
         CRBH    0,0,0                  * ECF6
         CRBL    0,0,0                  * ECF6
         CRBNE   0,0,0                  * ECF6
         CRBNH   0,0,0                  * ECF6
         CRBNL   0,0,0                  * ECF6
         CRJ     0,0,0,TESTOPCD         * EC76
         CRJE    0,0,TESTOPCD           * EC76
         CRJH    0,0,TESTOPCD           * EC76
         CRJL    0,0,TESTOPCD           * EC76
         CRJNE   0,0,TESTOPCD           * EC76
         CRJNH   0,0,TESTOPCD           * EC76
         CRJNL   0,0,TESTOPCD           * EC76
         CSG     0,0,0                  * EB30
         CSY     0,0,0                  * EB14
         CVBG    0,0                    * E30E
         CVBY    0,0                    * E306
         CVDG    0,0                    * E32E
         CVDY    0,0                    * E326
         CY      0,0                    * E359
         DDB     0,0                    * ED1D
         DEB     0,0                    * ED0D
         DL      0,0                    * E397
         DLG     0,0                    * E387
         DSG     0,0                    * E30D
         DSGF    0,0                    * E31D
         ECAG    0,0,0                  * EB4C
         ICMH    0,0,0                  * EB80
         ICMY    0,0,0                  * EB81
         ICY     0,0                    * E373
         JXHG    0,0,TESTOPCD           * EC44
         JXLEG   0,0,TESTOPCD           * EC45
         KDB     0,0                    * ED18
         KEB     0,0                    * ED08
         LAA     0,0,0                  * EBF8
         LAAG    0,0,0                  * EBE8
         LAAL    0,0,0                  * EBFA
         LAALG   0,0,0                  * EBEA
         LAEY    0,0                    * E375
         LAMY    0,0,0                  * EB9A
         LAN     0,0,0                  * EBF4
         LANG    0,0,0                  * EBE4
         LAO     0,0,0                  * EBF6
         LAOG    0,0,0                  * EBE6
         LAX     0,0,0                  * EBF7
         LAXG    0,0,0                  * EBE7
         LAY     0,0                    * E371
         LB      0,0                    * E376
         LBH     0,0                    * E3C0
         LCTLG   0,0,0                  * EB2F
         LDE     0,0                    * ED24
         LDEB    0,0                    * ED04
         LDY     0,0                    * ED65
         LEY     0,0                    * ED64
         LFH     0,0                    * E3CA
         LG      0,0                    * E304
         LGB     0,0                    * E377
         LGF     0,0                    * E314
         LGH     0,0                    * E315
         LHH     0,0                    * E3C4
         LHHR    0,0                    * EC5D
         LHLR    0,0                    * EC5D
         LHY     0,0                    * E378
         LLC     0,0                    * E394
         LLCH    0,0                    * E3C2
         LLCHHR  0,0                    * EC5D
         LLCHLR  0,0                    * EC5D
         LLCLHR  0,0                    * EC51
         LLGC    0,0                    * E390
         LLGF    0,0                    * E316
         LLGH    0,0                    * E391
         LLGT    0,0                    * E317
         LLH     0,0                    * E395
         LLHFR   0,0                    * EC51
         LLHH    0,0                    * E3C6
         LLHHHR  0,0                    * EC5D
         LLHHLR  0,0                    * EC5D
         LLHLHR  0,0                    * EC51
         LMD     0,0,0,0                * EF
         LMG     0,0,0                  * EB04
         LMH     0,0,0                  * EB96
         LMY     0,0,0                  * EB98
         LOC     0,0,0                  * EBF2
         LOCE    0,0                    * EBF2
         LOCG    0,0,0                  * EBE2
         LOCGE   0,0                    * EBE2
         LOCGH   0,0                    * EBE2
         LOCGL   0,0                    * EBE2
         LOCGNE  0,0                    * EBE2
         LOCGNH  0,0                    * EBE2
         LOCGNL  0,0                    * EBE2
         LOCH    0,0                    * EBF2
         LOCL    0,0                    * EBF2
         LOCNE   0,0                    * EBF2
         LOCNH   0,0                    * EBF2
         LOCNL   0,0                    * EBF2
         LPQ     0,0                    * E38F
         LRAG    0,0                    * E303
         LRAY    0,0                    * E313
         LRV     0,0                    * E31E
         LRVG    0,0                    * E30F
         LRVH    0,0                    * E31F
         LT      0,0                    * E312
         LTG     0,0                    * E302
         LTGF    0,0                    * E332
         LXD     0,0                    * ED25
         LXDB    0,0                    * ED05
         LXE     0,0                    * ED26
         LXEB    0,0                    * ED06
         LY      0,0                    * E358
         MAD     0,0,0                  * ED3E
         MADB    0,0,0                  * ED1E
         MAE     0,0,0                  * ED2E
         MAEB    0,0,0                  * ED0E
         MAY     0,0,0                  * ED3A
         MAYH    0,0,0                  * ED3C
         MAYL    0,0,0                  * ED38
         MDB     0,0                    * ED1C
         MDEB    0,0                    * ED0C
         MEE     0,0                    * ED37
         MEEB    0,0                    * ED17
         MFY     0,0                    * E35C
         MHY     0,0                    * E37C
         ML      0,0                    * E396
         MLG     0,0                    * E386
         MSD     0,0,0                  * ED3F
         MSDB    0,0,0                  * ED1F
         MSE     0,0,0                  * ED2F
         MSEB    0,0,0                  * ED0F
         MSG     0,0                    * E30C
         MSGF    0,0                    * E31C
         MSY     0,0                    * E351
         MVCIN   0,0                    * E8
         MVCLU   0,0,0                  * EB8E
         MVIY    0,0                    * EB52
         MXDB    0,0                    * ED07
         MY      0,0,0                  * ED3B
         MYH     0,0,0                  * ED3D
         MYL     0,0,0                  * ED39
         NG      0,0                    * E380
         NHHR    0,0                    * EC54
         NHLR    0,0                    * EC54
         NIY     0,0                    * EB54
         NLHR    0,0                    * EC54
         NY      0,0                    * E354
         OG      0,0                    * E381
         OHHR    0,0                    * EC56
         OHLR    0,0                    * EC56
         OIY     0,0                    * EB56
         OLHR    0,0                    * EC56
         OY      0,0                    * E356
         PFD     0,0                    * E336
         PKA     0,0                    * E9
         PKU     0,0                    * E1
         PLO     0,0,0,0                * EE
         RISBG   0,0,0,0                * EC55
         RISBGZ  0,0,0,0                * EC55
         RISBHG  0,0,0,0                * EC5D
         RISBHGZ 0,0,0,0                * EC5D
         RISBLG  0,0,0,0                * EC51
         RISBLGZ 0,0,0,0                * EC51
         RLL     0,0,0                  * EB1D
         RLLG    0,0,0                  * EB1C
         RNSBG   0,0,0,0                * EC54
         RNSBGT  0,0,0,0                * EC54
         ROSBG   0,0,0,0                * EC56
         ROSBGT  0,0,0,0                * EC56
         RXSBG   0,0,0,0                * EC57
         RXSBGT  0,0,0,0                * EC57
         SDB     0,0                    * ED1B
         SEB     0,0                    * ED0B
         SG      0,0                    * E309
         SGF     0,0                    * E319
         SHY     0,0                    * E37B
         SLAG    0,0,0                  * EB0B
         SLAK    0,0,0                  * EBDD
         SLB     0,0                    * E399
         SLBG    0,0                    * E389
         SLDT    0,0,0                  * ED40
         SLG     0,0                    * E30B
         SLGF    0,0                    * E31B
         SLLG    0,0,0                  * EB0D
         SLLK    0,0,0                  * EBDF
         SLXT    0,0,0                  * ED48
         SLY     0,0                    * E35F
         SQBS    0,0                    * EB8A
         SQD     0,0                    * ED35
         SQDB    0,0                    * ED15
         SQE     0,0                    * ED34
         SQEB    0,0                    * ED14
         SRAG    0,0,0                  * EB0A
         SRAK    0,0,0                  * EBDC
         SRDT    0,0,0                  * ED41
         SRLG    0,0,0                  * EB0C
         SRLK    0,0,0                  * EBDE
         SRXT    0,0,0                  * ED49
         STAMY   0,0,0                  * EB9B
         STCH    0,0                    * E3C3
         STCMH   0,0,0                  * EB2C
         STCMY   0,0,0                  * EB2D
         STCTG   0,0,0                  * EB25
         STCY    0,0                    * E372
         STDY    0,0                    * ED67
         STEY    0,0                    * ED66
         STFH    0,0                    * E3CB
         STG     0,0                    * E324
         STHH    0,0                    * E3C7
         STHY    0,0                    * E370
         STMG    0,0,0                  * EB24
         STMH    0,0,0                  * EB26
         STMY    0,0,0                  * EB90
         STOC    0,0,0                  * EBF3
         STOCE   0,0                    * EBF3
         STOCG   0,0,0                  * EBE3
         STOCGE  0,0                    * EBE3
         STOCGH  0,0                    * EBE3
         STOCGL  0,0                    * EBE3
         STOCGNE 0,0                    * EBE3
         STOCGNH 0,0                    * EBE3
         STOCGNL 0,0                    * EBE3
         STOCH   0,0                    * EBF3
         STOCL   0,0                    * EBF3
         STOCNE  0,0                    * EBF3
         STOCNH  0,0                    * EBF3
         STOCNL  0,0                    * EBF3
         STPQ    0,0                    * E38E
         STRV    0,0                    * E33E
         STRVG   0,0                    * E32F
         STRVH   0,0                    * E33F
         STY     0,0                    * E350
         SY      0,0                    * E35B
         TCDB    0,0                    * ED11
         TCEB    0,0                    * ED10
         TCXB    0,0                    * ED12
         TDCDT   0,0                    * ED54
         TDCET   0,0                    * ED50
         TDCXT   0,0                    * ED58
         TDGDT   0,0                    * ED55
         TDGET   0,0                    * ED51
         TDGXT   0,0                    * ED59
         TMY     0,0                    * EB51
         TP      0                      * EBC0
         TRACG   0,0,0                  * EB0F
         UNPKA   0,0                    * EA
         UNPKU   0,0                    * E2
         XG      0,0                    * E382
         XHHR    0,0                    * EC57
         XHLR    0,0                    * EC57
         XIY     0,0                    * EB57
         XLHR    0,0                    * EC57
         XY      0,0                    * E357
.SKIPALL ANOP    ,
*
         END
