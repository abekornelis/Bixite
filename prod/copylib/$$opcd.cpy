         $$OPCDIN
*
* 345678901234567890123456789012345678901234567890123456789012345678901
*
* Col.1 = Mnemonic (or OPCDxxxx)
* Col.2 = Hex opcode ???? for unkown opcodes
*                    -- for assembler directives
*                    && for macro directives
*                    leading - (negative) for outdated instructions
* Col.3 = Mask blank if not applicable
*              -- for non-masked extended mnemonics
* Col.4 = Edit status code
* Col.5 = [@pagename] Opcode description
*
* Warning & Maintenance note:
*============================
* HLASM's AREAD will give you an 80-byte card image,
* however, z390 will apply concatenation, as indicated in
* column 72, then pass back columns 1-71 from concatenated
* input, plus 8 spaces, effectively destroying all text on
* continuation lines. Therefore column 72 is to always remain
* blank. Continuation is indicated by column 1 on continuation
* Card being blank...
*
* To verify completeness of charts, assemble $$OPCD program
*
A            = 5A      %      $   # Add
AACAC        =-B2D8    %      $   # Add ACcumulator to ACcumulator
AACDR        =-B2D0    %      $   # Add to ACcumulator Double hfp
                                  + Register
AACER        =-B2D1    %      $   # Add to ACcumulator Exponential hfp
                                  + Register
ACONTROL     = --      %      $   # Assembler CONTROL
ACTR         = &&      %      $   # Assembler CounTeR
AD           = 6A      %      $   # Add Double hfp
ADATA        = --      %      $   # Associated DATA
ADB          = ED1A    %      $ P # Add Double Bfp
ADBR         = B31A    %      $   # Add Double Bfp Register
ADR          = 2A      %      $   # Add Double hfp Register
ADRN         =-B2C0    %      $   # Add Double hfp with RouNding
ADTR         = B3D2    %      $ 0 # Add Double Tfp Register
ADTRA        = B3D2    %      $ 1 # Add Double Tfp Register Alternative
AE           = 7A      %      $   # Add Exponential hfp
AEB          = ED0A    %      $ P # Add Exponential Bfp
AEBR         = B30A    %      $   # Add Exponential Bfp Register
AEJECT       = --      %      $   # Assembler EJECT macro listing
AER          = 3A      %      $   # Add Exponential hfp Register
AERN         =-B2C1    %      $   # Add Exponential hfp with RouNding
AFI          = C29     %      $ A # Add Fullword Immediate
AG           = E308    %      $ P # Add Grande
AGF          = E318    %      $ P # Add Grande with Fullword
AGFI         = C28     %      $ A # Add Grande with Fullword Immediate
AGFR         = B918    %      $ 3 # Add Grande with Fullword Register
AGH          = E338    %      $ P # Add Grande with Halfword
AGHI         = A7B     %      $ A # Add Grande with Halfword Immediate
AGHIK        = ECD9    %      $ 2 # Add Grande with Halfword Immediate
                                  + Keeping source data
AGO          = &&      %      $   # Assembler GO to
AGOB         = &&      %      $   # Assembler GO Backward
AGR          = B908    %      $ 3 # Add Grande Register
AGRK         = B9E8    %      $   # Add Grande Register Keeping source
                                  + data
AGSI         = EB7A    %      $ P # Add Grande with Signed Immediate
AH           = 4A      %      $   # Add Halfword
AHHHR        = B9C8    %      $   # Add High and High to High Register
AHHLR        = B9D8    %      $   # Add High and High to Low Register
AHI          = A7A     %      $ A # Add Halfword Immediate
AHIK         = ECD8    %      $ 2 # Add Halfword Immediate Keeping
                                  + source data
AHY          = E37A    %      $ P # Add Halfword Yonder
AIF          = &&      %      $   # Assembler IF
AIFB         = &&      %      $   # Assembler IF Backward
AIH          = CC8     %      $   # Add Immediate High
AINSERT      = &&      %      $   # Assembler INSERT source line
AL           = 5E      %      $   # Add Logical
ALC          = E398    %      $ P # Add Logical with Carry
ALCG         = E388    %      $ P # Add Logical with Carry Grande
ALCGR        = B988    %      $   # Add Logical with Carry Grande
                                  + Register
ALCR         = B998    %      $   # Add Logical with Carry Register
ALFI         = C2B     %      $ A # Add Logical Fullword Immediate
ALG          = E30A    %      $ P # Add Logical Grande
ALGF         = E31A    %      $ P # Add Logical Grande with Fullword
ALGFI        = C2A     %      $ A # Add Logical Grande with Fullword
                                  + Immediate
ALGFR        = B91A    %      $   # Add Logical Grande with Fullword
                                  + Register
ALGHSIK      = ECDB    %      $   # Add Logical Grande with Halfword
                                  + Signed Immediate Keeping source
                                  + data
ALGR         = B90A    %      $   # Add Logical Grande Register
ALGRK        = B9EA    %      $   # Add Logical Grande Register Keeping
                                  + source data
ALGSI        = EB7E    %      $ P # Add Logical Grande with Signed
                                  + Immediate
ALHHHR       = B9CA    %      $   # Add Logical High and High to High
                                  + Register
ALHHLR       = B9DA    %      $   # Add Logical High and High to Low
                                  + Register
ALHSIK       = ECDA    %      $   # Add Logical with Halfword Signed
                                  + Immediate Keeping source data
ALIAS        = --      %      $   # ALIAS definition
ALR          = 1E      %      $   # Add Logical Register
ALRK         = B9FA    %      $   # Add Logical Register Keeping source
                                  + data
ALSI         = EB6E    %      $ P # Add Logical with Signed Immediate
ALSIH        = CCA     %      $   # Add Logical with Signed Immediate
                                  + High
ALSIHN       = CCB     %      $   # Add Logical with Signed Immediate
                                  + High No cc
ALY          = E35E    %      $ P # Add Logical Yonder
AMCLHI       = A34     %      $ T # And MilliCode register Left High
                                  + Immediate
AMODE        = --      %      $   # Addressing MODE
ANOP         = &&      %      $   # Assembler No-OPeration
ANUM         =-EA04    %      $ S # ???
AP           = FA      %      $   # Add Packed decimal
AR           = 1A      %      $   # Add Register
AREAD        = &&      %      $   # Assembler READ source record
ARK          = B9F8    %      $   # Add Register Keeping source data
ASI          = EB6A    %      $ P # Add with Signed Immediate
ASPACE       = &&      %      $   # Assembler SPACE macro listing
ASR          = A34     %      $ T # And Special Register
ATND         =-B294    %      $   # ArcTaNgent of Double hfp
ATNE         =-B295    %      $   # ArcTaNgent of Exponential hfp
AU           = 7E      %      $   # Add Unnormalized hfp
AUR          = 3E      %      $   # Add Unnormalized hfp Register
AW           = 6E      %      $   # Add Wide unnormalized hfp
AWR          = 2E      %      $   # Add Wide unnormalized hfp Register
AXBR         = B34A    %      $   # Add eXtended Bfp Register
AXR          = 36      %      $   # Add eXtended hfp Register
AXTR         = B3DA    %      $ 0 # Add eXtended Tfp Register
AXTRA        = B3DA    %      $ 1 # Add eXtended Tfp Register
                                  + Alternative
AY           = E35A    %      $ P # Add Yonder
B            = 47      % 1111 $ B # Branch
BAKR         = B240    %      $   # Branch And stacK Register
BAL          = 45      %      $   # Branch And Link
BALR         = 05      %      $   # Branch And Link Register
BAS          = 4D      %      $   # Branch And Save
BAS          =-4D      %      $ 5 # Branch And Store
BASR         = 0D      %      $   # Branch And Save Register
BASR         =-0D      %      $ 5 # Branch And Store Register
BASSM        = 0C      %      $   # Branch And Save and Set Mode
BC           = 47      %      $   # Branch on Condition
BCR          = 07      %      $   # Branch on Condition Register
BCT          = 46      %      $   # Branch on CounT
BCTG         = E346    %      $ P # Branch on CounT Grande
BCTGR        = B946    %      $   # Branch on CounT Grande Register
BCTR         = 06      %      $   # Branch on CounT Register
BDEPG        = B96D    %      $   # Bit DEPosit Grande
BDIL         =-EA01    %      $ S # ???
BE           = 47      % 1000 $ B # Branch on Equal
BER          = 07      % 1000 $ B # Branch on Equal Register
BEXTG        = B96C    %      $   # Bit EXTract Grande
BH           = 47      % 0010 $ B # Branch on High
BHE          =-47      % 1010 $ B # Branch on High or Equal
BHER         =-07      % 1010 $ B # Branch on High or Equal Register
BHR          = 07      % 0010 $ B # Branch on High Register
BI           = E347    % 1111 $ 7 # Branch Indirect
BIC          = E347    %      $ 7 # Branch Indirect on Condition
BIE          = E347    % 1000 $ 7 # Branch Indirect on Equal
BIFLAG       =-EA0C    %      $ S # ???
BIH          = E347    % 0010 $ 7 # Branch Indirect on High
BIL          = E347    % 0100 $ 7 # Branch Indirect on Low
BIM          = E347    % 0100 $ 7 # Branch Indirect on Mixed / Minus
BINE         = E347    % 0111 $ 7 # Branch Indirect on Not Equal
BINH         = E347    % 1101 $ 7 # Branch Indirect on Not High
BINL         = E347    % 1011 $ 7 # Branch Indirect on Not Low
BINM         = E347    % 1011 $ 7 # Branch Indirect on Not Mixed / 
                                  + Minus
BINO         = E347    % 1110 $ 7 # Branch Indirect on Not Ones / 
                                  + Overflow
BINP         = E347    % 1101 $ 7 # Branch Indirect on Not Plus
BINZ         = E347    % 0111 $ 7 # Branch Indirect on Not Zero
BIO          = E347    % 0001 $ 7 # Branch Indirect on Ones / Overflow
BIP          = E347    % 0010 $ 7 # Branch Indirect on Plus
BIZ          = E347    % 1000 $ 7 # Branch Indirect on Zero
BL           = 47      % 0100 $ B # Branch on Low
BLE          =-47      % 1100 $ B # Branch on Low or Equal
BLER         =-07      % 1100 $ B # Branch on Low or Equal Register
BLH          =-47      % 0110 $ B # Branch on Low or High
BLHR         =-07      % 0110 $ B # Branch on Low or High Register
BLR          = 07      % 0100 $ B # Branch on Low Register
BM           = 47      % 0100 $ B # Branch on Mixed / Minus
BMR          = 07      % 0100 $ B # Branch on Mixed / Minus Register
BNE          = 47      % 0111 $ B # Branch on Not Equal
BNER         = 07      % 0111 $ B # Branch on Not Equal Register
BNH          = 47      % 1101 $ B # Branch on Not High
BNHE         =-47      % 0101 $ B # Branch on Not High or Equal
BNHER        =-07      % 0101 $ B # Branch on Not High or Equal
                                  + Register
BNHR         = 07      % 1101 $ B # Branch on Not High Register
BNL          = 47      % 1011 $ B # Branch on Not Low
BNLE         =-47      % 0011 $ B # Branch on Not Low or Equal
BNLER        =-07      % 0011 $ B # Branch on Not Low or Equal Register
BNLH         =-47      % 1001 $ B # Branch on Not Low or High
BNLHR        =-07      % 1001 $ B # Branch on Not Low or High Register
BNLR         = 07      % 1011 $ B # Branch on Not Low Register
BNM          = 47      % 1011 $ B # Branch on Not Mixed / Minus
BNMR         = 07      % 1011 $ B # Branch on Not Mixed / Minus
                                  + Register
BNO          = 47      % 1110 $ B # Branch on Not Ones / Overflow
BNOR         = 07      % 1110 $ B # Branch on Not Ones / Overflow
                                  + Register
BNP          = 47      % 1101 $ B # Branch on Not Plus
BNPR         = 07      % 1101 $ B # Branch on Not Plus Register
BNZ          = 47      % 0111 $ B # Branch on Not Zero
BNZR         = 07      % 0111 $ B # Branch on Not Zero Register
BO           = 47      % 0001 $ B # Branch on Ones / Overflow
BOR          = 07      % 0001 $ B # Branch on Ones / Overflow Register
BP           = 47      % 0010 $ B # Branch on Plus
BPP          = C7      %      $   # Branch Prediction Preload
BPR          = 07      % 0010 $ B # Branch on Plus Register
BPRP         = C5      %      $   # Branch Prediction Relative Preload
BR           = 07      % 1111 $ B # Branch Register
BRAS         = A75     %      $ A # Branch Relative And Save
BRASL        = C05     %      $ A # Branch Relative And Save Long
BRC          = A74     %      $ A # Branch Relative on Condition
BRCL         = C04     %      $ A # Branch Relative on Condition Long
BRCT         = A76     %      $ A # Branch Relative on CounT
BRCTG        = A77     %      $ A # Branch Relative on CounT Grande
BRCTH        = CC6     %      $   # Branch Relative on CounT High
BRE          = A74     % 1000 $ C # Branch Relative on Equal
BREL         = C04     % 1000 $ C # Branch Relative on Equal Long
BRFLG        = AA      %      $ T # BRanch on FLaGs
BRH          = A74     % 0010 $ C # Branch Relative on High
BRHE         =-A74     % 1010 $ C # Branch Relative on High or Equal
BRHL         = C04     % 0010 $ C # Branch Relative on High Long
BRL          = A74     % 0100 $ C # Branch Relative on Low
BRLE         =-A74     % 1100 $ C # Branch Relative on Low or Equal
BRLH         =-A74     % 0110 $ C # Branch Relative on Low or High
BRLL         = C04     % 0100 $ C # Branch Relative on Low Long
BRM          = A74     % 0100 $ C # Branch Relative on Mixed / Minus
BRML         = C04     % 0100 $ C # Branch Relative on Mixed / Minus
                                  + Long
BRNE         = A74     % 0111 $ C # Branch Relative on Not Equal
BRNEL        = C04     % 0111 $ C # Branch Relative on Not Equal Long
BRNH         = A74     % 1101 $ C # Branch Relative on Not High
BRNHE        =-A74     % 0101 $ C # Branch Relative on Not High or
                                  + Equal
BRNHL        = C04     % 1101 $ C # Branch Relative on Not High Long
BRNL         = A74     % 1011 $ C # Branch Relative on Not Low
BRNLE        =-A74     % 0011 $ C # Branch Relative on Not Low or Equal
BRNLH        =-A74     % 1001 $ C # Branch Relative on Not Low or High
BRNLL        = C04     % 1011 $ C # Branch Relative on Not Low Long
BRNM         = A74     % 1011 $ C # Branch Relative on Not Mixed /
                                  + Minus
BRNML        = C04     % 1011 $ C # Branch Relative on Not Mixed /
                                  + Minus Long
BRNO         = A74     % 1110 $ C # Branch Relative on Not Ones /
                                  + Overflow
BRNOL        = C04     % 1110 $ C # Branch Relative on Not Ones /
                                  + Overflow Long
BRNOP        =-A74     % 0000 $ C # Branch Relative No OPeration
BRNP         = A74     % 1101 $ C # Branch Relative on Not Plus
BRNPL        = C04     % 1101 $ C # Branch Relative on Not Plus Long
BRNZ         = A74     % 0111 $ C # Branch Relative on Not Zero
BRNZL        = C04     % 0111 $ C # Branch Relative on Not Zero Long
BRO          = A74     % 0001 $ C # Branch Relative on Ones / Overflow
BROL         = C04     % 0001 $ C # Branch Relative on Ones / Overflow
                                  + Long
BRP          = A74     % 0010 $ C # Branch Relative on Plus
BRPL         = C04     % 0010 $ C # Branch Relative on Plus Long
BRS          = ????    %      $ T # Branch Relative Special
BRU          = A74     % 1111 $ C # Branch Relative Unconditional
BRUL         = C04     % 1111 $ C # Branch Relative Unconditional Long
BRXH         = 84      %      $   # Branch Relative on indeX High
BRXHG        = EC44    %      $   # Branch Relative on indeX High
                                  + Grande
BRXLE        = 85      %      $   # Branch Relative on indeX Low or
                                  + Equal
BRXLG        = EC45    %      $   # Branch Relative on indeX Low or
                                  + equal Grande
BRZ          = A74     % 1000 $ C # Branch Relative on Zero
BRZL         = C04     % 1000 $ C # Branch Relative on Zero Long
BSA          = B25A    %      $   # Branch and Set Authority
BSG          = B258    %      $   # Branch in Subspace Group
BSM          = 0B      %      $   # Branch and Set Mode
BXH          = 86      %      $   # Branch on indeX High
BXHG         = EB44    %      $ P # Branch on indeX High Grande
BXLE         = 87      %      $   # Branch on indeX Low or Equal
BXLEG        = EB45    %      $ P # Branch on indeX Low or Equal Grande
BZ           = 47      % 1000 $ B # Branch on Zero
BZR          = 07      % 1000 $ B # Branch on Zero Register
C            = 59      %      $   # Compare
CAL          = C86     %      $   # Compare And Load
CALG         = C87     %      $   # Compare And Load Grande
CALGF        = C8F     %      $   # Compare And Load Grande from
                                  + Fullword
CATTR        = --      %      $   # Class ATTRibutes
CCSB         = B2CA    %      $ T # Compare Character String Bytes
CCW          = --      %      $   # Channel Command Word
CCW0         = --      %      $   # Channel Command Word format-0
CCW1         = --      %      $   # Channel Command Word format-1
CD           = 69      %      $   # Compare Double hfp
CDB          = ED19    %      $ P # Compare Double Bfp
CDBR         = B319    %      $   # Compare Double Bfp Register
CDFBR        = B395    %      $   # Convert to Double bfp from Fixed
                                  + creating Bfp from Register
CDFBRA       = B395    %      $   # Convert to Double bfp from Fixed
                                  + creating Bfp from Register
                                  + Alternative
CDFR         = B3B5    %      $   # Convert to Double hfp from Fixed
                                  + Register
CDFTR        = B951    %      $   # Convert to Double tfp from Fullword
                                  + creating Tfp from Register
CDGBR        = B3A5    %      $   # Convert to Double bfp from Grande
                                  + creating Bfp from Register
CDGBRA       = B3A5    %      $   # Convert to Double bfp from Grande
                                  + creating Bfp from Register
                                  + Alternative
CDGR         = B3C5    %      $   # Convert to Double hfp from Grande
                                  + Register
CDGTR        = B3F1    %      $   # Convert to Double tfp from Grande
                                  + creating Tfp from Register
CDGTRA       = B3F1    %      $   # Convert to Double tfp from Grande
                                  + creating Tfp from Register
                                  + Alternative
CDLFBR       = B391    %      $   # Convert to Double bfp from Logical
                                  + Fullword creating Bfp from Register
CDLFTR       = B953    %      $   # Convert to Double tfp from Logical
                                  + Fullword creating Tfp from Register
CDLGBR       = B3A1    %      $   # Convert to Double bfp from Logical
                                  + Grande creating Bfp from Register
CDLGTR       = B952    %      $   # Convert to Double tfp from Logical
                                  + Grande creating Tfp from Register
CDPT         = EDAE    %      $ P # Convert to Double from Packed
                                  + creating Tfp
CDR          = 29      %      $   # Compare Double hfp Register
CDS          = BB      %      $   # Compare Double and Swap
CDSG         = EB3E    %      $ P # Compare Double and Swap Grande
CDSTR        = B3F3    %      $   # Convert to Double tfp from Signed
                                  + packed creating Tfp from Register
CDSY         = EB31    %      $ P # Compare Double and Swap Yonder
CDTR         = B3E4    %      $   # Compare Double Tfp Register
CDUTR        = B3F2    %      $   # Convert to Double tfp from Unsigned
                                  + packed creating Tfp from Register
CDZT         = EDAA    %      $ P # Convert Decimal to double tfp from
                                  + Zoned creating Tfp
CE           = 79      %      $   # Compare Exponential hfp
CEB          = ED09    %      $ P # Compare Exponential Bfp
CEBR         = B309    %      $   # Compare Exponential Bfp Register
CEDTR        = B3F4    %      $   # Compare biased Exponent Double Tfp
                                  + Register
CEFBR        = B394    %      $   # Convert to Exponential from Fixed
                                  + creating Bfp from Register
CEFBRA       = B394    %      $   # Convert to Exponential from Fixed
                                  + creating Bfp from Register
                                  + Alternative
CEFR         = B3B4    %      $   # Convert to Exponential hfp from
                                  + Fixed Register
CEGBR        = B3A4    %      $   # Convert to Exponential from Grande
                                  + creating Bfp from Register
CEGBRA       = B3A4    %      $   # Convert to Exponential from Grande
                                  + creating Bfp from Register
                                  + Alternative
CEGR         = B3C4    %      $   # Convert to Exponential hfp from
                                  + Grande Register
CEJECT       = --      %      $   # Conditional EJECT listing
CELFBR       = B390    %      $   # Convert to Exponential from Logical
                                  + Fullword creating Bfp from Register
CELGBR       = B3A0    %      $   # Convert to Exponential from Logical
                                  + Grande creating Bfp from Register
CER          = 39      %      $   # Compare Exponential hfp Register
CEXTR        = B3FC    %      $   # Compare biased Exponent eXtended
                                  + Tfp Register
CFC          = B21A    %      $   # Compare and Form Codeword
CFDBR        = B399    %      $   # Convert to Fixed from Double Bfp
                                  + Register
CFDBRA       = B399    %      $   # Convert to Fixed from Double Bfp
                                  + Register Alternative
CFDR         = B3B9    %      $   # Convert to Fixed from Double hfp
                                  + Register
CFDTR        = B941    %      $   # Convert to Fixed from Double Tfp
                                  + Register
CFEBR        = B398    %      $   # Convert to Fixed from Exponential
                                  + Bfp Register
CFEBRA       = B398    %      $   # Convert to Fixed from Exponential
                                  + Bfp Register Alternative
CFER         = B3B8    %      $   # Convert to Fixed from Exponential
                                  + hfp Register
CFI          = C2D     %      $ A # Compare Fullword Immediate
CFXBR        = B39A    %      $   # Convert to Fixed from eXtended Bfp
                                  + Register
CFXBRA       = B39A    %      $   # Convert to Fixed from eXtended Bfp
                                  + Register Alternative
CFXR         = B3BA    %      $   # Convert to Fixed from eXtended hfp
                                  + Register
CFXTR        = B949    %      $   # Convert to Fixed from eXtended Tfp
                                  + Register
CG           = E320    %      $ P # Compare Grande
CGDBR        = B3A9    %      $   # Convert to Grande from Double Bfp
                                  + Register
CGDBRA       = B3A9    %      $   # Convert to Grande from Double Bfp
                                  + Register Alternative
CGDR         = B3C9    %      $   # Convert to Grande from Double hfp
                                  + Register
CGDTR        = B3E1    %      $   # Convert to Grande from Double Tfp
                                  + Register
CGDTRA       = B3E1    %      $   # Convert to Grande from Double Tfp
                                  + Register Alternative
CGEBR        = B3A8    %      $   # Convert to Grande from Exponential
                                  + Bfp Register
CGEBRA       = B3A8    %      $   # Convert to Grande from Exponential
                                  + Bfp Register Alternative
CGER         = B3C8    %      $   # Convert to Grande from Exponential
                                  + hfp Register
CGF          = E330    %      $ P # Compare Grande with Fullword
CGFI         = C2C     %      $ A # Compare Grande with Fullword
                                  + Immediate
CGFR         = B930    %      $   # Compare Grande with Fullword
                                  + Register
CGFRL        = C6C     %      $ A # Compare Grande with Fullword
                                  + Relative Long
CGH          = E334    %      $ P # Compare Grande with Halfword
CGHI         = A7F     %      $ A # Compare Grande with Halfword
                                  + Immediate
CGHRL        = C64     %      $ A # Compare Grande with Halfword
                                  + Relative Long
CGHSI        = E558    %      $   # Compare Grande with Halfword Signed
                                  + Immediate
CGIB         = ECFC    %      $ P # Compare Grande Immediate and Branch
CGIBE        = ECFC    % 1000 $ U # Compare Grande Immediate and Branch
                                  + on Equal
CGIBH        = ECFC    % 0010 $ U # Compare Grande Immediate and Branch
                                  + on High
CGIBL        = ECFC    % 0100 $ U # Compare Grande Immediate and Branch
                                  + on Low
CGIBNE       = ECFC    % 0110 $ U # Compare Grande Immediate and Branch
                                  + on Not Equal
CGIBNH       = ECFC    % 1100 $ U # Compare Grande Immediate and Branch
                                  + on Not High
CGIBNL       = ECFC    % 1010 $ U # Compare Grande Immediate and Branch
                                  + on Not Low
CGIJ         = EC7C    %      $ P # Compare Grande Immediate and Jump
CGIJE        = EC7C    % 1000 $ U # Compare Grande Immediate and Jump
                                  + on Equal
CGIJH        = EC7C    % 0010 $ U # Compare Grande Immediate and Jump
                                  + on High
CGIJL        = EC7C    % 0100 $ U # Compare Grande Immediate and Jump
                                  + on Low
CGIJNE       = EC7C    % 0110 $ U # Compare Grande Immediate and Jump
                                  + on Not Equal
CGIJNH       = EC7C    % 1100 $ U # Compare Grande Immediate and Jump
                                  + on Not High
CGIJNL       = EC7C    % 1010 $ U # Compare Grande Immediate and Jump
                                  + on Not Low
CGIT         = EC70    %      $ P # Compare Grande Immediate and Trap
CGITE        = EC70    % 1000 $ V # Compare Grande Immediate and Trap
                                  + on Equal
CGITH        = EC70    % 0010 $ V # Compare Grande Immediate and Trap
                                  + on High
CGITL        = EC70    % 0100 $ V # Compare Grande Immediate and Trap
                                  + on Low
CGITNE       = EC70    % 0110 $ V # Compare Grande Immediate and Trap
                                  + on Not Equal
CGITNH       = EC70    % 1100 $ V # Compare Grande Immediate and Trap
                                  + on Not High
CGITNL       = EC70    % 1010 $ V # Compare Grande Immediate and Trap
                                  + on Not Low
CGR          = B920    %      $   # Compare Grande Register
CGRB         = ECE4    %      $ P # Compare Grande Register and Branch
CGRBE        = ECE4    % 1000 $ V # Compare Grande Register and Branch
                                  + on Equal
CGRBH        = ECE4    % 0010 $ V # Compare Grande Register and Branch
                                  + on High
CGRBL        = ECE4    % 0100 $ V # Compare Grande Register and Branch
                                  + on Low
CGRBNE       = ECE4    % 0110 $ V # Compare Grande Register and Branch
                                  + on Not Equal
CGRBNH       = ECE4    % 1100 $ V # Compare Grande Register and Branch
                                  + on Not High
CGRBNL       = ECE4    % 1010 $ V # Compare Grande Register and Branch
                                  + on Not Low
CGRJ         = EC64    %      $ P # Compare Grande Register and Jump
CGRJE        = EC64    % 1000 $ V # Compare Grande Register and Jump on
                                  + Equal
CGRJH        = EC64    % 0010 $ V # Compare Grande Register and Jump on
                                  + High
CGRJL        = EC64    % 0100 $ V # Compare Grande Register and Jump on
                                  + Low
CGRJNE       = EC64    % 0110 $ V # Compare Grande Register and Jump on
                                  + Not Equal
CGRJNH       = EC64    % 1100 $ V # Compare Grande Register and Jump on
                                  + Not High
CGRJNL       = EC64    % 1010 $ V # Compare Grande Register and Jump on
                                  + Not Low
CGRL         = C68     %      $ A # Compare Grande Relative Long
CGRT         = B960    %      $   # Compare Grande Register and Trap
CGRTE        = B960    % 1000 $ W # Compare Grande Register and Trap on
                                  + Equal
CGRTH        = B960    % 0010 $ W # Compare Grande Register and Trap on
                                  + High
CGRTL        = B960    % 0100 $ W # Compare Grande Register and Trap on
                                  + Low
CGRTNE       = B960    % 0110 $ W # Compare Grande Register and Trap on
                                  + Not Equal
CGRTNH       = B960    % 1100 $ W # Compare Grande Register and Trap on
                                  + Not High
CGRTNL       = B960    % 1010 $ W # Compare Grande Register and Trap on
                                  + Not Low
CGXBR        = B3AA    %      $   # Convert to Grande from eXtended Bfp
                                  + Register
CGXBRA       = B3AA    %      $   # Convert to Grande from eXtended Bfp
                                  + Register Alternative
CGXR         = B3CA    %      $   # Convert to Grande from eXtended hfp
                                  + Register
CGXTR        = B3E9    %      $   # Convert to Grande from eXtended Tfp
                                  + Register
CGXTRA       = B3E9    %      $   # Convert to Grande from eXtended Tfp
                                  + Register Alternative
CH           = 49      %      $   # Compare Halfword
CHF          = E3CD    %      $   # Compare High and Fullword
CHHR         = B9CD    %      $   # Compare High and High Register
CHHSI        = E554    %      $   # Compare Halfword with Halword
                                  + Signed Immediate
CHI          = A7E     %      $ A # Compare Halfword Immediate
CHLR         = B9DD    %      $   # Compare High and Low Register
CHRL         = C65     %      $ A # Compare Halfword Relative Long
CHSC         =-B25F    %      $   # CHannel Subsystem Call
CHSI         = E55C    %      $   # Compare Halfword Signed Immediate
CHY          = E379    %      $ P # Compare Halfword Yonder
CIB          = ECFE    %      $ P # Compare Immediate and Branch
CIBE         = ECFE    % 1000 $ U # Compare Immediate and Branch on
                                  + Equal
CIBH         = ECFE    % 0010 $ U # Compare Immediate and Branch on
                                  + High
CIBL         = ECFE    % 0100 $ U # Compare Immediate and Branch on Low
CIBNE        = ECFE    % 0110 $ U # Compare Immediate and Branch on Not
                                  + Equal
CIBNH        = ECFE    % 1100 $ U # Compare Immediate and Branch on Not
                                  + High
CIBNL        = ECFE    % 1010 $ U # Compare Immediate and Branch on Not
                                  + Low
CIH          = CCD     %      $   # Compare Immediate High
CIJ          = EC7E    %      $ P # Compare Immediate and Jump
CIJE         = EC7E    % 1000 $ U # Compare Immediate and Jump on Equal
CIJH         = EC7E    % 0010 $ U # Compare Immediate and Jump on High
CIJL         = EC7E    % 0100 $ U # Compare Immediate and Jump on Low
CIJNE        = EC7E    % 0110 $ U # Compare Immediate and Jump on Not
                                  + Equal
CIJNH        = EC7E    % 1100 $ U # Compare Immediate and Jump on Not
                                  + High
CIJNL        = EC7E    % 1010 $ U # Compare Immediate and Jump on Not
                                  + Low
CIO          =-9B      %      $ 5 # Control I/O
CIT          = EC72    %      $ P # Compare Immediate and Trap
CITE         = EC72    % 1000 $ V # Compare Immediate and Trap on Equal
CITH         = EC72    % 0010 $ V # Compare Immediate and Trap on High
CITL         = EC72    % 0100 $ V # Compare Immediate and Trap on Low
CITNE        = EC72    % 0110 $ V # Compare Immediate and Trap on Not
                                  + Equal
CITNH        = EC72    % 1100 $ V # Compare Immediate and Trap on Not
                                  + High
CITNL        = EC72    % 1010 $ V # Compare Immediate and Trap on Not
                                  + Low
CKSM         = B241    %      $   # ChecKSuM
CL           = 55      %      $   # Compare Logical
CLAC         =-B2DA    %      $   # CLear ACcumulator
CLC          = D5      %      $   # Compare Logical Characters
CLCL         = 0F      %      $   # Compare Logical Characters Long
CLCLE        = A9      %      $   # Compare Logical Characters Long
                                  + Extended
CLCLU        = EB8F    %      $ P # Compare Logical Characters Long
                                  + Unicode
CLFDBR       = B39D    %      $   # Convert to Logical Fullword from
                                  + Double Bfp Register
CLFDTR       = B943    %      $   # Convert to Logical Fullword from
                                  + Double Tfp Register
CLFEBR       = B39C    %      $   # Convert to Logical Fullword from
                                  + Exponential Bfp Register
CLFHSI       = E55D    %      $   # Compare Logical Fullword with
                                  + Halfword Signless Immediate
CLFI         = C2F     %      $ A # Compare Logical Fullword Immediate
CLFIT        = EC73    %      $ P # Compare Logical Fullword Immediate
                                  + and Trap
CLFITE       = EC73    % 1000 $ V # Compare Logical Fullword Immediate
                                  + and Trap on Equal
CLFITH       = EC73    % 0010 $ V # Compare Logical Fullword Immediate
                                  + and Trap on High
CLFITL       = EC73    % 0100 $ V # Compare Logical Fullword Immediate
                                  + and Trap on Low
CLFITNE      = EC73    % 0110 $ V # Compare Logical Fullword Immediate
                                  + and Trap on Not Equal
CLFITNH      = EC73    % 1100 $ V # Compare Logical Fullword Immediate
                                  + and Trap on Not High
CLFITNL      = EC73    % 1010 $ V # Compare Logical Fullword Immediate
                                  + and Trap on Not Low
CLFXBR       = B39E    %      $   # Convert to Logical Fullword from
                                  + eXtended Bfp Register
CLFXTR       = B94B    %      $   # Convert to Logical Fullword from
                                  + eXtended Tfp Register
CLG          = E321    %      $ P # Compare Logical Grande
CLGDBR       = B3AD    %      $   # Convert to Logical Grande from
                                  + Double Bfp Register
CLGDTR       = B942    %      $   # Convert to Logical Grande from
                                  + Double Tfp Register
CLGEBR       = B3AC    %      $   # Convert to Logical Grande from
                                  + Exponential Bfp Register
CLGF         = E331    %      $ P # Compare Logical Grande with
                                  + Fullword
CLGFI        = C2E     %      $ A # Compare Logical Grande with
                                  + Fullword Immediate
CLGFR        = B931    %      $   # Compare Logical Grande with
                                  + Fullword Register
CLGFRL       = C6E     %      $ A # Compare Logical Grande with
                                  + Fullword Relative Long
CLGHRL       = C66     %      $ A # Compare Logical Grande with
                                  + Halfword Relative Long
CLGHSI       = E559    %      $   # Compare Logical Grande with
                                  + Halfword Signless Immediate
CLGIB        = ECFD    %      $ P # Compare Logical Grande Immediate
                                  + and Branch
CLGIBE       = ECFD    % 1000 $ U # Compare Logical Grande Immediate
                                  + and Branch on Equal
CLGIBH       = ECFD    % 0010 $ U # Compare Logical Grande Immediate
                                  + and Branch on High
CLGIBL       = ECFD    % 0100 $ U # Compare Logical Grande Immediate
                                  + and Branch on Low
CLGIBNE      = ECFD    % 0110 $ U # Compare Logical Grande Immediate
                                  + and Branch on Not Equal
CLGIBNH      = ECFD    % 1100 $ U # Compare Logical Grande Immediate
                                  + and Branch on Not High
CLGIBNL      = ECFD    % 1010 $ U # Compare Logical Grande Immediate
                                  + and Branch on Not Low
CLGIJ        = EC7D    %      $ P # Compare Logical Grande Immediate
                                  + and Jump
CLGIJE       = EC7D    % 1000 $ U # Compare Logical Grande Immediate
                                  + and Jump on Equal
CLGIJH       = EC7D    % 0010 $ U # Compare Logical Grande Immediate
                                  + and Jump on High
CLGIJL       = EC7D    % 0100 $ U # Compare Logical Grande Immediate
                                  + and Jump on Low
CLGIJNE      = EC7D    % 0110 $ U # Compare Logical Grande Immediate
                                  + and Jump on Not Equal
CLGIJNH      = EC7D    % 1100 $ U # Compare Logical Grande Immediate
                                  + and Jump on Not High
CLGIJNL      = EC7D    % 1010 $ U # Compare Logical Grande Immediate
                                  + and Jump on Not Low
CLGIT        = EC71    %      $ P # Compare Logical Grande Immediate
                                  + and Trap
CLGITE       = EC71    % 1000 $ V # Compare Logical Grande Immediate
                                  + and Trap on Equal
CLGITH       = EC71    % 0010 $ V # Compare Logical Grande Immediate
                                  + and Trap on High
CLGITL       = EC71    % 0100 $ V # Compare Logical Grande Immediate
                                  + and Trap on Low
CLGITNE      = EC71    % 0110 $ V # Compare Logical Grande Immediate
                                  + and Trap on Not Equal
CLGITNH      = EC71    % 1100 $ V # Compare Logical Grande Immediate
                                  + and Trap on Not High
CLGITNL      = EC71    % 1010 $ V # Compare Logical Grande Immediate
                                  + and Trap on Not Low
CLGR         = B921    %      $   # Compare Logical Grande Register
CLGRB        = ECE5    %      $ P # Compare Logical Grande Register and
                                  + Branch
CLGRBE       = ECE5    % 1000 $ V # Compare Logical Grande Register and
                                  + Branch on Equal
CLGRBH       = ECE5    % 0010 $ V # Compare Logical Grande Register and
                                  + Branch on High
CLGRBL       = ECE5    % 0100 $ V # Compare Logical Grande Register and
                                  + Branch on Low
CLGRBNE      = ECE5    % 0110 $ V # Compare Logical Grande Register and
                                  + Branch on Not Equal
CLGRBNH      = ECE5    % 1100 $ V # Compare Logical Grande Register and
                                  + Branch on Not High
CLGRBNL      = ECE5    % 1010 $ V # Compare Logical Grande Register and
                                  + Branch on Not Low
CLGRJ        = EC65    %      $ P # Compare Logical Grande Register and
                                  + Jump
CLGRJE       = EC65    % 1000 $ V # Compare Logical Grande Register and
                                  + Jump on Equal
CLGRJH       = EC65    % 0010 $ V # Compare Logical Grande Register and
                                  + Jump on High
CLGRJL       = EC65    % 0100 $ V # Compare Logical Grande Register and
                                  + Jump on Low
CLGRJNE      = EC65    % 0110 $ V # Compare Logical Grande Register and
                                  + Jump on Not Equal
CLGRJNH      = EC65    % 1100 $ V # Compare Logical Grande Register and
                                  + Jump on Not High
CLGRJNL      = EC65    % 1010 $ V # Compare Logical Grande Register and
                                  + Jump on Not Low
CLGRL        = C6A     %      $ A # Compare Logical Grande Relative
                                  + Long
CLGRT        = B961    %      $   # Compare Logical Grande Register and
                                  + Trap
CLGRTE       = B961    % 1000 $ W # Compare Logical Grande Register and
                                  + Trap on Equal
CLGRTH       = B961    % 0010 $ W # Compare Logical Grande Register and
                                  + Trap on High
CLGRTL       = B961    % 0100 $ W # Compare Logical Grande Register and
                                  + Trap on Low
CLGRTNE      = B961    % 0110 $ W # Compare Logical Grande Register and
                                  + Trap on Not Equal
CLGRTNH      = B961    % 1100 $ W # Compare Logical Grande Register and
                                  + Trap on Not High
CLGRTNL      = B961    % 1010 $ W # Compare Logical Grande Register and
                                  + Trap on Not Low
CLGT         = EB2B    %      $ P # Compare Logical Grande and Trap
CLGTE        = EB2B    % 1000 $ P # Compare Logical Grande and Trap on
                                  + Equal
CLGTH        = EB2B    % 0010 $ P # Compare Logical Grande and Trap on
                                  + High
CLGTL        = EB2B    % 0100 $ P # Compare Logical Grande and Trap on
                                  + Low
CLGTNE       = EB2B    % 0110 $ P # Compare Logical Grande and Trap on
                                  + Not Equal
CLGTNH       = EB2B    % 1100 $ P # Compare Logical Grande and Trap on
                                  + Not High
CLGTNL       = EB2B    % 1010 $ P # Compare Logical Grande and Trap on
                                  + Not Low
CLGXBR       = B3AE    %      $   # Convert to Logical Grande from
                                  + eXtended Bfp Register
CLGXTR       = B94A    %      $   # Convert to Logical Grande from
                                  + eXtended Tfp Register
CLHF         = E3CF    %      $   # Compare Logical High and Fullword
CLHHR        = B9CF    %      $   # Compare Logical High and
                                  + High Register
CLHHSI       = E555    %      $   # Compare Logical Halfword with
                                  + Halfword Signless Immediate
CLHLR        = B9DF    %      $   # Compare Logical High and
                                  + Low Register
CLHRL        = C67     %      $ A # Compare Logical with Halfword
                                  + Relative Long
CLI          = 95      %      $   # Compare Logical Immediate
CLIB         = ECFF    %      $ P # Compare Logical Immediate and
                                  + Branch
CLIBE        = ECFF    % 1000 $ U # Compare Logical Immediate and
                                  + Branch on Equal
CLIBH        = ECFF    % 0010 $ U # Compare Logical Immediate and
                                  + Branch on High
CLIBL        = ECFF    % 0100 $ U # Compare Logical Immediate and
                                  + Branch on Low
CLIBNE       = ECFF    % 0110 $ U # Compare Logical Immediate and
                                  + Branch on Not Equal
CLIBNH       = ECFF    % 1100 $ U # Compare Logical Immediate and
                                  + Branch on Not High
CLIBNL       = ECFF    % 1010 $ U # Compare Logical Immediate and
                                  + Branch on Not Low
CLIH         = CCF     %      $   # Compare Logical Immediate High
CLIJ         = EC7F    %      $ P # Compare Logical Immediate and Jump
CLIJE        = EC7F    % 1000 $ U # Compare Logical Immediate and Jump
                                  + on Equal
CLIJH        = EC7F    % 0010 $ U # Compare Logical Immediate and Jump
                                  + on High
CLIJL        = EC7F    % 0100 $ U # Compare Logical Immediate and Jump
                                  + on Low
CLIJNE       = EC7F    % 0110 $ U # Compare Logical Immediate and Jump
                                  + on Not Equal
CLIJNH       = EC7F    % 1100 $ U # Compare Logical Immediate and Jump
                                  + on Not High
CLIJNL       = EC7F    % 1010 $ U # Compare Logical Immediate and Jump
                                  + on Not Low
CLIY         = EB55    %      $ P # Compare Logical Immediate Yonder
CLM          = BD      %      $   # Compare Logical characters under
                                  + Mask
CLMH         = EB20    %      $ P # Compare Logical characters under
                                  + Mask High
CLMY         = EB21    %      $ P # Compare Logical characters under
                                  + Mask Yonder
CLR          = 15      %      $   # Compare Logical Register
CLRB         = ECF7    %      $ P # Compare Logical Register and Branch
CLRBE        = ECF7    % 1000 $ V # Compare Logical Register and Branch
                                  + on Equal
CLRBH        = ECF7    % 0010 $ V # Compare Logical Register and Branch
                                  + on High
CLRBL        = ECF7    % 0100 $ V # Compare Logical Register and Branch
                                  + on Low
CLRBNE       = ECF7    % 0110 $ V # Compare Logical Register and Branch
                                  + on Not Equal
CLRBNH       = ECF7    % 1100 $ V # Compare Logical Register and Branch
                                  + on Not High
CLRBNL       = ECF7    % 1010 $ V # Compare Logical Register and Branch
                                  + on Not Low
CLRCH        =-9F01    %      $   # CLeaR CHannel
CLRIO        =-9D01    %      $   # CLeaR I/O
CLRJ         = EC77    %      $ P # Compare Logical Register and Jump
CLRJE        = EC77    % 1000 $ V # Compare Logical Register and Jump
                                  + on Equal
CLRJH        = EC77    % 0010 $ V # Compare Logical Register and Jump
                                  + on High
CLRJL        = EC77    % 0100 $ V # Compare Logical Register and Jump
                                  + on Low
CLRJNE       = EC77    % 0110 $ V # Compare Logical Register and Jump
                                  + on Not Equal
CLRJNH       = EC77    % 1100 $ V # Compare Logical Register and Jump
                                  + on Not High
CLRJNL       = EC77    % 1010 $ V # Compare Logical Register and Jump
                                  + on Not Low
CLRL         = C6F     %      $ A # Compare Logical Relative Long
CLRNG        = B2CB    %      $ T # Compare Logical for RaNGe check
CLRP         =-B215    %      $   # CLeaR Page
CLRT         = B973    %      $   # Compare Logical Register and Trap
CLRTE        = B973    % 1000 $ W # Compare Logical Register and Trap
                                  + on Equal
CLRTH        = B973    % 0010 $ W # Compare Logical Register and Trap
                                  + on High
CLRTL        = B973    % 0100 $ W # Compare Logical Register and Trap
                                  + on Low
CLRTNE       = B973    % 0110 $ W # Compare Logical Register and Trap
                                  + on Not Equal
CLRTNH       = B973    % 1100 $ W # Compare Logical Register and Trap
                                  + on Not High
CLRTNL       = B973    % 1010 $ W # Compare Logical Register and Trap
                                  + on Not Low
CLST         = B25D    %      $   # Compare Logical STring
CLT          = EB23    %      $ P # Compare Logical and Trap
CLTE         = EB23    % 1000 $ P # Compare Logical and Trap on Equal
CLTH         = EB23    % 0010 $ P # Compare Logical and Trap on High
CLTL         = EB23    % 0100 $ P # Compare Logical and Trap on Low
CLTNE        = EB23    % 0110 $ P # Compare Logical and Trap on Not
                                  + Equal
CLTNH        = EB23    % 1100 $ P # Compare Logical and Trap on Not
                                  + High
CLTNL        = EB23    % 1010 $ P # Compare Logical and Trap on Not Low
CLY          = E355    %      $ P # Compare Logical Yonder
CLZG         = B968    %      $   # Count Leading Zeros Grande
CMPS         = 0109    %      $ G # Clear Message Path State
CMPSC        = B263    %      $   # CoMPreSsion Call
CMSG         = 0105    %      $ F # Clear MeSsaGe
CNOP         = --      %      $   # Computer No-OPeration
COM          = --      %      $   # COMmon control section
COMP         =-EA05    %      $ S # ???
CONCS        =-B200    %      $   # CONnect Channel Set
COPY         = --      %      $   # COPY member
COSD         =-B28A    %      $   # COSine of Double hfp
COSE         =-B28B    %      $   # COSine of Exponential hfp
CP           = F9      %      $   # Compare Packed decimal
CPDT         = EDAC    %      $ P # Convert to Packed from Double Tfp
CPSDR        = B372    %      $   # CoPy Sign Double floating point
                                  + Register
CPXT         = EDAD    %      $ P # Convert to Packed from eXtended Tfp
CPYA         = B24D    %      $   # CoPY Access
CR           = 19      %      $   # Compare Register
CRB          = ECF6    %      $ P # Compare Register and Branch
CRBE         = ECF6    % 1000 $ V # Compare Register and Branch on
                                  + Equal
CRBH         = ECF6    % 0010 $ V # Compare Register and Branch on High
CRBL         = ECF6    % 0100 $ V # Compare Register and Branch on Low
CRBNE        = ECF6    % 0110 $ V # Compare Register and Branch on Not
                                  + Equal
CRBNH        = ECF6    % 1100 $ V # Compare Register and Branch on Not
                                  + High
CRBNL        = ECF6    % 1010 $ V # Compare Register and Branch on Not
                                  + Low
CRDTE        = B98F    %      $   # Compare and Replace Dat Table Entry
CRJ          = EC76    %      $ P # Compare Register and Jump
CRJE         = EC76    % 1000 $ V # Compare Register and Jump on Equal
CRJH         = EC76    % 0010 $ V # Compare Register and Jump on High
CRJL         = EC76    % 0100 $ V # Compare Register and Jump on Low
CRJNE        = EC76    % 0110 $ V # Compare Register and Jump on Not
                                  + Equal
CRJNH        = EC76    % 1100 $ V # Compare Register and Jump on Not
                                  + High
CRJNL        = EC76    % 1010 $ V # Compare Register and Jump on Not
                                  + Low
CRL          = C6D     %      $ A # Compare Relative Long
CRT          = B972    %      $   # Compare Register and Trap
CRTE         = B972    % 1000 $ W # Compare Register and Trap on Equal
CRTH         = B972    % 0010 $ W # Compare Register and Trap on High
CRTL         = B972    % 0100 $ W # Compare Register and Trap on Low
CRTNE        = B972    % 0110 $ W # Compare Register and Trap on Not
                                  + Equal
CRTNH        = B972    % 1100 $ W # Compare Register and Trap on Not
                                  + High
CRTNL        = B972    % 1010 $ W # Compare Register and Trap on Not
                                  + Low
CS           = BA      %      $   # Compare and Swap
CSCH         = B230    %      $   # Clear SubCHannel
CSDTR        = B3E3    %      $   # Convert to Signed packed from
                                  + Double Tfp Register
CSECT        = --      %      $   # Control SECTion
CSG          = EB30    %      $ P # Compare and Swap Grande
CSP          = B250    %      $   # Compare and Swap and Purge
CSPG         = B98A    %      $   # Compare and Swap and Purge Grande
CSST         = C82     %      $ A # Compare and Swap and STore
CSXTR        = B3EB    %      $   # Convert to Signed packed from
                                  + eXtended Tfp Register
CSY          = EB14    %      $ P # Compare and Swap Yonder
CTP          =-B0      %      $   # ConnecT Page
CTZG         = B969    %      $   # Count Trailing Zeros Grande
CUDTR        = B3E2    %      $   # Convert to Unsigned packed from
                                  + Double Tfp Register
CUSE         = B257    %      $   # Compare Until Substring Equal
CUTFU        = B2A7    %      $ Q # Convert UTF-8 to Unicode
CUUTF        = B2A6    %      $ Q # Convert Unicode to UTF-8
CUXTR        = B3EA    %      $   # Convert to Unsigned packed from
                                  + eXtended Tfp Register
CU12         = B2A7    %      $ Q # Convert Unicode 1-byte to 2-byte
CU14         = B9B0    %      $ Q # Convert Unicode 1-byte to 4-byte
CU21         = B2A6    %      $ Q # Convert Unicode 2-byte to 1-byte
CU24         = B9B1    %      $ Q # Convert Unicode 2-byte to 4-byte
CU41         = B9B2    %      $ D # Convert Unicode 4-byte to 1-byte
CU42         = B9B3    %      $ D # Convert Unicode 4-byte to 2-byte
CVB          = 4F      %      $   # ConVert to Binary
CVBG         = E30E    %      $ P # ConVert to Binary Grande
CVBY         = E306    %      $ P # ConVert to Binary from Yonder
CVD          = 4E      %      $   # ConVert to Decimal
CVDG         = E32E    %      $ P # ConVert to Decimal Grande
CVDY         = E326    %      $ P # ConVert to Decimal from Yonder
CXBR         = B349    %      $   # Compare eXtended Bfp Register
CXD          = --      %      $   # Cumulative eXternal Dummy length
CXFBR        = B396    %      $   # Convert to eXtended from Fixed
                                  + creating Bfp from Register
CXFBRA       = B396    %      $   # Convert to eXtended from Fixed
                                  + creating Bfp from Register
                                  + Alternative
CXFR         = B3B6    %      $   # Convert to eXtended hfp from Fixed
                                  + Register
CXFTR        = B959    %      $   # Convert to eXtended tfp from
                                  + Fullword creating Tfp from Register
CXGBR        = B3A6    %      $   # Convert to eXtended from Grande
                                  + creating Bfp from Register
CXGBRA       = B3A6    %      $   # Convert to eXtended from Grande
                                  + creating Bfp from Register
                                  + Alternative
CXGR         = B3C6    %      $   # Convert to eXtended hfp from Grande
                                  + Register
CXGTR        = B3F9    %      $   # Convert to eXtended tfp from Grande
                                  + creating Tfp from Register
CXGTRA       = B3F9    %      $   # Convert to eXtended tfp from Grande
                                  + creating Tfp from Register
                                  + Alternative
CXLFBR       = B392    %      $   # Convert to eXtended bfp from
                                  + Logical Fullword creating Bfp
                                  + from Register
CXLFTR       = B95B    %      $   # Convert to eXtended tfp from
                                  + Logical Fullword creating Tfp
                                  + from Register
CXLGBR       = B3A2    %      $   # Convert to eXtended bfp from
                                  + Logical Grande creating Bfp
                                  + from Register
CXLGTR       = B95A    %      $   # Convert to eXtended tfp from
                                  + Logical Grande creating Tfp
                                  + from Register
CXPT         = EDAF    %      $ P # Convert eXtended from Packed
                                  + creating Tfp
CXR          = B369    %      $   # Compare eXtended hfp Register
CXSTR        = B3FB    %      $   # Convert to eXtended tfp from Signed
                                  + packed creating Tfp from Register
CXTR         = B3EC    %      $   # Compare eXtended Tfp Register
CXUTR        = B3FA    %      $   # Convert to eXtended tfp from
                                  + Unsigned packed creating Tfp from
                                  + Register
CXZT         = EDAB    %      $ P # Convert to eXtended tfp from Zoned
                                  + creating Tfp
CY           = E359    %      $ P # Compare Yonder
CZDT         = EDA8    %      $ P # Convert to Zoned from Double Tfp
CZXT         = EDA9    %      $ P # Convert to Zoned from eXtended Tfp
D            = 5D      %      $   # Divide
DC           = --      %      $   # Define Constant
DC.A         = --      %      $   # DC - Address
DC.AD        = --      %      $   # DC - Address in Doubleword
DC.B         = --      %      $   # DC - Binary data
DC.C         = --      %      $   # DC - Character data
DC.CA        = --      %      $   # DC - Character data Ascii
DC.CE        = --      %      $   # DC - Character data Ebcdic
DC.CU        = --      %      $   # DC - Character data Unicode
DC.D         = --      %      $   # DC - Double hfp data
DC.DB        = --      %      $   # DC - Double Bfp data
DC.DD        = --      %      $   # DC - Double Dfp data
DC.DH        = --      %      $   # DC - Double Hfp data
DC.E         = --      %      $   # DC - Exponential hfp data
DC.EB        = --      %      $   # DC - Exponential Bfp data
DC.ED        = --      %      $   # DC - Exponential Dfp data
DC.EH        = --      %      $   # DC - Exponential Hfp data
DC.F         = --      %      $   # DC - Fixed-point binary data
DC.FD        = --      %      $   # DC - Fixed-point Doubleword binary
                                  + data
DC.G         = --      %      $   # DC - Graphic character data
DC.H         = --      %      $   # DC - Halfword signed binary data
DC.J         = --      %      $   # DC - J-type data - length of
                                  + external dummy section or class
DC.JD        = --      %      $   # DC - J-type data Doubleword -
                                  + length of external dummy section or
                                  + class
DC.L         = --      %      $   # DC - Long exponential hfp data
DC.LB        = --      %      $   # DC - Long exponential Bfp data
DC.LD        = --      %      $   # DC - Long exponential Dfp data
DC.LH        = --      %      $   # DC - Long exponential Hfp data
DC.LQ        = --      %      $   # DC - Long exponential hfp data
                                  + Quadword aligned
DC.P         = --      %      $   # DC - Packed decimal data
DC.Q         = --      %      $   # DC - Q-type data - external dummy
                                  + section offset
DC.QD        = --      %      $   # DC - Q-type Doubleword data -
                                  + external dummy section offset
DC.QY        = --      %      $   # DC - Q-type Yonder - external dummy
                                  + section offset
DC.R         = --      %      $   # DC - Relocatable psect address
DC.RD        = --      %      $   # DC - Relocatable Doubleword psect
                                  + address
DC.S         = --      %      $   # DC - Standard base-displacement
                                  + address
DC.SY        = --      %      $   # DC - Standard Yonder
                                  + base-displacement address
DC.V         = --      %      $   # DC - oVerlay address
DC.VD        = --      %      $   # DC - oVerlay Doubleword address
DC.X         = --      %      $   # DC - heXadecimal data
DC.Y         = --      %      $   # DC - Y-type data - address
DC.Z         = --      %      $   # DC - Zoned decimal data
DCTP         =-B21C    %      $   # DisConnecT Page
DD           = 6D      %      $   # Divide Double hfp
DDB          = ED1D    %      $ P # Divide Double Bfp
DDBR         = B31D    %      $   # Divide Double Bfp Register
DDR          = 2D      %      $   # Divide Double hfp Register
DDRN         =-B2C6    %      $   # Divide Double hfp with RouNding
DDTR         = B3D1    %      $   # Divide Double Tfp Register
DDTRA        = B3D1    %      $   # Divide Double Tfp Register
                                  + Alternative
DE           = 7D      %      $   # Divide Exponential hfp
DEB          = ED0D    %      $ P # Divide Exponential Bfp
DEBR         = B30D    %      $   # Divide Exponential Bfp Register
DEP          =-B21B    %      $   # DEconfigure Page
DER          = 3D      %      $   # Divide Exponential hfp Register
DERN         =-B2C7    %      $   # Divide Exponential hfp with
                                  + RouNding
DFLTCC       = B939    %      $ Z # DeFLaTe Conversion Call
DFLTCC.CMPR  = B939.02 %      $   # DFLTCC - CoMPRess
DFLTCC.GDHT  = B939.01 %      $   # DFLTCC - Generate Dynamic-Huffman
                                  + Table
DFLTCC.QAF   = B939.00 %      $   # DFLTCC - Query Available Functions
DFLTCC.XPND  = B939.04 %      $   # DFLTCC - eXPaND
DIAG         =-83      %      $   # DIAGnose
DIAGNOSE     =-83      %      $   # DIAGNOSE
DIDBR        = B35B    %      $   # Divide to Integer Double Bfp
                                  + Register
DIEBR        = B353    %      $   # Divide to Integer Exponential Bfp
                                  + Register
DIL          =-EA00    %      $ S # ???
DIP          = ????    %      $ T # Drain Instruction Pipeline
DISCS        =-B201    %      $   # DISconnect Channel Set
DL           = E397    %      $ P # Divide Logical
DLG          = E387    %      $ P # Divide Logical Grande
DLGR         = B987    %      $   # Divide Logical Grande Register
DLR          = B997    %      $   # Divide Logical Register
DP           = FD      %      $   # Divide Packed decimal
DPFET        = E518    %      $ T # Divide Packed FETch
DPQUO        = B2EF    %      $ T # Divide Packed QUOtient
DPSTO        = B291    %      $ T # Divide Packed STOre
DQAP         = B2AE    %      $   # DeQueue Adjunct Processor
DR           = 1D      %      $   # Divide Register
DROP         = --      %      $   # DROP
DS           = --      %      $   # Define Storage
DS.A         = --      %      $   # DS - Address
DS.AD        = --      %      $   # DS - Address in Doubleword
DS.B         = --      %      $   # DS - Binary data
DS.C         = --      %      $   # DS - Character data
DS.CA        = --      %      $   # DS - Character data Ascii
DS.CE        = --      %      $   # DS - Character data Ebcdic
DS.CU        = --      %      $   # DS - Character data Unicode
DS.D         = --      %      $   # DS - Double hfp data
DS.DB        = --      %      $   # DS - Double Bfp data
DS.DD        = --      %      $   # DS - Double Dfp data
DS.DH        = --      %      $   # DS - Double Hfp data
DS.E         = --      %      $   # DS - Exponential hfp data
DS.EB        = --      %      $   # DS - Exponential Bfp data
DS.ED        = --      %      $   # DS - Exponential Dfp data
DS.EH        = --      %      $   # DS - Exponential Hfp data
DS.F         = --      %      $   # DS - Fixed-point binary data
DS.FD        = --      %      $   # DS - Fixed-point Doubleword binary
                                  + data
DS.G         = --      %      $   # DS - Graphic character data
DS.H         = --      %      $   # DS - Halfword signed binary data
DS.J         = --      %      $   # DS - J-type data - length of
                                  + external dummy section or class
DS.JD        = --      %      $   # DS - J-type data Doubleword -
                                  + length of external dummy section or
                                  + class
DS.L         = --      %      $   # DS - Long exponential hfp data
DS.LB        = --      %      $   # DS - Long exponential Bfp data
DS.LD        = --      %      $   # DS - Long exponential Dfp data
DS.LH        = --      %      $   # DS - Long exponential Hfp data
DS.LQ        = --      %      $   # DS - Long exponential hfp data
                                  + Quadword aligned
DS.P         = --      %      $   # DS - Packed decimal data
DS.Q         = --      %      $   # DS - Q-type data - external dummy
                                  + section offset
DS.QD        = --      %      $   # DS - Q-type Doubleword data -
                                  + external dummy section offset
DS.QY        = --      %      $   # DS - Q-type Yonder - external dummy
                                  + section offset
DS.R         = --      %      $   # DS - Relocatable psect address
DS.RD        = --      %      $   # DS - Relocatable Doubleword psect
                                  + address
DS.S         = --      %      $   # DS - Standard base-displacement
                                  + address
DS.SY        = --      %      $   # DS - Standard Yonder
                                  + base-displacement address
DS.V         = --      %      $   # DS - oVerlay address
DS.VD        = --      %      $   # DS - oVerlay Doubleword address
DS.X         = --      %      $   # DS - heXadecimal data
DS.Y         = --      %      $   # DS - Y-type data - address
DS.Z         = --      %      $   # DS - Zoned decimal data
DSECT        = --      %      $   # Dummy SECTion
DSG          = E30D    %      $ P # Divide Single Grande
DSGF         = E31D    %      $ P # Divide Single Grande by Fullword
DSGFR        = B91D    %      $   # Divide Single Grande by Fullword
                                  + Register
DSGR         = B90D    %      $   # Divide Single Grande Register
DV           = B268    %      $ G # Define Vector
DXBR         = B34D    %      $   # Divide eXtended Bfp Register
DXD          = --      %      $   # Define eXternal Dummy section
DXR          = B22D    %      $   # Divide eXtended hfp Register
DXTR         = B3D9    %      $   # Divide eXtended Tfp Register
DXTRA        = B3D9    %      $   # Divide eXtended Tfp Register
                                  + Alternative
EAR          = B24F    %      $   # Extract Access Register
ECA          =-B2ED    %      $ X # Extract Coprocessor group Address
ECAG         = EB4C    %      $ P # Extract Cache Attribute Grande
ECAG.CAS     = EB4C.0  %      $ P # ECAG - Cache-Attribute-Set
                                  + operation
ECAG.CPUAS   = EB4C.1  %      $ P # ECAG - CPU-Attribute-Set operation
ECCTR        = B2E4    %      $ X # Extract Cpu CounTeR
ECPGA        = B2ED    %      $ X # Extract CoProcessor Group Address
ECTG         = C81     %      $ A # Extract Cpu Time Grande
ED           = DE      %      $   # EDit
EDBYT        = B2DF    %      $ T # EDit BYTe ???
EDMK         = DF      %      $   # EDit and MarK
EEDTR        = B3E5    %      $   # Extract biased Exponent from Double
                                  + Tfp Register
EEXTR        = B3ED    %      $   # Extract biased Exponent from
                                  + eXtended Tfp Register
EFPC         = B38C    %      $   # Extract Floating Point Control
                                  + register
EJECT        = --      %      $   # EJECT listing
END          = --      %      $   # END assembly
ENTRY        = --      %      $   # ENTRY point
EPAIR        = B99A    %      $   # Extract Primary Asn and Instance to
                                  + Register
EPAR         = B226    %      $   # Extract Primary Asn to Register
EPCTR        = B2E5    %      $ X # Extract Peripheral CounTeR
EPSW         = B98D    %      $   # Extract Program Status Word
EQBS         = B99C    %      $   # Extract Qdio Buffer State
EQU          = --      %      $   # EQUate
EREG         = B249    %      $   # Extract stacked REGisters
EREGG        = B90E    %      $   # Extract stacked REGisters Grande
ESAIR        = B99B    %      $   # Extract Secondary Asn and Instance
                                  + to Register
ESAR         = B227    %      $   # Extract Secondary Asn to Register
ESDTR        = B3E7    %      $   # Extract Significance from Double
                                  + Tfp Register
ESEA         = B99D    %      $   # Extract and Set Extended Authority
ESSA         = B9AB    %      $ Y # Extract and Set Storage Attributes
ESTA         = B24A    %      $   # Extract stacked STAte
ESTA.ASTEIN  = B24A.05 %      $   # ESTA - secondary and primary ASTEIN
ESTA.MODAREA = B24A.03 %      $   # ESTA - MODifiable AREA
ESTA.PSEP    = B24A.00 %      $   # ESTA - Pkm, Sasn, Eax, Pasn
ESTA.PSW31   = B24A.01 %      $   # ESTA - PSW for 31-bit architecture
ESTA.PSW64   = B24A.04 %      $   # ESTA - PSW for 64-bit architecture
ESTA.TARGET  = B24A.02 %      $   # ESTA - TARGET of branch or pc
ESXTR        = B3EF    %      $   # Extract Significance from eXtended
                                  + Tfp Register
ETND         = B2EC    %      $ 4 # Extract Transaction Nesting Depth
EX           = 44      %      $   # EXecute another instruction
EXAR         = ????    %      $ T # EXtract Access Register
EXARI        = ????    %      $ T # EXtract Access Register Indirect
EXGRI        = ????    %      $ T # EXtract program General Register
                                  + Indirect
EXINT        = ????    %      $ T # EXtract INTerrupt
EXITCTL      = --      %      $   # EXIT ConTroL values
EXPD         =-B282    %      $   # EXPonential of Double hfp
EXPE         =-B283    %      $   # EXPonential of Exponential hfp
EXRL         = C60     %      $ A # EXecute Relative Long
EXTRN        = --      %      $   # EXTeRNal symbol
EXTV         = ????    %      $ T # EXTract Via register-operand
                                  + register
FBE          = B2CC    %      $ T # Find Byte Equal
FBED         = B2CE    %      $ T # Find Byte Equal Double
FBN          = B2CD    %      $ T # Find Byte Not equal
FBND         = B2CF    %      $ T # Find Byte Not equal Double
FIDBR        = B35F    %      $   # load Floating point Integer from
                                  + Double Bfp Register
FIDBRA       = B35F    %      $   # load Floating point Integer from
                                  + Double Bfp Register Alternative
FIDR         = B37F    %      $   # load Floating point Integer from
                                  + Double hfp Register
FIDTR        = B3D7    %      $   # load Floating point Integer from
                                  + Double Tfp Register
FIEBR        = B357    %      $   # load Floating point Integer from
                                  + Exponential Bfp Register
FIEBRA       = B357    %      $   # load Floating point Integer from
                                  + Exponential Bfp Register
                                  + Alternative
FIER         = B377    %      $   # load Floating point Integer from
                                  + Exponential hfp Register
FIXBR        = B347    %      $   # load Floating point Integer from
                                  + eXtended Bfp Register
FIXBRA       = B347    %      $   # load Floating point Integer from
                                  + eXtended Bfp Register Alternative
FIXR         = B367    %      $   # load Floating point Integer from
                                  + eXtended hfp Register
FIXTR        = B3DF    %      $   # load Floating point Integer from
                                  + eXtended Tfp Register
FLOGR        = B983    %      $   # Find Leftmost One Grande Register
FREEX        =-E614    %      $ J # ???
FRETX        =-E615    %      $ J # ???
GBLA         = &&      %      $   # GloBaL Arithmetic variable
GBLB         = &&      %      $   # GloBaL Boolean variable
GBLC         = &&      %      $   # GloBaL Character variable
HDR          = 24      %      $   # Halve Double hfp Register
HDV          =-9E01    %      $   # Halt DeVice
HER          = 34      %      $   # Halve Exponential hfp Register
HIO          =-9E00    %      $ E # Halt I/O
HIO          =-9E      %      $   # Halt I/O
HPR          =-99      %      $ 5 # Halt and PRoceed
HSCH         = B231    %      $   # Halt SubCHannel
IAC          = B224    %      $   # Insert Address space Control
IC           = 43      %      $   # Insert Character
ICM          = BF      %      $   # Insert Characters under Mask
ICMH         = EB80    %      $ P # Insert Characters under Mask High
ICMY         = EB81    %      $ P # Insert Characters under Mask Yonder
ICTL         = --      %      $   # Input ConTroL
ICY          = E373    %      $ P # Insert Character Yonder
IDTE         = B98E    %      $   # Invalidate Dat Table Entry
IEDTR        = B3F6    %      $   # Insert biased Exponent into Double
                                  + Tfp Register
IESBE        =-B259    %      $   # Invalidate Expanded Storage Block
                                  + Entry
IEXTR        = B3FE    %      $   # Insert biased Exponent into
                                  + eXtended Tfp Register
IIHF         = C08     %      $ A # Insert Immediate into High-order
                                  + word, a Fullword
IIHH         = A50     %      $ A # Insert Immediate into High-order
                                  + word, Higher halfword
IIHL         = A51     %      $ A # Insert Immediate into High-order
                                  + word, Lower halfword
IILF         = C09     %      $ A # Insert Immediate into Low-order
                                  + word, a Fullword
IILH         = A52     %      $ A # Insert Immediate into Low-order
                                  + word, Higher halfword
IILL         = A53     %      $ A # Insert Immediate into Low-order
                                  + word, Lower halfword
IPB          =-B4      %      $   # Insert Page Bits
IPK          = B20B    %      $   # Insert Psw Key
IPM          = B222    %      $   # Insert Program Mask
IPTE         = B221    %      $   # Invalidate Page Table Entry
IRBM         = B9AC    %      $ 6 # Insert Reference Bits Multiple
ISEQ         = --      %      $   # Input SEQuence checking
ISK          =-09      %      $   # Insert Storage Key
ISKE         = B229    %      $   # Insert Storage Key Extended
IUCV         =-B2F0    %      $   # Inter User Communications Vehicle
IVSK         = B223    %      $   # Insert Virtual Storage Key
J            = A74     % 1111 $ C # Jump
JAS          = A75     %      $ A # Jump And Save
JASL         = C05     %      $ A # Jump And Save Long
JC           = A74     %      $ A # Jump on Condition
JCT          = A76     %      $ A # Jump on CounT
JCTG         = A77     %      $ A # Jump on CounT Grande
JCTH         = CC6     %      $   # Jump on CounT High
JE           = A74     % 1000 $ C # Jump on Equal
JG           =-C04     % 1111 $ C # Jump lonG
JGE          =-C04     % 1000 $ C # Jump lonG on Equal
JGH          =-C04     % 0010 $ C # Jump lonG on High
JGHE         =-C04     % 1010 $ C # Jump lonG on High or Equal
JGL          =-C04     % 0100 $ C # Jump lonG on Low
JGLE         =-C04     % 1100 $ C # Jump lonG on Low or Equal
JGLH         =-C04     % 0110 $ C # Jump lonG on Low or High
JGM          =-C04     % 0100 $ C # Jump lonG on Mixed / Minus
JGNE         =-C04     % 0111 $ C # Jump lonG on Not Equal
JGNH         =-C04     % 1101 $ C # Jump lonG on Not High
JGNHE        =-C04     % 0101 $ C # Jump lonG on Not High or Equal
JGNL         =-C04     % 1011 $ C # Jump lonG on Not Low
JGNLE        =-C04     % 0011 $ C # Jump lonG on Not Low or Equal
JGNLH        =-C04     % 1001 $ C # Jump lonG on Not Low or High
JGNM         =-C04     % 1011 $ C # Jump lonG on Not Mixed / Minus
JGNO         =-C04     % 1110 $ C # Jump lonG on Not Ones / Overflow
JGNOP        =-C04     % 0000 $ C # Jump lonG No-OPeration
JGNP         =-C04     % 1101 $ C # Jump lonG on Not Plus
JGNZ         =-C04     % 0111 $ C # Jump lonG on Not Zero
JGO          =-C04     % 0001 $ C # Jump lonG on Ones / Overflow
JGP          =-C04     % 0010 $ C # Jump lonG on Plus
JGZ          =-C04     % 1000 $ C # Jump lonG on Zero
JH           = A74     % 0010 $ C # Jump on High
JHE          =-A74     % 1010 $ C # Jump on High or Equal
JL           = A74     % 0100 $ C # Jump on Low
JLC          = C04     %      $ C # Jump Long on Condition
JLE          = C04     % 1000 $ C # Jump Long on Equal
JLE          =-A74     % 1100 $ C # Jump on Low or Equal
JLH          = C04     % 0010 $ C # Jump Long on High
JLH          =-A74     % 0110 $ C # Jump on Low or High
JLL          = C04     % 0100 $ C # Jump Long on Low
JLM          = C04     % 0100 $ C # Jump Long on Mixed / Minus
JLNE         = C04     % 0111 $ C # Jump Long on Not Equal
JLNH         = C04     % 1101 $ C # Jump Long on Not High
JLNL         = C04     % 1011 $ C # Jump Long on Not Low
JLNM         = C04     % 1011 $ C # Jump Long on Not Mixed / Minus
JLNO         = C04     % 1110 $ C # Jump Long on Not Ones / Overflow
JLNOP        = C04     % 0000 $ C # Jump Long No-OPeration
JLNP         = C04     % 1101 $ C # Jump Long on Not Plus
JLNZ         = C04     % 0111 $ C # Jump Long on Not Zero
JLO          = C04     % 0001 $ C # Jump Long on Ones / Overflow
JLP          = C04     % 0010 $ C # Jump Long on Plus
JLU          = C04     % 1111 $ C # Jump Long Unconditional
JLZ          = C04     % 1000 $ C # Jump Long on Zero
JM           = A74     % 0100 $ C # Jump on Mixed / Minus
JNE          = A74     % 0111 $ C # Jump on Not Equal
JNH          = A74     % 1101 $ C # Jump on Not High
JNHE         =-A74     % 0101 $ C # Jump on Not High or Equal
JNL          = A74     % 1011 $ C # Jump on Not Low
JNLE         =-A74     % 0011 $ C # Jump on Not Low or Equal
JNLH         =-A74     % 1001 $ C # Jump on Not Low or High
JNM          = A74     % 1011 $ C # Jump on Not Mixed / Minus
JNO          = A74     % 1110 $ C # Jump on Not Ones / Overflow
JNOP         = A74     % 0000 $ C # Jump No-OPeration
JNP          = A74     % 1101 $ C # Jump on Not Plus
JNZ          = A74     % 0111 $ C # Jump on Not Zero
JO           = A74     % 0001 $ C # Jump on Ones / Overflow
JP           = A74     % 0010 $ C # Jump on Plus
JUMP         =-A74     % 1111 $ C # JUMP
JXH          = 84      %      $   # Jump on indeX High
JXHG         = EC44    %      $   # Jump on indeX High Grande
JXLE         = 85      %      $   # Jump on indeX Low or Equal
JXLEG        = EC45    %      $   # Jump on indeX Low or Equal Grande
JZ           = A74     % 1000 $ C # Jump on Zero
KDB          = ED18    %      $ P # Kompare and signal Double Bfp
KDBR         = B318    %      $   # Kompare and signal Double Bfp
                                  + Register
KDSA         = B93A    %      $ Z # Kompute Digital Signature
                                  + Authentication
KDSA.ECS256    = B93A.09 %    $   # KDSA - ECdsa-Sign-p256
KDSA.ECS384    = B93A.0A %    $   # KDSA - ECdsa-Sign-p384
KDSA.ECS521    = B93A.0B %    $   # KDSA - ECdsa-Sign-p521
KDSA.ECV256    = B93A.01 %    $   # KDSA - ECdsa-Verify-p256
KDSA.ECV384    = B93A.02 %    $   # KDSA - ECdsa-Verify-p384
KDSA.ECV521    = B93A.03 %    $   # KDSA - ECdsa-Verify-p521
KDSA.EDSE25519 = B93A.28 %    $   # KDSA - EDdsa-Sign-Ed25519
KDSA.EDSE448   = B93A.2C %    $   # KDSA - EDdsa-Sign-Ed448
KDSA.EDVE25519 = B93A.20 %    $   # KDSA - EDdsa-Verify-Ed25519
KDSA.EDVE448   = B93A.24 %    $   # KDSA - EDdsa-Verify-Ed448
KDSA.EECS256   = B93A.11 %    $   # KDSA - Encrypted-ECdsa-Sign-p256
KDSA.EECS384   = B93A.12 %    $   # KDSA - Encrypted-ECdsa-Sign-p384
KDSA.EECS521   = B93A.13 %    $   # KDSA - Encrypted-ECdsa-Sign-p521
KDSA.EEDSE25519= B93A.30 %    $   # KDSA - Encrypted EDdsa-Sign-Ed25519
KDSA.EEDSE448  = B93A.34 %    $   # KDSA - Encrypted EDdsa-Sign-Ed448
KDSA.QAI       = B93A.7F %    $   # KDSA - Query Authentication
                                  + Information
KDSA.QUERY     = B93A.00 %    $   # KDSA - QUERY
KDTR         = B3E0    %      $   # Kompare and signal Double Tfp
                                  + Register
KEB          = ED08    %      $ P # Kompare and signal Exponential
                                  + Bfp
KEBR         = B308    %      $   # Kompare and signal Exponential
                                  + Bfp Register
KIMD         = B93E    %      $ Z # Kompute Intermediate Message
                                  + Digest
KIMD.GHASH   = B93E.41 %      $   # KIMD - GHASH
KIMD.QAI     = B93E.7F %      $   # KIMD - Query Authentication
                                  + Information
KIMD.QUERY   = B93E.00 %      $   # KIMD - QUERY
KIMD.SHAKE128= B93E.24 %      $   # KIMD - Secure Hash Algorithm
                                  + standard 3 with KEccak-128
KIMD.SHAKE256= B93E.25 %      $   # KIMD - Secure Hash Algorithm
                                  + standard 3 with KEccak-256
KIMD.SHA1    = B93E.01 %      $   # KIMD - Secure Hash Algorithm
                                  + standard-1
KIMD.SHA256  = B93E.02 %      $   # KIMD - Secure Hash Algorithm
                                  + standard-256
KIMD.SHA3224 = B93E.20 %      $   # KIMD - Secure Hash Algorithm
                                  + standard 3-224
KIMD.SHA3256 = B93E.21 %      $   # KIMD - Secure Hash Algorithm
                                  + standard 3-256
KIMD.SHA3384 = B93E.22 %      $   # KIMD - Secure Hash Algorithm
                                  + standard 3-384
KIMD.SHA3512 = B93E.23 %      $   # KIMD - Secure Hash Algorithm
                                  + standard 3-512
KIMD.SHA512  = B93E.03 %      $   # KIMD - Secure Hash Algorithm
                                  + standard-512
KLMD         = B93F    %      $ Z # Kompute Last Message Digest
KLMD.QAI     = B93F.7F %      $   # KLMD - Query Authentication
                                  + Information
KLMD.QUERY   = B93F.00 %      $   # KLMD - QUERY
KLMD.SHAKE128= B93F.24 %      $   # KLMD - Secure Hash Algorithm
                                  + standard 3 with KEccak-128
KLMD.SHAKE256= B93F.25 %      $   # KLMD - Secure Hash Algorithm
                                  + standard 3 with KEccak-256
KLMD.SHA1    = B93F.01 %      $   # KLMD - Secure Hash Algorithm
                                  + standard-1
KLMD.SHA256  = B93F.02 %      $   # KLMD - Secure Hash Algorithm
                                  + standard-256
KLMD.SHA3224 = B93F.20 %      $   # KLMD - Secure Hash Algorithm
                                  + standard 3-224
KLMD.SHA3256 = B93F.21 %      $   # KLMD - Secure Hash Algorithm
                                  + standard 3-256
KLMD.SHA3384 = B93F.22 %      $   # KLMD - Secure Hash Algorithm
                                  + standard 3-384
KLMD.SHA3512 = B93F.23 %      $   # KLMD - Secure Hash Algorithm
                                  + standard 3-512
KLMD.SHA512  = B93F.03 %      $   # KLMD - Secure Hash Algorithm
                                  + standard-512
KM           = B92E    %      $ Z # cipher (K) Message
KM.AES128    = B92E.12 %      $   # KM - Advanced Encryption Standard
                                  + 128-bit
KM.AES192    = B92E.13 %      $   # KM - Advanced Encryption Standard
                                  + 192-bit
KM.AES256    = B92E.14 %      $   # KM - Advanced Encryption Standard
                                  + 256-bit
KM.DEA       = B92E.01 %      $   # KM - Data Encryption Algorithm
KM.EAES128   = B92E.1A %      $   # KM - Encrypted Advanced Encryption
                                  + Standard 128-bit
KM.EAES192   = B92E.1B %      $   # KM - Encrypted Advanced Encryption
                                  + Standard 192-bit
KM.EAES256   = B92E.1C %      $   # KM - Encrypted Advanced Encryption
                                  + Standard 256-bit
KM.EDEA      = B92E.09 %      $   # KM - Encrypted Data Encryption
                                  + Algorithm
KM.ETDEA128  = B92E.0A %      $   # KM - Encrypted Triple Data
                                  + Encryption Algorithm 128-bit
KM.ETDEA192  = B92E.0B %      $   # KM - Encrypted Triple Data
                                  + Encryption Algorithm 192-bit
KM.FXAES128  = B92E.52 %      $   # KM - Full Xts AES 128-bit
KM.FXAES256  = B92E.54 %      $   # KM - Full Xts AES 256-bit
KM.FXEAES128 = B92E.5A %      $   # KM - Full Xts Encrypted AES 128-bit
KM.FXEAES256 = B92E.5C %      $   # KM - Full Xts Encrypted AES 256-bit
KM.QAI       = B92E.7F %      $   # KM - Query Authentication
                                  + Information
KM.QUERY     = B92E.00 %      $   # KM - QUERY
KM.TDEA128   = B92E.02 %      $   # KM - Triple Data Encryption
                                  + Algorithm 128-bit
KM.TDEA192   = B92E.03 %      $   # KM - Triple Data Encryption
                                  + Algorithm 192-bit
KM.XAES128   = B92E.32 %      $   # KM - Xts AES 128-bit
KM.XAES256   = B92E.34 %      $   # KM - Xts AES 256-bit
KM.XEAES128  = B92E.3A %      $   # KM - Xts Encrypted AES 128-bit
KM.XEAES256  = B92E.3C %      $   # KM - Xts Encrypted AES 256-bit
KMA          = B929    %      $ Z # cipher (K) Message with
                                  + Authentication
KMA.GAES128  = B929.12 %      $   # KMA - Galois counter mode
                                  + AES 128-bit
KMA.GAES192  = B929.13 %      $   # KMA - Galois counter mode
                                  + AES 192-bit
KMA.GAES256  = B929.14 %      $   # KMA - Galois counter mode
                                  + AES 256-bit
KMA.GEAES128 = B929.1A %      $   # KMA - Galois counter mode
                                  + Encrypted AES 128-bit
KMA.GEAES192 = B929.1B %      $   # KMA - Galois counter mode
                                  + Encrypted AES 192-bit
KMA.GEAES256 = B929.1C %      $   # KMA - Galois counter mode
                                  + Encrypted AES 256-bit
KMA.QAI      = B929.7F %      $   # KMA - Query Authentication
                                  + Information
KMA.QUERY    = B929.00 %      $   # KMA - QUERY
KMAC         = B91E    %      $ Z # Kompute Message Authentication
                                  + Code
KMAC.AES128  = B91E.12 %      $   # KMAC - Advanced Encryption Standard
                                  + 128-bit
KMAC.AES192  = B91E.13 %      $   # KMAC - Advanced Encryption Standard
                                  + 192-bit
KMAC.AES256  = B91E.14 %      $   # KMAC - Advanced Encryption Standard
                                  + 256-bit
KMAC.DEA     = B91E.01 %      $   # KMAC - Data Encryption Algorithm
KMAC.EAES128 = B91E.1A %      $   # KMAC - Encrypted Advanced
                                  + Encryption Standard 128-bit
KMAC.EAES192 = B91E.1B %      $   # KMAC - Encrypted Advanced
                                  + Encryption Standard 192-bit
KMAC.EAES256 = B91E.1C %      $   # KMAC - Encrypted Advanced
                                  + Encryption Standard 256-bit
KMAC.EDEA    = B91E.09 %      $   # KMAC - Encrypted Data Encryption
                                  + Algorithm
KMAC.ESHA224 = B91E.78 %      $   # KMAC - hmac Encrypted SHA 224-bit
KMAC.ESHA256 = B91E.79 %      $   # KMAC - hmac Encrypted SHA 256-bit
KMAC.ESHA384 = B91E.7A %      $   # KMAC - hmac Encrypted SHA 384-bit
KMAC.ESHA512 = B91E.7B %      $   # KMAC - hmac Encrypted SHA 512-bit
KMAC.ETDEA128= B91E.0A %      $   # KMAC - Encrypted Triple Data
                                  + Encryption Algorithm 128-bit
KMAC.ETDEA192= B91E.0B %      $   # KMAC - Encrypted Triple Data
                                  + Encryption Algorithm 192-bit
KMAC.QAI     = B91E.7F %      $   # KMAC - Query Authentication
                                  + Information
KMAC.QUERY   = B91E.00 %      $   # KMAC - QUERY
KMAC.SHA224  = B91E.70 %      $   # KMAC - hmac-SHA 224-bit
KMAC.SHA256  = B91E.71 %      $   # KMAC - hmac-SHA 256-bit
KMAC.SHA384  = B91E.72 %      $   # KMAC - hmac-SHA 384-bit
KMAC.SHA512  = B91E.73 %      $   # KMAC - hmac-SHA 512-bit
KMAC.TDEA128 = B91E.02 %      $   # KMAC - Triple Data Encryption
                                  + Algorithm 128-bit
KMAC.TDEA192 = B91E.03 %      $   # KMAC - Triple Data Encryption
                                  + Algorithm 192-bit
KMC          = B92F    %      $ Z # cipher (K) Message with Chaining
KMC.AES128   = B92F.12 %      $   # KMC - Advanced Encryption Standard
                                  + 128-bit
KMC.AES192   = B92F.13 %      $   # KMC - Advanced Encryption Standard
                                  + 192-bit
KMC.AES256   = B92F.14 %      $   # KMC - Advanced Encryption Standard
                                  + 256-bit
KMC.DEA      = B92F.01 %      $   # KMC - Data Encryption Algorithm
KMC.EAES128  = B92F.1A %      $   # KMC - Encrypted Advanced Encryption
                                  + Standard 128-bit
KMC.EAES192  = B92F.1B %      $   # KMC - Encrypted Advanced Encryption
                                  + Standard 192-bit
KMC.EAES256  = B92F.1C %      $   # KMC - Encrypted Advanced Encryption
                                  + Standard 256-bit
KMC.EDEA     = B92F.09 %      $   # KMC - Encrypted Data Encryption
                                  + Algorithm
KMC.ETDEA128 = B92F.0A %      $   # KMC - Encrypted Triple Data
                                  + Encryption Algorithm 128-bit
KMC.ETDEA192 = B92F.0B %      $   # KMC - Encrypted Triple Data
                                  + Encryption Algorithm 192-bit
KMC.PRNG     = B92F.43 %      $   # KMC - Pseudo Random Number
                                  + Generation
KMC.QAI      = B92F.7F %      $   # KMC - Query Authentication
                                  + Information
KMC.QUERY    = B92F.00 %      $   # KMC - QUERY
KMC.TDEA128  = B92F.02 %      $   # KMC - Triple Data Encryption
                                  + Algorithm 128-bit
KMC.TDEA192  = B92F.03 %      $   # KMC - Triple Data Encryption
                                  + Algorithm 192-bit
KMCTR        = B92D    %      $   # cipher (K) Message with CounTeR
KMCTR.AES128 = B92D.12 %      $   # KMCTR - Advanced Encryption
                                  + Standard 128-bit
KMCTR.AES192 = B92D.13 %      $   # KMCTR - Advanced Encryption
                                  + Standard 192-bit
KMCTR.AES256 = B92D.14 %      $   # KMCTR - Advanced Encryption
                                  + Standard 256-bit
KMCTR.DEA    = B92D.01 %      $   # KMCTR - Data Encryption Algorithm
KMCTR.EAES128= B92D.1A %      $   # KMCTR - Encrypted Advanced
                                  + Encryption Standard 128-bit
KMCTR.EAES192= B92D.1B %      $   # KMCTR - Encrypted Advanced
                                  + Encryption Standard 192-bit
KMCTR.EAES256= B92D.1C %      $   # KMCTR - Encrypted Advanced
                                  + Encryption Standard 256-bit
KMCTR.EDEA   = B92D.09 %      $   # KMCTR - Encrypted Data Encryption
                                  + Algorithm
KMCTR.ETDEA128=B92D.0A %      $   # KMCTR - Encrypted Triple Data
                                  + Encryption Algorithm 128-bit
KMCTR.ETDEA192=B92D.0B %      $   # KMCTR - Encrypted Triple Data
                                  + Encryption Algorithm 192-bit
KMCTR.QAI    = B92D.7F %      $   # KMCTR - Query Authentication
                                  + Information
KMCTR.QUERY  = B92D.00 %      $   # KMCTR - QUERY
KMCTR.TDEA128= B92D.02 %      $   # KMCTR - Triple Data Encryption
                                  + Algorithm 128-bit
KMCTR.TDEA192= B92D.03 %      $   # KMCTR - Triple Data Encryption
                                  + Algorithm 192-bit
KMF          = B92A    %      $   # cipher (K) Message with cipher
                                  + Feedback
KMF.AES128   = B92A.12 %      $   # KMF - Advanced Encryption
                                  + Standard 128-bit
KMF.AES192   = B92A.13 %      $   # KMF - Advanced Encryption
                                  + Standard 192-bit
KMF.AES256   = B92A.14 %      $   # KMF - Advanced Encryption
                                  + Standard 256-bit
KMF.DEA      = B92A.01 %      $   # KMF - Data Encryption Algorithm
KMF.EAES128  = B92A.1A %      $   # KMF - Encrypted Advanced
                                  + Encryption Standard 128-bit
KMF.EAES192  = B92A.1B %      $   # KMF - Encrypted Advanced
                                  + Encryption Standard 192-bit
KMF.EAES256  = B92A.1C %      $   # KMF - Encrypted Advanced
                                  + Encryption Standard 256-bit
KMF.EDEA     = B92A.09 %      $   # KMF - Encrypted Data Encryption
                                  + Algorithm
KMF.ETDEA128 = B92A.0A %      $   # KMF - Encrypted Triple Data
                                  + Encryption Algorithm 128-bit
KMF.ETDEA192 = B92A.0B %      $   # KMF - Encrypted Triple Data
                                  + Encryption Algorithm 192-bit
KMF.QAI      = B92A.7F %      $   # KMF - Query Authentication
                                  + Information
KMF.QUERY    = B92A.00 %      $   # KMF - QUERY
KMF.TDEA128  = B92A.02 %      $   # KMF - Triple Data Encryption
                                  + Algorithm 128-bit
KMF.TDEA192  = B92A.03 %      $   # KMF - Triple Data Encryption
                                  + Algorithm 192-bit
KMO          = B92B    %      $   # cipher (K) Message with Output
                                  + feedback
KMO.AES128   = B92B.12 %      $   # KMO - Advanced Encryption
                                  + Standard 128-bit
KMO.AES192   = B92B.13 %      $   # KMO - Advanced Encryption
                                  + Standard 192-bit
KMO.AES256   = B92B.14 %      $   # KMO - Advanced Encryption
                                  + Standard 256-bit
KMO.DEA      = B92B.01 %      $   # KMO - Data Encryption Algorithm
KMO.EAES128  = B92B.1A %      $   # KMO - Encrypted Advanced
                                  + Encryption Standard 128-bit
KMO.EAES192  = B92B.1B %      $   # KMO - Encrypted Advanced
                                  + Encryption Standard 192-bit
KMO.EAES256  = B92B.1C %      $   # KMO - Encrypted Advanced
                                  + Encryption Standard 256-bit
KMO.EDEA     = B92B.09 %      $   # KMO - Encrypted Data Encryption
                                  + Algorithm
KMO.ETDEA128 = B92B.0A %      $   # KMO - Encrypted Triple Data
                                  + Encryption Algorithm 128-bit
KMO.ETDEA192 = B92B.0B %      $   # KMO - Encrypted Triple Data
                                  + Encryption Algorithm 192-bit
KMO.QAI      = B92B.7F %      $   # KMO - Query Authentication
                                  + Information
KMO.QUERY    = B92B.00 %      $   # KMO - QUERY
KMO.TDEA128  = B92B.02 %      $   # KMO - Triple Data Encryption
                                  + Algorithm 128-bit
KMO.TDEA192  = B92B.03 %      $   # KMO - Triple Data Encryption
                                  + Algorithm 192-bit
KXBR         = B348    %      $   # Kompare and signal eXtended Bfp
                                  + Register
KXTR         = B3E8    %      $   # Kompare and signal eXtended Tfp
                                  + Register
L            = 58      %      $   # Load
LA           = 41      %      $   # Load Address
LAA          = EBF8    %      $   # Load And Add
LAAG         = EBE8    %      $   # Load And Add Grande
LAAL         = EBFA    %      $   # Load And Add Logical
LAALG        = EBEA    %      $   # Load And Add Logical Grande
LAE          = 51      %      $   # Load Address Extended
LAEY         = E375    %      $ P # Load Address Extended Yonder
LAM          = 9A      %      $   # Load Access Multiple
LAMY         = EB9A    %      $ P # Load Access Multiple Yonder
LAN          = EBF4    %      $   # Load And aNd
LANG         = EBE4    %      $   # Load And aNd Grande
LAO          = EBF6    %      $   # Load And Or
LAOG         = EBE6    %      $   # Load And Or Grande
LARL         = C00     %      $ A # Load Address Relative Long
LASP         = E500    %      $   # Load Address Space Parameters
LAT          = E39F    %      $ P # Load And Trap
LAX          = EBF7    %      $   # Load And eXclusive or
LAXG         = EBE7    %      $   # Load And eXclusive or Grande
LAY          = E371    %      $ P # Load Address Yonder
LB           = E376    %      $ P # Load Byte
LBEAR        = B200    %      $   # Load Breaking-Event-Address
                                  + Register
LBH          = E3C0    %      $   # Load Byte High
LBR          = B926    %      $   # Load Byte from Register
LCBB         = E727    %      $ P # Load Count to Block Boundary
LCCTL        = B284    %      $ X # Load Cpu-counter-set ConTroLs
LCDBR        = B313    %      $   # Load Complement Double Bfp Register
LCDFR        = B373    %      $   # Load Complement Double Floating
                                  + point Register
LCDR         = 23      %      $   # Load Complement Double hfp Register
LCEBR        = B303    %      $   # Load Complement Exponential Bfp
                                  + Register
LCER         = 33      %      $   # Load Complement Exponential hfp
                                  + Register
LCGFR        = B913    %      $   # Load Complement Grande from
                                  + Fullword Register
LCGR         = B903    %      $   # Load Complement Grande Register
LCLA         = &&      %      $   # LoCaL Arithmetic variable
LCLB         = &&      %      $   # LoCaL Boolean variable
LCLC         = &&      %      $   # LoCaL Character variable
LCR          = 13      %      $   # Load Complement Register
LCTL         = B7      %      $   # Load ConTroL
LCTLG        = EB2F    %      $ P # Load ConTroL Grande
LCXBR        = B343    %      $   # Load Complement eXtended Bfp
                                  + Register
LCXR         = B363    %      $   # Load Complement eXtended hfp
                                  + Register
LD           = 68      %      $   # Load Double hfp
LDE          = ED24    %      $ P # Load lengthened Double hfp from
                                  + Exponential hfp
LDEB         = ED04    %      $ P # Load lengthened Double bfp from
                                  + Exponential Bfp
LDEBR        = B304    %      $   # Load lengthened Double bfp from
                                  + Exponential Bfp Register
LDER         = B324    %      $   # Load lengthened Double hfp from
                                  + Exponential hfp Register
LDETR        = B3D4    %      $   # Load lengthened Double tfp from
                                  + Exponential Tfp Register
LDGR         = B3C1    %      $   # Load Double floating point from
                                  + Grande Register
LDR          = 28      %      $   # Load Double hfp Register
LDRV         = E604    % 0011 $ P # Load Double ReVersed
LDXBR        = B345    %      $   # Load rounded Double bfp from
                                  + eXtended Bfp Register
LDXBRA       = B345    %      $   # Load rounded Double bfp from
                                  + eXtended Bfp Register Alternative
LDXR         = 25      %      $   # Load rounded Double hfp from
                                  + eXtended hfp Register
LDXTR        = B3DD    %      $   # Load rounded Double tfp from
                                  + eXtended Tfp Register
LDY          = ED65    %      $ P # Load Double hfp from Yonder
LE           = 78      %      $   # Load Exponential hfp
LEDBR        = B344    %      $   # Load rounded Exponential bfp from
                                  + Double Bfp Register
LEDBRA       = B344    %      $   # Load rounded Exponential bfp from
                                  + Double Bfp Register Alternative
LEDR         = 35      %      $   # Load rounded Exponential hfp from
                                  + Double hfp Register
LEDTR        = B3D5    %      $   # Load rounded Exponential tfp from
                                  + Double Tfp Register
LER          = 38      %      $   # Load Exponential hfp Register
LERN         =-B2C8    %      $   # Load Exponential hfp with RouNding
LERV         = E604    % 0110 $ P # Load lEftmost word ReVersed
LEXBR        = B346    %      $   # Load rounded Exponential bfp from
                                  + eXtended Bfp Register
LEXBRA       = B346    %      $   # Load rounded Exponential bfp from
                                  + eXtended Bfp Register Alternative
LEXR         = B366    %      $   # Load rounded Exponential hfp from
                                  + eXtended hfp Register
LEY          = ED64    %      $ P # Load Exponential hfp from Yonder
LFAS         = B2BD    %      $   # Load Floating point control And
                                  + Signal
LFH          = E3CA    %      $   # Load Fullword High
LFHAT        = E3C8    %      $ P # Load Fullword High And Trap
LFI          =-B8      %      $   # Load Frame Index
LFI          = C09     %      $ A # Load Fullword Immediate
LFLG         =-B29E    %      $ T # Load FLaGs
LFPC         = B29D    %      $   # Load Floating Point Control
                                  + register
LG           = E304    %      $ P # Load Grande
LGAT         = E385    %      $ P # Load Grande And Trap
LGB          = E377    %      $ P # Load Grande from Byte
LGBR         = B906    %      $   # Load Grande from Byte in Register
LGCD         =-B284    %      $   # LoGarithm (Common) of Double hfp
LGCE         =-B285    %      $   # LoGarithm (Common) of Exponential
                                  + hfp
LGDR         = B3CD    %      $   # Load Grande from Double floating
                                  + point Register
LGF          = E314    %      $ P # Load Grande from Fullword
LGFI         = C01     %      $ A # Load Grande from Fullword Immediate
LGFR         = B914    %      $   # Load Grande from Fullword Register
LGFRL        = C4C     %      $ A # Load Grande from Fullword Relative
                                  + Long
LGG          = E34C    %      $ P # Load Guarded Grande
LGH          = E315    %      $ P # Load Grande from Halfword
LGHI         = A79     %      $ A # Load Grande from Halfword Immediate
LGHR         = B907    %      $   # Load Grande from Halfword in
                                  + Register
LGHRL        = C44     %      $ A # Load Grande from Halfword Relative
                                  + Long
LGND         =-B280    %      $   # LoGarithm (Natural) of Double hfp
LGNE         =-B281    %      $   # LoGarithm (Natural) of Exponential
                                  + hfp
LGOC         =-EBE2    %      $   # Load Grande On Condition
LGOCE        =-EBE2    % 1000 $   # Load Grande On Condition Equal
LGOCH        =-EBE2    % 0010 $   # Load Grande On Condition High
LGOCL        =-EBE2    % 0100 $   # Load Grande On Condition Low
LGOCNE       =-EBE2    % 0110 $   # Load Grande On Condition Not Equal
LGOCNH       =-EBE2    % 1100 $   # Load Grande On Condition Not High
LGOCNL       =-EBE2    % 1010 $   # Load Grande On Condition Not Low
LGR          = B904    %      $   # Load Grande Register
LGRL         = C48     %      $ A # Load Grande Relative Long
LGROC        =-B9E2    %      $   # Load Grande Register On Condition
LGROCE       =-B9E2    % 1000 $   # Load Grande Register On Condition
                                  + Equal
LGROCH       =-B9E2    % 0010 $   # Load Grande Register On Condition
                                  + High
LGROCL       =-B9E2    % 0100 $   # Load Grande Register On Condition
                                  + Low
LGROCNE      =-B9E2    % 0110 $   # Load Grande Register On Condition
                                  + Not Equal
LGROCNH      =-B9E2    % 1100 $   # Load Grande Register On Condition
                                  + Not High
LGROCNL      =-B9E2    % 1010 $   # Load Grande Register On Condition
                                  + Not Low
LGSC         = E34D    %      $ P # Load Guarded Storage Controls
LH           = 48      %      $   # Load Halfword
LHH          = E3C4    %      $   # Load Halfword High
LHHR         = EC5D    % [00.9F.00] $   # Load High from High Register
LHI          = A78     %            $ A # Load Halfword Immediate
LHLR         = EC5D    % [00.9F.20] $   # Load High from Low Register
LHR          = B927    %      $   # Load Halfword Register
LHRL         = C45     %      $ A # Load Halfword Relative Long
LHY          = E378    %      $ P # Load Halfword Yonder
LKPG         =-B262    %      $ G # LocK PaGe
LLC          = E394    %      $ P # Load Logical Character
LLCH         = E3C2    %      $   # Load Logical Character High
LLCHHR       = EC5D    % [18.9F.00] $   # Load Logical Character High
                                        + from High Register
LLCHLR       = EC5D    % [18.9F.20] $   # Load Logical Character High
                                        + from Low Register
LLCLHR       = EC51    % [18.9F.20] $   # Load Logical Character Low
                                        + from High Register
LLCR         = B994    %      $   # Load Logical from Character in
                                  + Register
LLGC         = E390    %      $ P # Load Logical Grande from Character
LLGCR        = B984    %      $   # Load Logical Grande from Character
                                  + in Register
LLGF         = E316    %      $ P # Load Logical Grande from Fullword
LLGFAT       = E39D    %      $ P # Load Logical Grande from Fullword
                                  + And Trap
LLGFI        = C0F     %      $ A # Load Logical Grande from Fullword
                                  + Immediate
LLGFR        = B916    %      $   # Load Logical Grande from Fullword
                                  + Register
LLGFRL       = C4E     %      $ A # Load Logical Grande from Fullword
                                  + Relative Long
LLGFSG       = E348    %      $ P # Load Logical Guarded Fullword
                                  + Shifted to Grande
LLGH         = E391    %      $ P # Load Logical Grande from Halfword
LLGHI        = A5F     %      $ A # Load Logical Grande from Halfword
                                  + Immediate
LLGHR        = B985    %      $   # Load Logical Grande from Halfword
                                  + in Register
LLGHRL       = C46     %      $ A # Load Logical Grande from Halfword
                                  + Relative Long
LLGT         = E317    %      $ P # Load Logical Grande from Thirty-one
                                  + bits
LLGTAT       = E39C    %      $ P # Load Logical Grande from Thirty-one
                                  + bits And Trap
LLGTR        = B917    %      $   # Load Logical Grande from Thirty-one
                                  + bits Register
LLH          = E395    %      $ P # Load Logical from Halfword
LLHFR        = EC51    % [00.9F.20] $   # Load Low from High Fullword
                                        + Register
LLHH         = E3C6    %            $   # Load Logical Halfword High
LLHHHR       = EC5D    % [10.9F.00] $   # Load Logical Halfword High
                                        + from High Register
LLHHLR       = EC5D    % [10.9F.20] $   # Load Logical Halfword High
                                        + from Low Register
LLHLHR       = EC51    % [10.9F.20] $   # Load Logical Halfword Low
                                        + from High Register
LLHR         = B995    %      $   # Load Logical from Halfword in
                                  + Register
LLHRL        = C42     %      $ A # Load Logical Halfword Relative Long
LLIHF        = C0E     %      $ A # Load Logical Immediate High-order
                                  + word from Fullword
LLIHH        = A5C     %      $ A # Load Logical Immediate High-order
                                  + word, Higher halfword
LLIHL        = A5D     %      $ A # Load Logical Immediate High-order
                                  + word, Lower halfword
LLILF        = C0F     %      $ A # Load Logical Immediate Low-order
                                  + word from Fullword
LLILH        = A5E     %      $ A # Load Logical Immediate Low-order
                                  + word, Higher halfword
LLILL        = A5F     %      $ A # Load Logical Immediate Low-order
                                  + word, Lower halfword
LLXAB        = E361    %      $ P # Load Logical indeXed Address Byte
LLXAF        = E365    %      $ P # Load Logical indeXed Address
                                  + Fullword
LLXAG        = E367    %      $ P # Load Logical indeXed Address Grande
LLXAH        = E363    %      $ P # Load Logical indeXed Address
                                  + Halfword
LLXAQ        = E369    %      $ P # Load Logical indeXed Address
                                  + Quadword
LLZRGF       = E33A    %      $ P # Load Logical and Zero Rightmost
                                  + byte, Grande from Fullword
LM           = 98      %      $   # Load Multiple
LMC          =-B8      %      $   # Load Multiple Control
LMD          = EF      %      $   # Load Multiple Disjoint
LMG          = EB04    %      $ P # Load Multiple Grande
LMH          = EB96    %      $ P # Load Multiple High
LMP          =-A0      %      $ R # Load MicroProgram
LMY          = EB98    %      $ P # Load Multiple Yonder
LNDBR        = B311    %      $   # Load Negative Double Bfp Register
LNDFR        = B371    %      $   # Load Negative Double Floating point
                                  + Register
LNDR         = 21      %      $   # Load Negative Double hfp Register
LNEBR        = B301    %      $   # Load Negative Exponential Bfp
                                  + Register
LNER         = 31      %      $   # Load Negative Exponential hfp
                                  + Register
LNGFR        = B911    %      $   # Load Negative Grande from Fullword
                                  + Register
LNGR         = B901    %      $   # Load Negative Grande Register
LNR          = 11      %      $   # Load Negative Register
LNXBR        = B341    %      $   # Load Negative eXtended Bfp Register
LNXR         = B361    %      $   # Load Negative eXtended hfp Register
LOC          = EBF2    %      $ P # Load On Condition
LOCE         = EBF2    % 1000 $ U # Load On Condition Equal
LOCFH        = EBE0    %      $ P # Load On Condition Fullword High
LOCFHE       = EBE0    % 1000 $ U # Load On Condition Fullword High if
                                  + Equal
LOCFHH       = EBE0    % 0010 $ U # Load On Condition Fullword High if
                                  + High
LOCFHL       = EBE0    % 0100 $ U # Load On Condition Fullword High if
                                  + Low
LOCFHM       = EBE0    % 0100 $ U # Load On Condition Fullword High if
                                  + Mixed / Minus
LOCFHNE      = EBE0    % 0111 $ U # Load On Condition Fullword High if
                                  + Not Equal
LOCFHNH      = EBE0    % 1101 $ U # Load On Condition Fullword High if
                                  + Not High
LOCFHNL      = EBE0    % 1011 $ U # Load On Condition Fullword High if
                                  + Not Low
LOCFHNM      = EBE0    % 1011 $ U # Load On Condition Fullword High if
                                  + Not Mixed / Minus
LOCFHNO      = EBE0    % 1110 $ U # Load On Condition Fullword High if
                                  + Not Ones / Overflow
LOCFHNP      = EBE0    % 1101 $ U # Load On Condition Fullword High if
                                  + Not Plus
LOCFHNZ      = EBE0    % 0111 $ U # Load On Condition Fullword High if
                                  + Not Zero
LOCFHO       = EBE0    % 0001 $ U # Load On Condition Fullword High if
                                  + Ones / Overflow
LOCFHP       = EBE0    % 0010 $ U # Load On Condition Fullword High if
                                  + Plus
LOCFHR       = B9E0    %      $   # Load On Condition Fullword High
                                  + Register
LOCFHRE      = B9E0    % 1000 $ W # Load On Condition Fullword High
                                  + Register if Equal
LOCFHRH      = B9E0    % 0010 $ W # Load On Condition Fullword High
                                  + Register if High
LOCFHRL      = B9E0    % 0100 $ W # Load On Condition Fullword High
                                  + Register if Low
LOCFHRM      = B9E0    % 0100 $ W # Load On Condition Fullword High
                                  + Register if Mixed / Minus
LOCFHRNE     = B9E0    % 0111 $ W # Load On Condition Fullword High
                                  + Register if Not Equal
LOCFHRNH     = B9E0    % 1101 $ W # Load On Condition Fullword High
                                  + Register if Not High
LOCFHRNL     = B9E0    % 1011 $ W # Load On Condition Fullword High
                                  + Register if Not Low
LOCFHRNM     = B9E0    % 1011 $ W # Load On Condition Fullword High
                                  + Register if Not Mixed / Minus
LOCFHRNO     = B9E0    % 1110 $ W # Load On Condition Fullword High
                                  + Register if Not Ones / Overflow
LOCFHRNP     = B9E0    % 1101 $ W # Load On Condition Fullword High
                                  + Register if Not Plus
LOCFHRNZ     = B9E0    % 0111 $ W # Load On Condition Fullword High
                                  + Register if Not Zero
LOCFHRO      = B9E0    % 0001 $ W # Load On Condition Fullword High
                                  + Register if Ones / Overflow
LOCFHRP      = B9E0    % 0010 $ W # Load On Condition Fullword High
                                  + Register if Plus
LOCFHRZ      = B9E0    % 1000 $ W # Load On Condition Fullword High
                                  + Register if Zero
LOCFHZ       = EBE0    % 1000 $ U # Load On Condition Fullword High if
                                  + Zero
LOCG         = EBE2    %      $ P # Load On Condition Grande
LOCGE        = EBE2    % 1000 $ U # Load On Condition Grande if Equal
LOCGH        = EBE2    % 0010 $ U # Load On Condition Grande if High
LOCGHI       = EC46    %      $ P # Load On Condition Grande from
                                  + Halfword Immediate
LOCGHIE      = EC46    % 1000 $ U # Load On Condition Grande from
                                  + Halfword Immediate if Equal
LOCGHIH      = EC46    % 0010 $ U # Load On Condition Grande from
                                  + Halfword Immediate if High
LOCGHIL      = EC46    % 0100 $ U # Load On Condition Grande from
                                  + Halfword Immediate if Low
LOCGHIM      = EC46    % 0100 $ U # Load On Condition Grande from
                                  + Halfword Immediate if Mixed / Minus
LOCGHINE     = EC46    % 0111 $ U # Load On Condition Grande from
                                  + Halfword Immediate if Not Equal
LOCGHINH     = EC46    % 1101 $ U # Load On Condition Grande from
                                  + Halfword Immediate if Not High
LOCGHINL     = EC46    % 1011 $ U # Load On Condition Grande from
                                  + Halfword Immediate if Not Low
LOCGHINM     = EC46    % 1011 $ U # Load On Condition Grande from
                                  + Halfword Immediate if Not Mixed /
                                  + Minus
LOCGHINO     = EC46    % 1110 $ U # Load On Condition Grande from
                                  + Halfword Immediate if Not Ones /
                                  + Overflow
LOCGHINP     = EC46    % 1101 $ U # Load On Condition Grande from
                                  + Halfword Immediate if Not Plus
LOCGHINZ     = EC46    % 0111 $ U # Load On Condition Grande from
                                  + Halfword Immediate if Not Zero
LOCGHIO      = EC46    % 0001 $ U # Load On Condition Grande from
                                  + Halfword Immediate if Ones /
                                  + Overflow
LOCGHIP      = EC46    % 0010 $ U # Load On Condition Grande from
                                  + Halfword Immediate if Plus
LOCGHIZ      = EC46    % 1000 $ U # Load On Condition Grande from
                                  + Halfword Immediate if Zero
LOCGL        = EBE2    % 0100 $ U # Load On Condition Grande if Low
LOCGM        = EBE2    % 0100 $ U # Load On Condition Grande if Mixed /
                                  + Minus
LOCGNE       = EBE2    % 0111 $ U # Load On Condition Grande if Not
                                  + Equal
LOCGNH       = EBE2    % 1101 $ U # Load On Condition Grande if Not
                                  + High
LOCGNL       = EBE2    % 1011 $ U # Load On Condition Grande if Not Low
LOCGNM       = EBE2    % 1011 $ U # Load On Condition Grande if Not
                                  + Mixed / Minus
LOCGNO       = EBE2    % 1110 $ U # Load On Condition Grande if Not
                                  + Ones / Overflow
LOCGNP       = EBE2    % 1101 $ U # Load On Condition Grande if Not
                                  + Plus
LOCGNZ       = EBE2    % 0111 $ U # Load On Condition Grande if Not
                                  + Zero
LOCGO        = EBE2    % 0001 $ U # Load On Condition Grande if Ones /
                                  + Overflow
LOCGP        = EBE2    % 0010 $ U # Load On Condition Grande if Plus
LOCGR        = B9E2    %      $   # Load On Condition Grande Register
LOCGRE       = B9E2    % 1000 $ W # Load On Condition Grande Register
                                  + if Equal
LOCGRH       = B9E2    % 0010 $ W # Load On Condition Grande Register
                                  + if High
LOCGRL       = B9E2    % 0100 $ W # Load On Condition Grande Register
                                  + if Low
LOCGRM       = B9E2    % 0100 $ W # Load On Condition Grande Register
                                  + if Mixed / Minus
LOCGRNE      = B9E2    % 0111 $ W # Load On Condition Grande Register
                                  + if Not Equal
LOCGRNH      = B9E2    % 1101 $ W # Load On Condition Grande Register
                                  + if Not High
LOCGRNL      = B9E2    % 1011 $ W # Load On Condition Grande Register
                                  + if Not Low
LOCGRNM      = B9E2    % 1011 $ W # Load On Condition Grande Register
                                  + if Not Mixed / Minus
LOCGRNO      = B9E2    % 1110 $ W # Load On Condition Grande Register
                                  + if Not Ones / Overflow
LOCGRNP      = B9E2    % 1101 $ W # Load On Condition Grande Register
                                  + if Not Plus
LOCGRNZ      = B9E2    % 0111 $ W # Load On Condition Grande Register
                                  + if Not Zero
LOCGRO       = B9E2    % 0001 $ W # Load On Condition Grande Register
                                  + if Ones / Overflow
LOCGRP       = B9E2    % 0010 $ W # Load On Condition Grande Register
                                  + if Plus
LOCGRZ       = B9E2    % 1000 $ W # Load On Condition Grande Register
                                  + if Zero
LOCGZ        = EBE2    % 1000 $ U # Load On Condition Grande if Zero
LOCH         = EBF2    % 0010 $ U # Load On Condition High
LOCHHI       = EC4E    %      $ P # Load On Condition fullword High
                                  + from Halfword Immediate
LOCHHIE      = EC4E    % 1000 $ U # Load On Condition fullword High
                                  + from Halfword Immediate if Equal
LOCHHIH      = EC4E    % 0010 $ U # Load On Condition fullword High
                                  + from Halfword Immediate if High
LOCHHIL      = EC4E    % 0100 $ U # Load On Condition fullword High
                                  + from Halfword Immediate if Low
LOCHHIM      = EC4E    % 0100 $ U # Load On Condition fullword High
                                  + from Halfword Immediate if Mixed /
                                  + Minus
LOCHHINE     = EC4E    % 0111 $ U # Load On Condition fullword High
                                  + from Halfword Immediate if Not
                                  + Equal
LOCHHINH     = EC4E    % 1101 $ U # Load On Condition fullword High
                                  + from Halfword Immediate if Not High
LOCHHINL     = EC4E    % 1011 $ U # Load On Condition fullword High
                                  + from Halfword Immediate if Not Low
LOCHHINM     = EC4E    % 1011 $ U # Load On Condition fullword High
                                  + from Halfword Immediate if Not
                                  + Mixed / Minus
LOCHHINO     = EC4E    % 1110 $ U # Load On Condition fullword High
                                  + from Halfword Immediate if Not Ones
                                  + / Overflow
LOCHHINP     = EC4E    % 1101 $ U # Load On Condition fullword High
                                  + from Halfword Immediate if Not Plus
LOCHHINZ     = EC4E    % 0111 $ U # Load On Condition fullword High
                                  + from Halfword Immediate if Not Zero
LOCHHIO      = EC4E    % 0001 $ U # Load On Condition fullword High
                                  + from Halfword Immediate if Ones /
                                  + Overflow
LOCHHIP      = EC4E    % 0010 $ U # Load On Condition fullword High
                                  + from Halfword Immediate if Plus
LOCHHIZ      = EC4E    % 1000 $ U # Load On Condition fullword High
                                  + from Halfword Immediate if Zero
LOCHI        = EC42    %      $ P # Load On Condition from Halfword
                                  + Immediate
LOCHIE       = EC42    % 1000 $ U # Load On Condition from Halfword
                                  + Immediate if Equal
LOCHIH       = EC42    % 0010 $ U # Load On Condition from Halfword
                                  + Immediate if High
LOCHIL       = EC42    % 0100 $ U # Load On Condition from Halfword
                                  + Immediate if Low
LOCHIM       = EC42    % 0100 $ U # Load On Condition from Halfword
                                  + Immediate if Mixed / Minus
LOCHINE      = EC42    % 0111 $ U # Load On Condition from Halfword
                                  + Immediate if Not Equal
LOCHINH      = EC42    % 1101 $ U # Load On Condition from Halfword
                                  + Immediate if Not High
LOCHINL      = EC42    % 1011 $ U # Load On Condition from Halfword
                                  + Immediate if Not Low
LOCHINM      = EC42    % 1011 $ U # Load On Condition from Halfword
                                  + Immediate if Not Mixed / Minus
LOCHINO      = EC42    % 1110 $ U # Load On Condition from Halfword
                                  + Immediate if Not Ones / Overflow
LOCHINP      = EC42    % 1101 $ U # Load On Condition from Halfword
                                  + Immediate if Not Plus
LOCHINZ      = EC42    % 0111 $ U # Load On Condition from Halfword
                                  + Immediate if Not Zero
LOCHIO       = EC42    % 0001 $ U # Load On Condition from Halfword
                                  + Immediate if Ones / Overflow
LOCHIP       = EC42    % 0010 $ U # Load On Condition from Halfword
                                  + Immediate if Plus
LOCHIZ       = EC42    % 1000 $ U # Load On Condition from Halfword
                                  + Immediate if Zero
LOCL         = EBF2    % 0100 $ U # Load On Condition Low
LOCM         = EBF2    % 0100 $ U # Load On Condition Minus / Mixed
LOCNE        = EBF2    % 0111 $ U # Load On Condition Not Equal
LOCNH        = EBF2    % 1101 $ U # Load On Condition Not High
LOCNL        = EBF2    % 1011 $ U # Load On Condition Not Low
LOCNM        = EBF2    % 1011 $ U # Load On Condition Not Minus /
                                  + Mixed
LOCNO        = EBF2    % 1110 $ U # Load On Condition Not Ones /
                                  + Overflow
LOCNP        = EBF2    % 1101 $ U # Load On Condition Not Plus
LOCNZ        = EBF2    % 0111 $ U # Load On Condition Not Zero
LOCO         = EBF2    % 0001 $ U # Load On Condition Ones / Overflow
LOCP         = EBF2    % 0010 $ U # Load On Condition Plus
LOCR         = B9F2    %      $   # Load On Condition Register
LOCRE        = B9F2    % 1000 $ W # Load On Condition Register if Equal
LOCRH        = B9F2    % 0010 $ W # Load On Condition Register if High
LOCRL        = B9F2    % 0100 $ W # Load On Condition Register if Low
LOCRM        = B9F2    % 0100 $ W # Load On Condition Register if Mixed
                                  + / Minus
LOCRNE       = B9F2    % 0111 $ W # Load On Condition Register if Not
                                  + Equal
LOCRNH       = B9F2    % 1101 $ W # Load On Condition Register if Not
                                  + High
LOCRNL       = B9F2    % 1011 $ W # Load On Condition Register if Not
                                  + Low
LOCRNM       = B9F2    % 1011 $ W # Load On Condition Register if Not
                                  + Mixed / Minus
LOCRNO       = B9F2    % 1110 $ W # Load On Condition Register if Not
                                  + Ones / Overflow
LOCRNP       = B9F2    % 1101 $ W # Load On Condition Register if Not
                                  + Plus
LOCRNZ       = B9F2    % 0111 $ W # Load On Condition Register if Not
                                  + Zero
LOCRO        = B9F2    % 0001 $ W # Load On Condition Register if Ones
                                  + / Overflow
LOCRP        = B9F2    % 0010 $ W # Load On Condition Register if Plus
LOCRZ        = B9F2    % 1000 $ W # Load On Condition Register if Zero
LOCTR        = --      %      $   # LOCaToR
LOCZ         = EBF2    % 1000 $ U # Load On Condition Zero
LPCTL        = B285    %      $ X # Load Peripheral-counter-set
                                  + ConTroLs
LPD          = C84     %      $   # Load Pair Disjoint
LPDBR        = B310    %      $   # Load Positive Double Bfp Register
LPDFR        = B370    %      $   # Load Positive Double Floating point
                                  + Register
LPDG         = C85     %      $   # Load Pair Disjoint Grande
LPDR         = 20      %      $   # Load Positive Double hfp Register
LPEBR        = B300    %      $   # Load Positive Exponential Bfp
                                  + Register
LPER         = 30      %      $   # Load Positive Exponential hfp
                                  + Register
LPGFR        = B910    %      $   # Load Positive Grande from Fullword
                                  + Register
LPGR         = B900    %      $   # Load Positive Grande Register
LPP          = B280    %      $ X # Load Program Parameter
LPQ          = E38F    %      $ P # Load Pair from Quadword
LPR          = 10      %      $   # Load Positive Register
LPSW         = 82      %      $ D # Load Program Status Word
LPSWE        = B2B2    %      $   # Load Program Status Word Extended
LPSWEY       = EB71    %      $ P # Load Program Status Word Extended
                                  + Yonder
LPTEA        = B9AA    %      $   # Load Page Table Entry Address
LPXBR        = B340    %      $   # Load Positive eXtended Bfp Register
LPXR         = B360    %      $   # Load Positive eXtended hfp Register
LR           = 18      %      $   # Load Register
LRA          = B1      %      $   # Load Real Address
LRAG         = E303    %      $ P # Load Real Address Grande
LRAY         = E313    %      $ P # Load Real Address Yonder
LRDR         = 25      %      $   # Load Rounded Double hfp Register
LRER         = 35      %      $   # Load Rounded Exponential hfp
                                  + Register
LRL          = C4D     %      $ A # Load Relative Long
LROC         =-B9F2    %      $   # Load Register On Condition
LROCE        =-B9F2    % 1000 $   # Load Register On Condition Equal
LROCH        =-B9F2    % 0010 $   # Load Register On Condition High
LROCL        =-B9F2    % 0100 $   # Load Register On Condition Low
LROCNE       =-B9F2    % 0110 $   # Load Register On Condition
                                  + Not Equal
LROCNH       =-B9F2    % 1100 $   # Load Register On Condition Not High
LROCNL       =-B9F2    % 1010 $   # Load Register On Condition Not Low
LRV          = E31E    %      $ P # Load ReVersed
LRVG         = E30F    %      $ P # Load ReVersed Grande
LRVGR        = B90F    %      $   # Load ReVersed Grande Register
LRVH         = E31F    %      $ P # Load ReVersed Halfword
LRVR         = B91F    %      $   # Load ReVersed Register
LSCTL        = B287    %      $ X # Load Sampling ConTroLs
LT           = E312    %      $ P # Load and Test
LTA          = A25     %      $ T # Load and Test Access
LTDBR        = B312    %      $   # Load and Test Double Bfp Register
LTDR         = 22      %      $   # Load and Test Double hfp Register
LTDTR        = B3D6    %      $   # Load and Test Double Tfp Register
LTEBR        = B302    %      $   # Load and Test Exponential Bfp
                                  + Register
LTER         = 32      %      $   # Load and Test Exponential hfp
                                  + Register
LTG          = E302    %      $ P # Load and Test Grande
LTGF         = E332    %      $ P # Load and Test Grande from Fullword
LTGFR        = B912    %      $   # Load and Test Grande from Fullword
                                  + Register
LTGR         = B902    %      $   # Load and Test Grande Register
LTORG        = --      %      $   # LiTeral pool ORiGin
LTR          = 12      %      $   # Load and Test Register
LTXBR        = B342    %      $   # Load and Test eXtended Bfp Register
LTXR         = B362    %      $   # Load and Test eXtended hfp Register
LTXTR        = B3DE    %      $   # Load and Test eXtended Tfp Register
LURA         = B24B    %      $   # Load Using Real Address
LURAG        = B905    %      $   # Load Using Real Address Grande
LXAB         = E360    %      $ P # Load indeXed Address Byte
LXAF         = E364    %      $ P # Load indeXed Address Fullword
LXAG         = E366    %      $ P # Load indeXed Address Grande
LXAH         = E362    %      $ P # Load indeXed Address Halfword
LXAQ         = E368    %      $ P # Load indeXed Address Quadword
LXD          = ED25    %      $ P # Load lengthened eXtended hfp from
                                  + Double hfp
LXDB         = ED05    %      $ P # Load lengthened eXtended bfp from
                                  + Double Bfp
LXDBR        = B305    %      $   # Load lengthened eXtended bfp from
                                  + Double Bfp Register
LXDR         = B325    %      $   # Load lengthened eXtended hfp from
                                  + Double hfp Register
LXDTR        = B3DC    %      $   # Load lengthened eXtended tfp from
                                  + Double Tfp Register
LXE          = ED26    %      $ P # Load lengthened eXtended hfp from
                                  + Exponential hfp
LXEB         = ED06    %      $ P # Load lengthened eXtended bfp from
                                  + Exponential Bfp
LXEBR        = B306    %      $   # Load lengthened eXtended bfp from
                                  + Exponential Bfp Register
LXER         = B326    %      $   # Load lengthened eXtended hfp from
                                  + Exponential hfp Register
LXR          = B365    %      $   # Load eXtended hfp Register
LY           = E358    %      $ P # Load Yonder
LZDR         = B375    %      $   # Load Zero into Double hfp/bfp
                                  + Register
LZER         = B374    %      $   # Load Zero into Exponential hfp/bfp
                                  + Register
LZRF         = E33B    %      $ P # Load and Zero Rightmost byte
                                  + Fullword
LZRG         = E32A    %      $ P # Load and Zero Rightmost byte Grande
LZXR         = B376    %      $   # Load Zero into eXtended hfp/bfp
                                  + Register
M            = 5C      %      $   # Multiply
MACD         =-B2D4    %      $   # Multiply and ACcumulate Double hfp
MACE         =-B2D5    %      $   # Multiply and ACcumulate Exponential
                                  + hfp
MACRO        = &&      %      $   # MACRO start
MAD          = ED3E    %      $ P # Multiply and Add Double hfp
MAD          =-B21D    %      $   # Make ADdressable
MADB         = ED1E    %      $ P # Multiply and Add Double Bfp
MADBR        = B31E    %      $   # Multiply and Add Double Bfp
                                  + Register
MADR         = B33E    %      $   # Multiply and Add Double hfp
                                  + Register
MADS         =-B243    %      $   # Multiply and Add Double hfp with
                                  + Scalar
MAE          = ED2E    %      $ P # Multiply and Add Exponential hfp
MAEB         = ED0E    %      $ P # Multiply and Add Exponential Bfp
MAEBR        = B30E    %      $   # Multiply and Add Exponential Bfp
                                  + Register
MAER         = B32E    %      $   # Multiply and Add Exponential hfp
                                  + Register
MAY          = ED3A    %      $   # Multiply and Add Yucky unnormalized
                                  + extended hfp from long hfp
MAYH         = ED3C    %      $   # Multiply and Add Yucky unnormalized
                                  + extended hfp High from long hfp
MAYHR        = B33C    %      $   # Multiply and Add Yucky unnormalized
                                  + extended hfp High from long
                                  + hfp Register
MAYL         = ED38    %      $   # Multiply and Add Yucky unnormalized
                                  + extended hfp Low from long
                                  + hfp
MAYLR        = B338    %      $   # Multiply and Add Yucky unnormalized
                                  + extended hfp Low from long
                                  + hfp Register
MAYR         = B33A    %      $   # Multiply and Add Yucky unnormalized
                                  + extended hfp from long hfp
                                  + Register
MC           = AF      %      $   # Monitor Call
MCBDM        = B2A4    %      $ G # Move Channel Buffer Data Multiple
MCEND        = ????    %      $ T # MilliCode END
MCPU         =-EA08    %      $ S # ???
MD           = 6C      %      $   # Multiply Double hfp
MDB          = ED1C    %      $ P # Multiply Double Bfp
MDBR         = B31C    %      $   # Multiply Double Bfp Register
MDE          = 7C      %      $   # Multiply Double hfp from
                                  + Exponential hfp
MDEB         = ED0C    %      $ P # Multiply Double bfp from
                                  + Exponential Bfp
MDEBR        = B30C    %      $   # Multiply Double bfp from
                                  + Exponential Bfp Register
MDER         = 3C      %      $   # Multiply Double hfp from
                                  + Exponential hfp Register
MDR          = 2C      %      $   # Multiply Double hfp Register
MDRN         =-B2C4    %      $   # Multiply Double hfp with RouNding
MDTR         = B3D0    %      $   # Multiply Double Tfp Register
MDTRA        = B3D0    %      $   # Multiply Double Tfp Register
                                  + Alternative
ME           = 7C      %      $   # Multiply Exponential hfp
MEE          = ED37    %      $ P # Multiply Exponential hfp from
                                  + Exponential hfp
MEEB         = ED17    %      $ P # Multiply Exponential bfp from
                                  + Exponential Bfp
MEEBR        = B317    %      $   # Multiply Exponential bfp from
                                  + Exponential Bfp Register
MEER         = B337    %      $   # Multiply Exponential hfp from
                                  + Exponential hfp Register
MEND         = &&      %      $   # Macro END
MER          = 3C      %      $   # Multiply Exponential hfp Register
MERN         =-B2C5    %      $   # Multiply Exponential hfp with
                                  + RouNding
MEXIT        = &&      %      $   # Macro EXIT
MFY          = E35C    %      $ P # Multiply Fullword Yonder
MG           = E384    %      $ P # Multiply Grande
MGH          = E33C    %      $ P # Multiply Grande with Halfword
MGHI         = A7D     %      $ A # Multiply Grande with Halfword
                                  + Immediate
MGRK         = B9EC    %      $   # Multiply Grande Register Keeping
                                  + source data
MH           = 4C      %      $   # Multiply Halfword
MHELP        = &&      %      $   # Macro HELP
MHI          = A7C     %      $ A # Multiply Halfword Immediate
MHY          = E37C    %      $ P # Multiply Halfword Yonder
MIO          =-EA09    %      $ S # ???
ML           = E396    %      $ P # Multiply Logical
MLG          = E386    %      $ P # Multiply Logical Grande
MLGR         = B986    %      $   # Multiply Logical Grande Register
MLR          = B996    %      $   # Multiply Logical Register
MNOTE        = &&      %      $   # Macro NOTE
MP           = FC      %      $   # Multiply Packed decimal
MR           = 1C      %      $   # Multiply Register
MS           = 71      %      $   # Multiply Single
MSC          = E353    %      $ P # Multiply Single and Check
MSCH         = B232    %      $   # Modify SubCHannel
MSD          = ED3F    %      $ P # Multiply and Subtract Double hfp
MSDB         = ED1F    %      $ P # Multiply and Subtract Double Bfp
MSDBR        = B31F    %      $   # Multiply and Subtract Double Bfp
                                  + Register
MSDR         = B33F    %      $   # Multiply and Subtract Double hfp
                                  + Register
MSE          = ED2F    %      $ P # Multiply and Subtract Exponential
                                  + hfp
MSEB         = ED0F    %      $ P # Multiply and Subtract Exponential
                                  + Bfp
MSEBR        = B30F    %      $   # Multiply and Subtract Exponential
                                  + Bfp Register
MSER         = B32F    %      $   # Multiply and Subtract Exponential
                                  + hfp Register
MSET         = ????    %      $ T # Millicode SET via register-operand
                                  + register
MSFI         = C21     %      $ A # Multiply Single with Fullword
                                  + Immediate
MSG          = E30C    %      $ P # Multiply Single Grande
MSGC         = E383    %      $ P # Multiply Single Grande and Check
MSGF         = E31C    %      $ P # Multiply Single Grande with
                                  + Fullword
MSGFI        = C20     %      $ A # Mulitply Single Grande with
                                  + Fullword Immediate
MSGFR        = B91C    %      $   # Multiply Single Grande with
                                  + Fullword Register
MSGR         = B90C    %      $   # Multiply Single Grande Register
MSGRKC       = B9ED    %      $   # Multiply Single Grande Register
                                  + Keeping source data and Check
MSR          = B252    %      $   # Multiply Single Register
MSRKC        = B9FD    %      $   # Multiply Single Register Keeping
                                  + source data and Check
MSTA         = B247    %      $   # Modify stacked STAte
MSY          = E351    %      $ P # Multiply Single Yonder
MULDIV       =-EA0D    %      $ S # ???
MUN          =-B21E    %      $   # Make UNaddressable
MVC          = D2      %      $   # MoVe Characters
MVCDK        = E50F    %      $   # MoVe Characters with Destination
                                  + Key
MVCIN        = E8      %      $   # MoVe Characters INverse
MVCK         = D9      %      $   # MoVe Characters with Key
MVCL         = 0E      %      $   # MoVe Characters Long
MVCLE        = A8      %      $   # MoVe Characters Long Extended
MVCLU        = EB8E    %      $ P # MoVe Characters Long Unicode
MVCOS        = C80     %      $ A # MoVe Characters with Optional
                                  + Specifications
MVCP         = DA      %      $   # MoVe Characters to Primary
MVCRL        = E50A    %      $   # MoVe Characters Right to Left
MVCS         = DB      %      $   # MoVe Characters to Secondary
MVCSK        = E50E    %      $   # MoVe Characters with Source Key
MVCX         = ????    %      $ T # MoVe Characters eXecution
MVGHI        = E548    %      $   # MoVe Grande from Halfword Immediate
MVHHI        = E544    %      $   # MoVe Halfword from Halfword
                                  + Immediate
MVHI         = E54C    %      $   # MoVe fullword from Halfword
                                  + Immediate
MVI          = 92      %      $   # MoVe Immediate
MVIY         = EB52    %      $ P # MoVe Immediate Yonder
MVN          = D1      %      $   # MoVe Numerics
MVO          = F1      %      $   # MoVe with Offset
MVPG         = B254    %      $   # MoVe PaGe
MVST         = B255    %      $   # MoVe STring
MVZ          = D3      %      $   # MoVe Zones
MXBR         = B34C    %      $   # Multiply eXtended Bfp Register
MXD          = 67      %      $   # Multiply eXtended hfp from Double
                                  + hfp
MXDB         = ED07    %      $ P # Multiply eXtended bfp from Double
                                  + Bfp
MXDBR        = B307    %      $   # Multiply eXtended bfp from Double
                                  + Bfp Register
MXDR         = 27      %      $   # Multiply eXtended hfp from Double
                                  + hfp Register
MXR          = 26      %      $   # Multiply eXtended hfp Register
MXTR         = B3D8    %      $   # Multiply eXtended Tfp Register
MXTRA        = B3D8    %      $   # Multiply eXtended Tfp Register
                                  + Alternative
MY           = ED3B    %      $   # Multiply Yucky unnormalized
                                  + extended hfp from long hfp
MYH          = ED3D    %      $   # Multiply Yucky unnormalized
                                  + extended hfp High from long hfp
MYHR         = B33D    %      $   # Multiply Yucky unnormalized
                                  + extended hfp High from long hfp
                                  + Register
MYL          = ED39    %      $   # Multiply Yucky unnormalized
                                  + extended hfp Low from long hfp
MYLR         = B339    %      $   # Multiply Yucky unnormalized
                                  + extended hfp Low from long hfp
                                  + Register
MYR          = B33B    %      $   # Multiply Yucky unnormalized
                                  + extended hfp from long hfp Register
N            = 54      %      $   # aNd
NC           = D4      %      $   # aNd Characters
NCGRK        = B9E5    %      $   # aNd with Complement Grande Register
                                  + Keeping source data
NCRK         = B9F5    %      $   # aNd with Complement Register
                                  + Keeping source data
NG           = E380    %      $ P # aNd Grande
NGR          = B980    %      $   # aNd Grande Register
NGRK         = B9E4    %      $   # aNd Grande Register
                                   + Keeping source data
NHHR         = EC54    % [00.1F.00] $   # aNd High with High Register
NHLR         = EC54    % [00.1F.20] $   # aNd High with Low Register
NI           = 94      %      $   # aNd Immediate
NIAI         = B2FA    %      $ 4 # Next Instruction Access Intent
NIHF         = C0A     %      $ A # aNd Immediate High with Fullword
NIHH         = A54     %      $ A # aNd Immediate High-order word,
                                  + Higher halfword
NIHL         = A55     %      $ A # aNd Immediate High-order word,
                                  + Lower halfword
NILF         = C0B     %      $ A # aNd Immediate Low with Fullword
NILH         = A56     %      $ A # aNd Immediate Low-order word,
                                  + Higher halfword
NILL         = A57     %      $ A # aNd Immediate Low-order word,
                                  + Lower halfword
NIY          = EB54    %      $ P # aNd Immediate Yonder
NLHR         = EC54    % [20.3F.20] $   # aNd Low with High Register
NNGRK        = B964    %      $   # Not aNd Grande Register Keeping
                                  + source data
NNPA              = B93B    % $ Z # Neural Network Processing Assist
NNPA.ADD          = B93B.10 % $   # NNPA - ADD
NNPA.AVGPOOL2D    = B93B.51 % $   # NNPA - AVeraGe POOL 2Dimensions
NNPA.BATCHNORM    = B93B.40 % $   # NNPA - BATCHNORM
NNPA.CONVOLUTION  = B93B.70 % $   # NNPA - CONVOLUTION
NNPA.DIV          = B93B.13 % $   # NNPA - DIVide
NNPA.EXP          = B93B.21 % $   # NNPA - EXPonential
NNPA.GELU         = B93B.35 % $   # NNPA - Gaussian Error Linear Unit
NNPA.GRUACT       = B93B.61 % $   # NNPA - GRUACT
NNPA.INVSQRT      = B93B.23 % $   # NNPA - INVerse SQare RooT
NNPA.LAYERNORM    = B93B.42 % $   # NNPA - LAYER NORMalization
NNPA.LOG          = B93B.20 % $   # NNPA - natural LOGarithm
NNPA.LSTMACT      = B93B.60 % $   # NNPA - LSTMACT
NNPA.MATMULOP     = B93B.71 % $   # NNPA - MATMUL-OP
NNPA.MATMULOPBCAST1=B93B.73 % $   # NNPA - MATMUL-OP-BCAST1
NNPA.MATMULOPBCAST23=B93B.72% $   # NNPA - MATMUL-OP-BCAST23
NNPA.MAX          = B93B.15 % $   # NNPA - MAXimum
NNPA.MAXPOOL2D    = B93B.50 % $   # NNPA - MAXimum POOL 2Dimensions
NNPA.MIN          = B93B.14 % $   # NNPA - MINimum
NNPA.MOMENTS      = B93B.41 % $   # NNPA - MOMENTS
NNPA.MUL          = B93B.12 % $   # NNPA - MULtiply
NNPA.NORM         = B93B.43 % $   # NNPA - NORMalization
NNPA.QAF          = B93B.00 % $   # NNPA - Query Available Functions
NNPA.REDUCE       = B93B.F1 % $   # NNPA - REDUCE
NNPA.RELU         = B93B.31 % $   # NNPA - REctified Linear Unit
NNPA.SIGMOID      = B93B.33 % $   # NNPA - SIGMOID
NNPA.SOFTMAX      = B93B.34 % $   # NNPA - SOFTMAX
NNPA.SQRT         = B93B.22 % $   # NNPA - SQare RooT
NNPA.SUB          = B93B.11 % $   # NNPA - SUB
NNPA.TANH         = B93B.32 % $   # NNPA - TANgent Hyperbolic
NNPA.TRANSFORM    = B93B.F0 % $   # NNPA - TRANSFORM
NNRK         = B974    %      $   # Not aNd Register Keeping source
                                  + data
NOGRK        = B966    %      $   # Not Or Grande Register Keeping
                                  + source data
NOP          = 47      % 0000 $ B # No-OPeration
NOPR         = 07      % 0000 $ B # No-OPeration Register
NORK         = B976    %      $   # Not Or Register Keeping source data
NOTGR        = B966    % --   $   # NOT Grande Register
NOTR         = B976    % --   $   # NOT Register
NQAP         = B2AD    %      $   # eNQueue Adjunct Processor
NR           = 14      %      $   # aNd Register
NRK          = B9F4    %      $   # aNd Register Keeping source data
NTSTG        = E325    %      $ P4# Non-Transactional STore Grande
NXGRK        = B967    %      $   # Not eXclusive-or Grande Register
                                  + Keeping source data
NXRK         = B977    %      $   # Not eXclusive-or Register Keeping
                                  + source data
NY           = E354    %      $ P # aNd Yonder
O            = 56      %      $   # Or
OC           = D6      %      $   # Or Characters
OCGRK        = B965    %      $   # Or with Complement Grande Register
                                  + Keeping source data
OCRK         = B975    %      $   # Or with Complement Register
                                  + Keeping source data
OG           = E381    %      $ P # Or Grande
OGR          = B981    %      $   # Or Grande Register
OGRK         = B9E6    %      $   # Or Grande Register
                                  + Keeping source data
OHHR         = EC56    % [00.1F.00] $   # Or High with High Register
OHLR         = EC56    % [00.1F.20] $   # Or High with Low Register
OI           = 96      %      $   # Or Immediate
OIHF         = C0C     %      $ A # Or Immediate High-order word with
                                  + Fullword
OIHH         = A58     %      $ A # Or Immediate High-order word,
                                  + Higher halfword
OIHL         = A59     %      $ A # Or Immediate High-order word,
                                  + Lower halfword
OILF         = C0D     %      $ A # Or Immediate Low-order word with
                                  + Fullword
OILH         = A5A     %      $ A # Or Immediate Low-order word, Higher
                                  + halfword
OILL         = A5B     %      $ A # Or Immediate Low-order word, Lower
                                  + halfword
OIY          = EB56    %      $ P # Or Immediate Yonder
OLHR         = EC56    % [20.3F.20] $   # Or Low with High Register
OPCD00       = 00      %      $   # Invalid Operation / Abend S0C1
OPCD01xx     = 01      %      $   # Extension set 01
OPCD0103     =-0103    %      $   # An unknown instruction
OPCD0104fc   = 0104    %      $   # @opcd010 Function codes for
                                  + PTFF instruction
OPCD010Afc   = 010A    %      $   # @opcd010 Function codes for
                                  + PFPO instruction
OPCD07m      = 07      %      $   # Extended mnemonics for BCR
                                  + instruction
OPCD47m      = 47      %      $   # Extended mnemonics for BC
                                  + instruction
OPCD83       = 83      %      $   # Diagnose
OPCD9C0x     =-9C      %      $   # I/O Extension set 9C0
OPCD9D0x     =-9D      %      $   # I/O Extension set 9D0
OPCD9E0x     =-9E      %      $   # I/O Extension set 9E0
OPCD9F0x     =-9F      %      $   # I/O Extension set 9F0
OPCDA2x      = A2      %      $   # Millicode extension set A2
OPCDA3x      = A3      %      $   # Millicode extension set A3
OPCDA4xx     =-A4      %      $   # Vector extension set A4
OPCDA5x      = A5      %      $   # Halfword Immediate Extension set A5
OPCDA5xx     =-A5      %      $   # Vector extension set A5
OPCDA6xx     =-A6      %      $   # Vector extension set A6
OPCDA7m4     = A74     %      $   # Extended mnemonics for BRC
                                  + instruction
OPCDA7x      = A7      %      $   # Halford Immediate Extension set A7
OPCDAEfc     = AE      %      $   # Function codes for SIGP instruction
OPCDB2xx     = B2      %      $   # Extension set B2
OPCDB242     =-B242    %      $ I # Add FRR
OPCDB24Afc   = B24A    %      $   # function codes for ESTA instruction
OPCDB253     =-B253    %      $   # An unknown instruction
OPCDB25B     =-B25B    %      $ N # An Asynchronous Page Facility
                                  + instruction
OPCDB25C     =-B25C    %      $ N # An Asynchronous Page Facility
                                  + instruction
OPCDB260     = B260    %      $ G # A Coupling Facility instruction
OPCDB261     = B261    %      $ G # A Coupling Facility instruction
OPCDB263     =-B263    %      $ G # A Coupling Facility instruction
OPCDB264     = B264    %      $ G # A Coupling Facility instruction
OPCDB266     = B266    %      $ G # A Coupling Facility instruction
OPCDB267     = B267    %      $ G # A Coupling Facility instruction
OPCDB269     = B269    %      $ O # A Cryptographic Facility
                                  + instruction
OPCDB26A     = B26A    %      $ O # A Cryptographic Facility
                                  + instruction
OPCDB26B     = B26B    %      $ O # A Cryptographic Facility
                                  + instruction
OPCDB26C     = B26C    %      $ O # A Cryptographic Facility
                                  + instruction
OPCDB26D     = B26D    %      $ O # A Cryptographic Facility
                                  + instruction
OPCDB26E     = B26E    %      $ O # A Cryptographic Facility
                                  + instruction
OPCDB26F     = B26F    %      $ O # A Cryptographic Facility
                                  + instruction
OPCDB272     = B272    %      $ G # A Coupling Facility instruction
OPCDB275     =-B275    %      $   # An unknown instruction
OPCDB27A     = B27A    %      $ G # A Coupling Facility instruction
OPCDB27B     = B27B    %      $ G # A Coupling Facility instruction
OPCDB27C     =-B27C    %      $ G # A Coupling Facility instruction
OPCDB27E     = B27E    %      $ G # A Coupling Facility instruction
OPCDB27F     = B27F    %      $ G # A Coupling Facility instruction
OPCDB2A8     =-B2A8    %      $   # An unknown instruction
OPCDB2A9     =-B2A9    %      $   # An unknown instruction
OPCDB2AA     =-B2AA    %      $   # Dequeue CAM
OPCDB2AB     =-B2AB    %      $   # Process CAM Queue
OPCDB2AC     =-B2AC    %      $   # Enqueue CAM
OPCDB2E8fc   = B2E8    %      $   # Extended mnemonics for
                                  + PPA instruction
OPCDB2F6     = B2F6    %      $ G # A Coupling Facility instruction
OPCDB3xx     = B3      %      $   # Floating Point Extension set B3
OPCDB9xx     = B9      %      $   # Extension set B9
OPCDB91Efc   = B91E    %      $   # @opcdb92 Function codes for
                                  + KMAC instruction
OPCDB928fc   = B928    %      $   # @opcdb92 Function codes for
                                  + PCKMO instruction
OPCDB929fc   = B929    %      $   # @opcdb92 Function codes for
                                  + KMA instruction
OPCDB92Afc   = B92A    %      $   # @opcdb92 Function codes for
                                  + KMF instruction
OPCDB92Bfc   = B92B    %      $   # @opcdb92 Function codes for
                                  + KMO instruction
OPCDB92Cfc   = B92C    %      $   # @opcdb92 Function codes for
                                  + PCC instruction
OPCDB92Dfc   = B92D    %      $   # @opcdb92 Function codes for
                                  + KMCTR instruction
OPCDB92Efc   = B92E    %      $   # @opcdb92 Function codes for
                                  + KM instruction
OPCDB92Ffc   = B92F    %      $   # @opcdb92 Function codes for
                                  + KMC instruction
OPCDB938fc   = B938    %      $   # @opcdb93 Function codes for
                                  + SORTL instruction
OPCDB939fc   = B939    %      $   # @opcdb93 Function codes for
                                  + DFLTCC instruction
OPCDB93Afc   = B93A    %      $   # @opcdb93 Function codes for
                                  + KDSA instruction
OPCDB93Bfc   = B93B    %      $   # @opcdb93 Function codes for
                                  + NNPA instruction
OPCDB93Cfc   = B93C    %      $   # @opcdb93 Function codes for
                                  + PRNO/PPNO instruction
OPCDB93Efc   = B93E    %      $   # @opcdb93 Function codes for
                                  + KIMD instruction
OPCDB93Ffc   = B93F    %      $   # @opcdb93 Function codes for
                                  + KLMD instruction
OPCDB960m    = B960    %      $   # @opcdb96 Extended mnemonics for
                                  + CGRT instruction
OPCDB961m    = B961    %      $   # @opcdb96 Extended mnemonics for
                                  + CLGRT instruction
OPCDB972m    = B972    %      $   # @opcdb97 Extended mnemonics for
                                  + CRT instruction
OPCDB973m    = B973    %      $   # @opcdb97 Extended mnemonics for
                                  + CLRT instruction
OPCDB9A2fc   = B9A2    %      $   # @opcdb9a Function codes for
                                  + PTF instruction
OPCDB9C0m    = B9C0    %      $   # @opcdb9c Extended mnemonics for
                                  + SELFHR instruction
OPCDB9E0m    = B9E0    %      $   # @opcdb9e Extended mnemonics for
                                  + LOCFHR instruction
OPCDB9E2m    = B9E2    %      $   # @opcdb9e Extended mnemonics for
                                  + LOCGR instruction
OPCDB9E3m    = B9E3    %      $   # @opcdb9e Extended mnemonics for
                                  + SELGR instruction
OPCDB9F0m    = B9F0    %      $   # @opcdb9f Extended mnemonics for
                                  + SELR instruction
OPCDB9F2m    = B9F2    %      $   # @opcdb9f Extended mnemonics for
                                  + LOCR instruction
OPCDC0m4     = C04     %      $   # Extended mnemonics for BRCL
                                  + instruction
OPCDC0x      = C0      %      $   # Extension set C0
OPCDC2x      = C2      %      $   # Extension set C2
OPCDC4x      = C4      %      $   # Relative Long Extension set C4
OPCDC6x      = C6      %      $   # Relative Long Extension set C6
OPCDC8x      = C8      %      $   # Extension set C8
OPCDCCx      = CC      %      $   # Extension set CC
OPCDE00x     =-E0      %      $   # Assist Extension set E0
OPCDE3xx     = E3      %      $   # Extension set E3
OPCDE347m    = E347    %      $   # Extended Mnemonics for
                                  + BIC instruction
OPCDE4xx     =-E4      %      $   # Vector Extension set E4
OPCDE5xx     = E5      %      $   # Extension set E5
OPCDE502     =-E502    %      $ I # Fix Page
OPCDE503     =-E503    %      $ I # SVC Assist
OPCDE504     =-E504    %      $ I # Obtain Local Lock
OPCDE505     =-E505    %      $ I # Release Local Lock
OPCDE506     =-E506    %      $ I # Obtain CMS Lock
OPCDE507     =-E507    %      $ I # Release CMS Lock
OPCDE508     =-E508    %      $ I # Trace SVC Interruption
OPCDE509     =-E509    %      $ I # Trace Program Interruption
OPCDE50A     =-E50A    %      $ I # Trace Initial SRB Dispatch
OPCDE50B     =-E50B    %      $ I # Trace I/O Interruption
OPCDE50C     =-E50C    %      $ I # Trace Task Dispatch
OPCDE50D     =-E50D    %      $ I # Trace SVC Return
OPCDE6xx     = E6      %      $   # Vector Extension set E6
OPCDE6xx     =-E6      %      $   # Extension set E6
OPCDE600     =-E600    %      $ J # Get Free Storage Space
OPCDE601     =-E601    %      $ J # Return Free Storage Space
OPCDE602     =-E602    %      $ J # Lock Page
OPCDE603     =-E603    %      $ J # Unlock Page
OPCDE604     =-E604    %      $ J # Decode Subsequent CCW Commands
OPCDE604m    = E604    %      $   # @opcde60 Extended mnemonics for
                                  + VLLEBRZ instruction
OPCDE605     =-E605    %      $ J # Free CCW Storage
OPCDE605m    = E605    %      $   # @opcde60 Extended mnemonics for
                                  + VLBRREP instruction
OPCDE606     =-E606    %      $ J # Locate Virtual I/O Control Blocks
OPCDE606m    = E606    %      $   # @opcde60 Extended mnemonics for
                                  + VLBR instruction
OPCDE607     =-E607    %      $ J # Dispatch a Block or a Virtual
                                  + Machine - Full Function
OPCDE607m    = E607    %      $   # @opcde60 Extended mnemonics for
                                  + VLER instruction
OPCDE608     =-E608    %      $ J # Test Page Status
OPCDE609     =-E609    %      $ J # Test Page Status and Lock
OPCDE60A     =-E60A    %      $ J # Invalidate Segment Table
OPCDE60Ax    = E60A    %      $   # @opcde60 Extended mnemonics for
                                  + VSTEBRG instruction
OPCDE60B     =-E60B    %      $ J # Invalidate Page Table
OPCDE60Bx    = E60B    %      $   # @opcde60 Extended mnemonics for
                                  + VSTEBRF instruction
OPCDE60C     =-E60C    %      $ J # Decode First CCW Command
OPCDE60D     =-E60D    %      $ J # Main Entry to Dispatcher
OPCDE60E     =-E60E    %      $ J # Locate Real I/O Control Blocks
OPCDE60Em    = E60E    %      $   # @opcde60 Extended mnemonics for
                                  + VSTBR instruction
OPCDE60F     =-E60F    %      $ J # Common CCW Command Processing
OPCDE60Fm    = E60F    %      $   # @opcde60 Extended mnemonics for
                                  + VSTER instruction
OPCDE610     =-E610    %      $ J # Untranslate CCW
OPCDE611     =-E611    %      $ J # Dispatch a Block or Virtual Machine
                                  + - Abbreviated
OPCDE612     =-E612    %      $ J # Store ECPS:VM/370 Identification
OPCDE613     =-E613    %      $ J # Locate Changed/Shared Page
OPCDE616     =-E616    %      $ K # Preferred Machine Assist
OPCDE674m    = E674    %      $   # @opcde67 Extended mnemonics for
                                  + VSCHP instruction
OPCDE7xx     = E7      %      $   # Vector Extension set E7
OPCDE7xx     =-E7      %      $   # Extension set E7
OPCDE702     =-E702    %      $ K # SVC Handler without Trace
OPCDE703     =-E703    %      $ K # SVC Handler with Trace
OPCDE704     =-E704    %      $ K # Resume Page Measurement
OPCDE704m    = E704    %      $   # @opcde70 Extended mnemonics for
                                  + VLLEZ instruction
OPCDE705     =-E705    %      $ K # Resume Short Term Unfix
OPCDE705m    = E705    %      $   # @opcde70 Extended mnemonics for
                                  + VLREP instruction
OPCDE707     =-E707    %      $ K # Dispatcher
OPCDE708     =-E708    %      $ K # SIO Trace
OPCDE709     =-E709    %      $ K # Task Switch Trace
OPCDE70A     =-E70A    %      $ K # I/O Interrupt Trace
OPCDE70B     =-E70B    %      $ K # Store ECPS:VS2 Level
OPCDE70C     =-E70C    %      $ K # Set Direct Translate Limit
OPCDE710     =-E710    %      $ K # PCB Enqueue Lifo
OPCDE720     =-E720    %      $ K # PCB Enqueue Fifo
OPCDE721m    = E721    %      $   # @opcde72 Extended mnemonics for
                                  + VLGV instruction
OPCDE722m    = E722    %      $   # @opcde72 Extended mnemonics for
                                  + VLVG instruction
OPCDE730     =-E730    %      $ K # Double Threaded Dequeue
OPCDE730m    = E730    %      $   # @opcde73 Extended mnemonics for
                                  + VESL instruction
OPCDE733m    = E733    %      $   # @opcde73 Extended mnemonics for
                                  + VERLL instruction
OPCDE738m    = E738    %      $   # @opcde73 Extended mnemonics for
                                  + VESRL instruction
OPCDE73Am    = E73A    %      $   # @opcde73 Extended mnemonics for
                                  + VESRA instruction
OPCDE740     =-E740    %      $ K # Get APCBE
OPCDE745m    = E745    %      $   # @opcde74 Extended mnemonics for
                                  + VREPI instruction
OPCDE746m    = E746    %      $   # @opcde74 Extended mnemonics for
                                  + VGM instruction
OPCDE74Amm   = E74A    %      $   # @opcde74 Extended mnemonics for
                                  + VFTCI instruction
OPCDE74Dm    = E74D    %      $   # @opcde74 Extended mnemonics for
                                  + VREP instruction
OPCDE750     =-E750    %      $ K # Return APCBE
OPCDE750m    = E750    %      $   # @opcde75 Extended mnemonics for
                                  + VPOPCT instruction
OPCDE752m    = E752    %      $   # @opcde75 Extended mnemonics for
                                  + VCTZ instruction
OPCDE753m    = E753    %      $   # @opcde75 Extended mnemonics for
                                  + VCLZ instruction
OPCDE754m    = E754    %      $   # @opcde75 Extended mnemonics for
                                  + VGEM instruction
OPCDE758     =-E758    %      $ K # Find Gotten Queue Element
OPCDE75Cm    = E75C    %      $   # @opcde75 Extended mnemonics for
                                  + VISTR instruction
OPCDE75Fm    = E75F    %      $   # @opcde75 Extended mnemonics for
                                  + VSEG instruction
OPCDE760     =-E760    %      $ K # Dequeue Top APCBE
OPCDE760m    = E760    %      $   # @opcde76 Extended mnemonics for
                                  + VMRL instruction
OPCDE761m    = E761    %      $   # @opcde76 Extended mnemonics for
                                  + VMRH instruction
OPCDE764m    = E764    %      $   # @opcde76 Extended mnemonics for
                                  + VSUM instruction
OPCDE765m    = E765    %      $   # @opcde76 Extended mnemonics for
                                  + VSUMG instruction
OPCDE767m    = E767    %      $   # @opcde76 Extended mnemonics for
                                  + VSUMQ instruction
OPCDE768     =-E768    %      $ K # SMF Storage Monitor
OPCDE770     =-E770    %      $ K # Enqueue RSPTE to Top
OPCDE770m    = E770    %      $   # @opcde77 Extended mnemonics for
                                  + VESLV instruction
OPCDE772m    = E772    %      $   # @opcde77 Extended mnemonics for
                                  + VERIM instruction
OPCDE773m    = E773    %      $   # @opcde77 Extended mnemonics for
                                  + VERLLV instruction
OPCDE778     =-E778    %      $ K # Getmain PPA
OPCDE778m    = E778    %      $   # @opcde77 Extended mnemonics for
                                  + VESRLV instruction
OPCDE77Am    = E77A    %      $   # @opcde77 Extended mnemonics for
                                  + VESRAV instruction
OPCDE780     =-E780    %      $ K # Enqueue RSPTE to Bottom
OPCDE780mm   = E780    %      $   # @opcde78 Extended mnemonics for
                                  + VFEE instruction
OPCDE781mm   = E781    %      $   # @opcde78 Extended mnemonics for
                                  + VFENE instruction
OPCDE782mm   = E782    %      $   # @opcde78 Extended mnemonics for
                                  + VFAE instruction
OPCDE788     =-E788    %      $ K # Getmain PPA on Page Boundary
OPCDE789m    = E789    %      $   # @opcde78 Extended mnemonics for
                                  + VBLEND instruction
OPCDE78Amm   = E78A    %      $   # @opcde78 Extended mnemonics for
                                  + VSTRC instruction
OPCDE78Bmm   = E78B    %      $   # @opcde78 Extended mnemonics for
                                  + VSTRS instruction
OPCDE78Emm   = E78E    %      $   # @opcde78 Extended mnemonics for
                                  + VFMS instruction
OPCDE78Fmm   = E78F    %      $   # @opcde78 Extended mnemonics for
                                  + VFMA instruction
OPCDE790     =-E790    %      $ K # Dequeue Specific RSPTE
OPCDE794m    = E794    %      $   # @opcde79 Extended mnemonics for
                                  + VPK instruction
OPCDE795mm   = E795    %      $   # @opcde79 Extended mnemonics for
                                  + VPKLS instruction
OPCDE797mm   = E797    %      $   # @opcde79 Extended mnemonics for
                                  + VPKS instruction
OPCDE798     =-E798    %      $ K # Freemain PQA
OPCDE79Emm   = E79E    %      $   # @opcde79 Extended mnemonics for
                                  + VFNMS instruction
OPCDE79Fmm   = E79F    %      $   # @opcde79 Extended mnemonics for
                                  + VFNM instruction
OPCDE7A0     =-E7A0    %      $ K # Dequeue First RSPTE
OPCDE7A1m    = E7A1    %      $   # @opcde7a Extended mnemonics for
                                  + VMLH instruction
OPCDE7A2m    = E7A2    %      $   # @opcde7a Extended mnemonics for
                                  + VML instruction
OPCDE7A3m    = E7A3    %      $   # @opcde7a Extended mnemonics for
                                  + VMH instruction
OPCDE7A4m    = E7A4    %      $   # @opcde7a Extended mnemonics for
                                  + VMLE instruction
OPCDE7A5m    = E7A5    %      $   # @opcde7a Extended mnemonics for
                                  + VMLO instruction
OPCDE7A6m    = E7A6    %      $   # @opcde7a Extended mnemonics for
                                  + VME instruction
OPCDE7A7m    = E7A7    %      $   # @opcde7a Extended mnemonics for
                                  + VMO instruction
OPCDE7A8     =-E7A8    %      $ K # Freemain in Partition
OPCDE7A9m    = E7A9    %      $   # @opcde7a Extended mnemonics for
                                  + VMALH instruction
OPCDE7AAm    = E7AA    %      $   # @opcde7a Extended mnemonics for
                                  + VMAL instruction
OPCDE7ABm    = E7AB    %      $   # @opcde7a Extended mnemonics for
                                  + VMAH instruction
OPCDE7ACm    = E7AC    %      $   # @opcde7a Extended mnemonics for
                                  + VMALE instruction
OPCDE7ADm    = E7AD    %      $   # @opcde7a Extended mnemonics for
                                  + VMALO instruction
OPCDE7AEm    = E7AE    %      $   # @opcde7a Extended mnemonics for
                                  + VMAE instruction
OPCDE7AFm    = E7AF    %      $   # @opcde7a Extended mnemonics for
                                  + VMAO instruction
OPCDE7B0     =-E7B0    %      $ K # Invalidate Virtual Page
OPCDE7B0m    = E7B0    %      $   # @opcde7b Extended mnemonics for
                                  + VDL instruction
OPCDE7B1m    = E7B1    %      $   # @opcde7b Extended mnemonics for
                                  + VRL instruction
OPCDE7B2m    = E7B2    %      $   # @opcde7b Extended mnemonics for
                                  + VD instruction
OPCDE7B3m    = E7B3    %      $   # @opcde7b Extended mnemonics for
                                  + VR instruction
OPCDE7B4m    = E7B4    %      $   # @opcde7b Extended mnemonics for
                                  + VGFM instruction
OPCDE7B8     =-E7B8    %      $ K # Save Getmain/Freemain Status
OPCDE7B8mm   = E7B8    %      $   # @opcde7b Extended mnemonics for
                                  + VMSL instruction
OPCDE7B9m    = E7B9    %      $   # @opcde7b Extended mnemonics for
                                  + VACCC instruction
OPCDE7BBm    = E7BB    %      $   # @opcde7b Extended mnemonics for
                                  + VAC instruction
OPCDE7BCm    = E7BC    %      $   # @opcde7b Extended mnemonics for
                                  + VGFMA instruction
OPCDE7BDm    = E7BD    %      $   # @opcde7b Extended mnemonics for
                                  + VSBCBI instruction
OPCDE7BFm    = E7BF    %      $   # @opcde7b Extended mnemonics for
                                  + VSBI instruction
OPCDE7C0     =-E7C0    %      $ K # Short Term Unfix
OPCDE7C0mmm  = E7C0    %      $   # @opcde7c Extended mnemonics for
                                  + VCLFP instruction
OPCDE7C1mmm  = E7C1    %      $   # @opcde7c Extended mnemonics for
                                  + VCFPL instruction
OPCDE7C2mmm  = E7C2    %      $   # @opcde7c Extended mnemonics for
                                  + VCSFP instruction
OPCDE7C3mmm  = E7C3    %      $   # @opcde7c Extended mnemonics for
                                  + VCFPS instruction
OPCDE7C4mm   = E7C4    %      $   # @opcde7c Extended mnemonics for
                                  + VFLL instruction
OPCDE7C5mmm  = E7C5    %      $   # @opcde7c Extended mnemonics for
                                  + VFLR instruction
OPCDE7C7mmm  = E7C7    %      $   # @opcde7c Extended mnemonics for
                                  + VFI instruction
OPCDE7C8     =-E7C8    %      $ K # Restore Getmain/Freemain Status
OPCDE7CAmmm  = E7CA    %      $   # @opcde7c Extended mnemonics for
                                  + WFK instruction
OPCDE7CBmmm  = E7CB    %      $   # @opcde7c Extended mnemonics for
                                  + WFC instruction
OPCDE7CCmmm  = E7CC    %      $   # @opcde7c Extended mnemonics for
                                  + VFPSO instruction
OPCDE7CEmmm  = E7CE    %      $   # @opcde7c Extended mnemonics for
                                  + VFSQ instruction
OPCDE7D4m    = E7D4    %      $   # @opcde7d Extended mnemonics for
                                  + VUPLL instruction
OPCDE7D5m    = E7D5    %      $   # @opcde7d Extended mnemonics for
                                  + VUPLH instruction
OPCDE7D6m    = E7D6    %      $   # @opcde7d Extended mnemonics for
                                  + VUPL instruction
OPCDE7D7m    = E7D7    %      $   # @opcde7d Extended mnemonics for
                                  + VUPH instruction
OPCDE7D8     =-E7D8    %      $ K # Getmain PQA
OPCDE7D9m    = E7D9    %      $   # @opcde7d Extended mnemonics for
                                  + VECL instruction
OPCDE7DBm    = E7DB    %      $   # @opcde7d Extended mnemonics for
                                  + VEC instruction
OPCDE7DEm    = E7DE    %      $   # @opcde7d Extended mnemonics for
                                  + VLC instruction
OPCDE7DFm    = E7DF    %      $   # @opcde7d Extended mnemonics for
                                  + VLP instruction
OPCDE7E0     =-E7E0    %      $ K # Page Measurement
OPCDE7E2mm   = E7E2    %      $   # @opcde7e Extended mnemonics for
                                  + VFS instruction
OPCDE7E3mm   = E7E3    %      $   # @opcde7e Extended mnemonics for
                                  + VFA instruction
OPCDE7E5mm   = E7E5    %      $   # @opcde7e Extended mnemonics for
                                  + VFD instruction
OPCDE7E7mm   = E7E7    %      $   # @opcde7e Extended mnemonics for
                                  + VFM instruction
OPCDE7E8     =-E7E8    %      $ K # Resume Group1 Suboperation
OPCDE7E8mmm  = E7E8    %      $   # @opcde7e Extended mnemonics for
                                  + VFCE instruction
OPCDE7EAmmm  = E7EA    %      $   # @opcde7e Extended mnemonics for
                                  + VFCHE instruction
OPCDE7EBmmm  = E7EB    %      $   # @opcde7e Extended mnemonics for
                                  + VFCH instruction
OPCDE7EEmmm  = E7EE    %      $   # @opcde7e Extended mnemonics for
                                  + VFMIN instruction
OPCDE7EFmmm  = E7EF    %      $   # @opcde7e Extended mnemonics for
                                  + VFMAX instruction
OPCDE7F0     =-E7F0    %      $ K # Short Term Fix
OPCDE7F0m    = E7F0    %      $   # @opcde7f Extended mnemonics for
                                  + VAVGL instruction
OPCDE7F1m    = E7F1    %      $   # @opcde7f Extended mnemonics for
                                  + VACC instruction
OPCDE7F2m    = E7F2    %      $   # @opcde7f Extended mnemonics for
                                  + VAVG instruction
OPCDE7F3m    = E7F3    %      $   # @opcde7f Extended mnemonics for
                                  + VA instruction
OPCDE7F5m    = E7F5    %      $   # @opcde7f Extended mnemonics for
                                  + VSCBI instruction
OPCDE7F7m    = E7F7    %      $   # @opcde7f Extended mnemonics for
                                  + VS instruction
OPCDE7F8     =-E7F8    %      $ K # Resume Group2 Suboperation
OPCDE7F8mm   = E7F8    %      $   # @opcde7f Extended mnemonics for
                                  + VCEQ instruction
OPCDE7F9mm   = E7F9    %      $   # @opcde7f Extended mnemonics for
                                  + VCHL instruction
OPCDE7FBmm   = E7FB    %      $   # @opcde7f Extended mnemonics for
                                  + VCH instruction
OPCDE7FCm    = E7FC    %      $   # @opcde7f Extended mnemonics for
                                  + VMNL instruction
OPCDE7FDm    = E7FD    %      $   # @opcde7f Extended mnemonics for
                                  + VMXL instruction
OPCDE7FEm    = E7FE    %      $   # @opcde7f Extended mnemonics for
                                  + VMN instruction
OPCDE7FFm    = E7FF    %      $   # @opcde7f Extended mnemonics for
                                  + VMX instruction
OPCDEAxx     =-EA      %      $   # Extension set EA for 14xx Emulation
OPCDEBxx     = EB      %      $   # 64-bit Extension set EB
OPCDEB23m    = EB23    %      $   # @opcdeb2 Extended mnemonics for
                                  + CLT instruction
OPCDEB2Bm    = EB2B    %      $   # @opcdeb2 Extended mnemonics for
                                  + CLGT instruction
OPCDEB4Cfc   = EB4C    %      $   # function codes for ECAG instruction
OPCDEBE0m    = EBE0    %      $   # @opcdebe Extended mnemonics for
                                  + LOCFH instruction
OPCDEBE1m    = EBE1    %      $   # @opcdebe Extended mnemonics for
                                  + STOCFH instruction
OPCDEBE2m    = EBE2    %      $   # @opcdebe Extended mnemonics for
                                  + LOCG instruction
OPCDEBE3m    = EBE3    %      $   # @opcdebe Extended mnemonics for
                                  + STOCG instruction
OPCDEBF2m    = EBF2    %      $   # @opcdebf Extended mnemonics for
                                  + LOC instruction
OPCDEBF3m    = EBF3    %      $   # @opcdebf Extended mnemonics for
                                  + STOC instruction
OPCDECxx     = EC      %      $   # 64-bit Extension set EC
OPCDEC42m    = EC42    %      $   # @opcdec4 Extended mnemonics for
                                  + LOCHI instruction
OPCDEC46m    = EC46    %      $   # @opcdec4 Extended mnemonics for
                                  + LOCGHI instruction
OPCDEC4Em    = EC4E    %      $   # @opcdec4 Extended mnemonics for
                                  + LOCHHI instruction
OPCDEC51     = EC51    %      $   # @opcdec5 Extended mnemonics for
                                  + RISBLG instruction
OPCDEC54     = EC54    %      $   # @opcdec5 Extended mnemonics for
                                  + RNSBG instruction
OPCDEC55     = EC55    %      $   # @opcdec5 Extended mnemonics for
                                  + RISBG instruction
OPCDEC56     = EC56    %      $   # @opcdec5 Extended mnemonics for
                                  + ROSBG instruction
OPCDEC57     = EC57    %      $   # @opcdec5 Extended mnemonics for
                                  + RXSBG instruction
OPCDEC59     = EC59    %      $   # @opcdec5 Extended mnemonics for
                                  + RISBGN instruction
OPCDEC5D     = EC5D    %      $   # @opcdec5 Extended mnemonics for
                                  + RISBHG instruction
OPCDEC64m    = EC64    %      $   # @opcdec6 Extended mnemonics for
                                  + CGRJ instruction
OPCDEC65m    = EC65    %      $   # @opcdec6 Extended mnemonics for
                                  + CLGRJ instruction
OPCDEC70m    = EC70    %      $   # @opcdec7 Extended mnemonics for
                                  + CGIT instruction
OPCDEC71m    = EC71    %      $   # @opcdec7 Extended mnemonics for
                                  + CLGIT instruction
OPCDEC72m    = EC72    %      $   # @opcdec7 Extended mnemonics for
                                  + CIT instruction
OPCDEC73m    = EC73    %      $   # @opcdec7 Extended mnemonics for
                                  + CLFIT instruction
OPCDEC76m    = EC76    %      $   # @opcdec7 Extended mnemonics for
                                  + CRJ instruction
OPCDEC77m    = EC77    %      $   # @opcdec7 Extended mnemonics for
                                  + CLRJ instruction
OPCDEC7Cm    = EC7C    %      $   # @opcdec7 Extended mnemonics for
                                  + CGIJ instruction
OPCDEC7Dm    = EC7D    %      $   # @opcdec7 Extended mnemonics for
                                  + CLGIJ instruction
OPCDEC7Em    = EC7E    %      $   # @opcdec7 Extended mnemonics for
                                  + CIJ instruction
OPCDEC7Fm    = EC7F    %      $   # @opcdec7 Extended mnemonics for
                                  + CLIJ instruction
OPCDECE4m    = ECE4    %      $   # @opcdece Extended mnemonics for
                                  + CGRB instruction
OPCDECE5m    = ECE5    %      $   # @opcdece Extended mnemonics for
                                  + CLGRB instruction
OPCDECF6m    = ECF6    %      $   # @opcdecf Extended mnemonics for
                                  + CRB instruction
OPCDECF7m    = ECF7    %      $   # @opcdecf Extended mnemonics for
                                  + CLRB instruction
OPCDECFCm    = ECFC    %      $   # @opcdecf Extended mnemonics for
                                  + CGIB instruction
OPCDECFDm    = ECFD    %      $   # @opcdecf Extended mnemonics for
                                  + CLGIB instruction
OPCDECFEm    = ECFE    %      $   # @opcdecf Extended mnemonics for
                                  + CIB instruction
OPCDECFFm    = ECFF    %      $   # @opcdecf Extended mnemonics for
                                  + CLIB instruction
OPCDEDxx     = ED      %      $   # Floating Point Extension set ED
OPCDEEfc     = EE      %      $   # Extended mnemonics for PLO
                                  + instruction
OPSYN        = --      %      $   # OPcode SYNonym
OR           = 16      %      $   # Or Register
ORG          = --      %      $   # ORiGin
ORK          = B9F6    %      $   # Or Register Keeping source data
OSR          = ????    %      $ T # Or Special Register
OY           = E356    %      $ P # Or Yonder
PACK         = F2      %      $   # PACK
PALB         = B248    %      $   # Purge Art Lookaside Buffer
PC           = B218    %      $   # Program Call
PCC          = B92C    %      $   # Perform Cryptographic Computation
PCC.LAES128  = B92C.12 %      $   # PCC - compute Last block cmac
                                  + using AES-128
PCC.LAES192  = B92C.13 %      $   # PCC - compute Last block cmac
                                  + using AES-192
PCC.LAES256  = B92C.14 %      $   # PCC - compute Last block cmac
                                  + using AES-256
PCC.LDEA     = B92C.01 %      $   # PCC - compute Last block cmac
                                  + using DEA
PCC.LEAES128 = B92C.1A %      $   # PCC - compute Last block cmac
                                  + using Encrypted AES-128
PCC.LEAES192 = B92C.1B %      $   # PCC - compute Last block cmac
                                  + using Encrypted AES-192
PCC.LEAES256 = B92C.1C %      $   # PCC - compute Last block cmac
                                  + using Encrypted AES-256
PCC.LEDEA    = B92C.09 %      $   # PCC - compute Last block cmac
                                  + using Encrypted DEA
PCC.LETDEA128= B92C.0A %      $   # PCC - compute Last block cmac
                                  + using Encrypted Triple DEA-128
PCC.LETDEA192= B92C.0B %      $   # PCC - compute Last block cmac
                                  + using Encrypted Triple DEA-192
PCC.LTDEA128 = B92C.02 %      $   # PCC - compute Last block cmac
                                  + using Triple DEA-128
PCC.LTDEA192 = B92C.03 %      $   # PCC - compute Last block cmac
                                  + using Triple DEA-192
PCC.QAI      = B92C.7F %      $   # PCC - Query Authentication
                                  + Information
PCC.QUERY    = B92C.00 %      $   # PCC - QUERY
PCC.SME25519 = B92C.48 %      $   # PCC - Scalar Multiply Ed25519
PCC.SME448   = B92C.49 %      $   # PCC - Scalar Multiply Ed448
PCC.SMP256   = B92C.40 %      $   # PCC - Scalar Multiply P256
PCC.SMP384   = B92C.41 %      $   # PCC - Scalar Multiply P384
PCC.SMP521   = B92C.42 %      $   # PCC - Scalar Multiply P521
PCC.SMX25519 = B92C.50 %      $   # PCC - Scalar Multiply X25519
PCC.SMX448   = B92C.51 %      $   # PCC - Scalar Multiply X448
PCC.XAES128  = B92C.32 %      $   # PCC - compute Xts parameter
                                  + using AES-128
PCC.XAES256  = B92C.34 %      $   # PCC - compute Xts parameter
                                  + using AES-256
PCC.XEAES128 = B92C.3A %      $   # PCC - compute Xts parameter
                                  + using Encrypted AES-128
PCC.XEAES256 = B92C.3C %      $   # PCC - compute Xts parameter
                                  + using Encrypted AES-256
PCF          =-B218    %      $   # Program Call Fast
PCKMO           = B928    %      $   # Perform Cryptographic Key
                                     + Management Operation
PCKMO.EAESX128  = B928.15 %      $   # PCKMO - Encrypt AES Xts 128
                                     + double key
PCKMO.EAESX256  = B928.16 %      $   # PCKMO - Encrypt AES Xts 256
                                     + double key
PCKMO.EAES128   = B928.12 %      $   # PCKMO - Encrypt AES-128 key
PCKMO.EAES192   = B928.13 %      $   # PCKMO - Encrypt AES-192 key
PCKMO.EAES256   = B928.14 %      $   # PCKMO - Encrypt AES-256 key
PCKMO.EDEA      = B928.01 %      $   # PCKMO - Encrypt DEA key
PCKMO.EECC25519 = B928.28 %      $   # PCKMO - Encrypt ECC-ed25519 key
PCKMO.EECC256   = B928.20 %      $   # PCKMO - Encrypt ECC-p256 key
PCKMO.EECC384   = B928.21 %      $   # PCKMO - Encrypt ECC-p384 key
PCKMO.EECC448   = B928.29 %      $   # PCKMO - Encrypr ECC-ed448 key
PCKMO.EECC521   = B928.22 %      $   # PCKMO - Encrypt ECC-p521 key
PCKMO.EHMAC1024 = B928.7A %      $   # PCKMO - Encrypt HMAC 1024-bit
                                     + key
PCKMO.EHMAC512  = B928.76 %      $   # PCKMO - Encrypt HMAC 512-bit key
PCKMO.ETDEA128  = B928.02 %      $   # PCKMO - Encrypt TDEA-128 key
PCKMO.ETDEA192  = B928.03 %      $   # PCKMO - Encrypt TDEA-192 key
PCKMO.QAI       = B928.7F %      $   # PCKMO - Query Authentication
                                     + Information
PCKMO.QUERY     = B928.00 %      $   # PCKMO - QUERY
PFD          = E336       %      $ P # PreFetch Data
PFDRL        = C62        %      $ A # PreFetch Data Relative Long
PFMF         = B9AF    %      $   # Perform Frame Management Function
PFPO         = 010A    %      $ Z # Perform Floating Point Operation
PFPO.CFPR    = 010A.01 %      $   # PFPO - Convert Floating-Point Radix
PGIN         = B22E    %      $   # PaGe IN
PGOUT        = B22F    %      $   # PaGe OUT
PKA          = E9      %      $   # PacK Ascii
PKU          = E1      %      $   # PacK Unicode
PLO          = EE      %      $ Z # Perform Locked Operation
PLO.CL       = EE.00   %      $   # PLO - Compare and Load
PLO.CLG      = EE.01   %      $   # PLO - Compare and Load Grande
PLO.CLGR     = EE.02   %      $   # PLO - Compare and Load Grande
                                  + Register
PLO.CLX      = EE.03   %      $   # PLO - Compare and Load eXtended
PLO.CS       = EE.04   %      $   # PLO - Compare and Swap
PLO.CSDST    = EE.10   %      $   # PLO - Compare and Swap and Double
                                  + STore
PLO.CSDSTG   = EE.11   %      $   # PLO - Compare and Swap and Double
                                  + STore Grande
PLO.CSDSTGR  = EE.12   %      $   # PLO - Compare and Swap and Double
                                  + STore Grande Register
PLO.CSDSTX   = EE.13   %      $   # PLO - Compare and Swap and Double
                                  + STore eXtended
PLO.CSG      = EE.05   %      $   # PLO - Compare and Swap Grande
PLO.CSGR     = EE.06   %      $   # PLO - Compare and Swap Grande
                                  + Register
PLO.CSST     = EE.0C   %      $   # PLO - Compare and Swap and STore
PLO.CSSTG    = EE.0D   %      $   # PLO - Compare and Swap and STore
                                  + Grande
PLO.CSSTGR   = EE.0E   %      $   # PLO - Compare and Swap and STore
                                  + Grande Register
PLO.CSSTX    = EE.0F   %      $   # PLO - Compare and Swap and STore
                                  + eXtended
PLO.CSTST    = EE.14   %      $   # PLO - Compare and Swap and Triple
                                  + STore
PLO.CSTSTG   = EE.15   %      $   # PLO - Compare and Swap and Triple
                                  + STore Grande
PLO.CSTSTGR  = EE.16   %      $   # PLO - Compare and Swap and Triple
                                  + STore Grande Register
PLO.CSTSTX   = EE.17   %      $   # PLO - Compare and Swap and Triple
                                  + STore eXtended
PLO.CSX      = EE.07   %      $   # PLO - Compare and Swap eXtended
PLO.DCS      = EE.08   %      $   # PLO - Double Compare and Swap
PLO.DCSG     = EE.09   %      $   # PLO - Double Compare and Swap
                                  + Grande
PLO.DCSGR    = EE.0A   %      $   # PLO - Double Compare and Swap
                                  + Grande Register
PLO.DCSX     = EE.0B   %      $   # PLO - Double Compare and Swap
                                  + eXtended
POP          = --      %      $   # POP stacked status
POPCNT       = B9E1    %      $   # POPulation CouNT
POWD         =-B286    %      $   # raise to POWer for Double hfp
POWE         =-B287    %      $   # raise to POWer for Exponential hfp
PPA          = B2E8    %      $   # Perform Processor Assist
PPA.IOXA     = B2E8.0F %      $   # PPA - In-Order eXecution Assist
PPA.TAA      = B2E8.01 %      $   # PPA - Transaction-Abort Assist
PPNO         = B93C    %      $   # Perform Pseudorandom Number
                                  + Operation
PPNO.DRNG    = B93C.03 %      $   # PPNO - Deterministic Random-Number
                                  + Generation
PPNO.QAI     = B93C.7F %      $   # PPNO - Query Authentication
                                  + Information
PPNO.QUERY   = B93C.00 %      $   # PPNO - QUERY
PPNO.TRNG    = B93C.72 %      $   # PPNO - True Random-Number
                                  + Generation
PPNO.TRNGQRY = B93C.70 %      $   # PPNO - True Random-Number
                                  + Generation QueRY
PQAP         = B2AF    %      $   # Process Queue Adjunct Processor
PR           = 0101    %      $   # Program Return
PRINT        = --      %      $   # PRINT settings
PRNO         = B93C    %      $   # Perform Random Number Operation
PRNO.DRNG    = B93C.03 %      $   # PRNO - Deterministic Random-Number
                                  + Generation
PRNO.QAI     = B93C.7F %      $   # PRNO - Query Authentication
                                  + Information
PRNO.QUERY   = B93C.00 %      $   # PRNO - QUERY
PRNO.TRNG    = B93C.72 %      $   # PRNO - True Random-Number
                                  + Generation
PRNO.TRNGQRY = B93C.70 %      $   # PRNO - True Random-Number
                                  + Generation QueRY
PROCESS      = --      %      $   # PROCESSing options
PT           = B228    %      $   # Program Transfer
PTF          = B9A2    %      $   # Perform Topology Function
PTF.CHKTCHGS = B9A2.02 %      $   # PTF - CHecK Topology CHanGe Status
PTF.REQHP    = B9A2.00 %      $   # PTF - REQuest Horizontal
                                  + Polarization
PTF.REQVP    = B9A2.01 %      $   # PTF - REQuest Vertical
                                  + Polarization
PTFF         = 0104    %      $ Z # Perform Timing Facility Function
PTFF.ATO     =-0104.40 %      $   # PTFF - Adjust Time-of-day Offset
PTFF.QAF     = 0104.00 %      $   # PTFF - Query Available Functions
PTFF.QPT     = 0104.03 %      $   # PTFF - Query Physical clock-Time
PTFF.QSI     = 0104.02 %      $   # PTFF - Query Steering Information
PTFF.QSIE    = 0104.0A %      $   # PTFF - Query Steering Information
                                  + Extended
PTFF.QTO     = 0104.01 %      $   # PTFF - Query Time-of-day Offset
PTFF.QTOU    = 0104.05 %      $   # PTFF - Query Time-of-day Offset
                                  + User
PTFF.QTOUE   = 0104.0D %      $   # PTFF - Query Time-of-day Offset
                                  + User Extended
PTFF.QTSE    = 0104.06 %      $   # PTFF - Query TimeStamp Event
PTFF.QUI     = 0104.04 %      $   # PTFF - Query Utc Information
PTFF.SFS     =-0104.42 %      $   # PTFF - Set Fine-Steering rate
PTFF.SGS     =-0104.43 %      $   # PTFF - Set Gross-Steering rate
PTFF.STO     = 0104.41 %      $   # PTFF - Set Time-of-day Offset
PTFF.STOE    = 0104.49 %      $   # PTFF - Set Time-of-day Offset
                                  + Extended
PTFF.STOU    = 0104.45 %      $   # PTFF - Set Time-of-day Offset User
PTFF.STOUE   = 0104.4D %      $   # PTFF - Set Time-of-day Offset User
                                  + Extended
PTI          = B99E    %      $   # Program Transfer with Instance
PTLB         = B20D    %      $   # Purge Translation Lookaside Buffer
PUNCH        = --      %      $   # PUNCH object record
PUSH         = --      %      $   # PUSH status onto stack
PXLO         = ????    %      $ T # Perform trans(X)Lator Operation
PXLO.IPTE    = ????.?? %      $ T # PXLO - Invalidate Page Table Entry
PXLO.LAA     = ????.?? %      $ T # PXLO - Load Absolute Address
PXLO.LASCE   = ????.?? %      $ T # PXLO - Load Address Space Control
                                  + Element
PXLO.LHPTE   = ????.?? %      $ T # PXLO - Load Host Page Table Entry
PXLO.LHRA    = ????.?? %      $ T # PXLO - Load Host Real Address
PXLO.LPTE    = ????.?? %      $ T # PXLO - Load Page Table Entry
PXLO.LRA     = ????.?? %      $ T # PXLO - Load Real Address
PXLO.PDC     = ????.?? %      $ T # PXLO - Purge Data Cache
PXLO.PIC     = ????.?? %      $ T # PXLO - Purge Instruction Cache
PXLO.PTLB    = ????.?? %      $ T # PXLO - Purge TLB
PXLO.RTLB    = ????.?? %      $ T # PXLO - Read TLB
PXLO.WTLB    = ????.?? %      $ T # PXLO - Write TLB
QADTR        = B3F5    %      $   # QuAntize Double Tfp Register
QAXTR        = B3FD    %      $   # QuAntize eXtended Tfp Register
QCTRI        = B28E    %      $ X # Query CounTeR Information
QPACI        = B28F    %      $   # Query Processor Activity Counter
                                  + Information
QSI          = B286    %      $ X # Query Sampling Information
RACD         =-B2D6    %      $   # Round from ACcumulator to Double
                                  + hfp
RACE         =-B2D7    %      $   # Round from ACcumulator to
                                  + Exponential hfp
RBD          = B2C9    %      $ T # Replicate Byte Double
RCHP         = B23B    %      $   # Reset CHannel Path
RCR          = A34     %      $ T # Read Control Register
RDD          =-85      %      $   # ReaD Direct
RDP          = B98B    %      $   # Reset Dat Protection
REPRO        = --      %      $   # REPROduce as object record
RFLG         =-B29D    %      $ T # Reset FLaGs
RIO          =-9C02    %      $   # Resume I/O
RIRPT        = ????    %      $ T # Reset InterRuPTion
RISBG        = EC55    %      $ P # Rotate then Insert Selected Bits
                                  + Grande
RISBGN       = EC59    %      $ P # Rotate then Insert Selected Bits
                                  + Grande No cc change
RISBGNZ      = EC59    % [--.|80.--] $ P # Rotate then Insert Selected
                                         + Bits Grande No cc change
                                         + with Zeroing
RISBGZ       = EC55    % [--.|80.--] $ P # Rotate then Insert Selected
                                         + Bits Grande with Zeroing
RISBHG       = EC5D    %             $   # Rotate then Insert Selected
                                         + Bits High from Grande
RISBHGZ      = EC5D    % [--.|80.--] $   # Rotate then Insert Selected
                                         + Bits High from Grande with
                                         + Zeroing
RISBLG       = EC51    %             $   # Rotate then Insert Selected
                                         + Bits Low from Grande
RISBLGZ      = EC51    % [--.|80.--] $   # Rotate then Insert Selected
                                         + Bits Low from Grande with
                                         +  Zeroing
RLL          = EB1D    %      $ P # Rotate Left single Logical
RLLG         = EB1C    %      $ P # Rotate Left single Logical Grande
RMODE        = --      %      $   # Residence MODE
RNSBG        = EC54    %      $ P # Rotate then aNd Selected Bits
                                  + Grande
RNSBGT       = EC54    % [|80.--.--] $ P # Rotate then aNd Selected
                                         + Bits Grande for Test only
ROSBG        = EC56    %             $ P # Rotate then Or Selected Bits
                                         + Grande
ROSBGT       = EC56    % [|80.--.--] $ P # Rotate then Or Selected Bits
                                         + Grande for Test only
RP           = B277    %      $   # Resume Program
RRB          =-B213    %      $   # Reset Reference Bit
RRBE         = B22A    %      $   # Reset Reference Bit Extended
RRBM         = B9AE    %      $   # Reset Reference Bits Multiple
RRDTR        = B3F7    %      $   # ReRound Double Tfp Register
RRXTR        = B3FF    %      $   # ReRound eXtended Tfp Register
RSCH         = B238    %      $   # Resume SubCHannel
RSECT        = --      %      $   # Reenterable SECTion
RSP          =-D8      %      $   # Retrieve Status and Page
RSR          = A31     %      $ T # Read Special Register
RXSBG        = EC57    %      $ P # Rotate then eXclusive or Selected
                                  + Bits Grande
RXSBGT       = EC57    % [|80.--.--] $ P # Rotate then eXclusive or
                                         + Selected Bits Grande for
                                         + Test only
S            = 5B      %      $   # Subtract
SAC          = B219    %      $   # Set Address space Control
SACAC        =-B2D9    %      $   # Subtract ACcumulator from
                                  + ACcumulator
SACDR        =-B2D2    %      $   # Subtract from ACcumulator Double
                                  + hfp Register
SACER        =-B2D3    %      $   # Subtract from ACcumulator
                                  + Exponential hfp Register
SACF         = B279    %      $   # Set Address space Control Fast
SAL          = B237    %      $   # Set Address Limit
SAM24        = 010C    %      $   # Set Addressing Mode 24
SAM31        = 010D    %      $   # Set Addressing Mode 31
SAM64        = 010E    %      $   # Set Addressing Mode 64
SAR          = B24E    %      $   # Set Access Register
SCCTL        =-B284    %      $ X # Set Cpu-counter-set ConTroLs
SCCTR        = B2E0    %      $ X # Set Cpu CounTeR
SCHM         = B23C    %      $   # Set CHannel Monitor
SCK          = B204    %      $   # Set ClocK
SCKC         = B206    %      $   # Set ClocK Comparator
SCKPF        = 0107    %      $   # Set ClocK Programmable Field
SD           = 6B      %      $   # Subtract Double hfp
SDB          = ED1B    %      $ P # Subtract Double Bfp
SDBR         = B31B    %      $   # Subtract Double Bfp Register
SDR          = 2B      %      $   # Subtract Double hfp Register
SDRN         =-B2C2    %      $   # Subtract Double hfp with RouNding
SDTR         = B3D3    %      $   # Subtract Double Tfp Register
SDTRA        = B3D3    %      $   # Subtract Double Tfp Register
                                  + Alternative
SE           = 7B      %      $   # Subtract Exponential hfp
SEB          = ED0B    %      $ P # Subtract Exponential Bfp
SEBR         = B30B    %      $   # Subtract Exponential Bfp Register
SELFHR       = B9C0    %      $   # SELect Fullword High Register
SELFHRE      = B9C0    % 1000 $ 8 # SELect Fullword High Register on
                                  + Equal
SELFHRH      = B9C0    % 0010 $ 8 # SELect Fullword High Register on
                                  + High
SELFHRL      = B9C0    % 0100 $ 8 # SELect Fullword High Register on
                                  + Low
SELFHRM      = B9C0    % 0100 $ 8 # SELect Fullword High Register on
                                  + Mixed / Minus
SELFHRNE     = B9C0    % 0111 $ 8 # SELect Fullword High Register on
                                  + Not Equal
SELFHRNH     = B9C0    % 1101 $ 8 # SELect Fullword High Register on
                                  + Not High
SELFHRNL     = B9C0    % 1011 $ 8 # SELect Fullword High Register on
                                  + Not Low
SELFHRNM     = B9C0    % 1011 $ 8 # SELect Fullword High Register on
                                  + Not Mixed / Minus
SELFHRNO     = B9C0    % 1110 $ 8 # SELect Fullword High Register on
                                  + Not Ones / Overflow
SELFHRNP     = B9C0    % 1101 $ 8 # SELect Fullword High Register on
                                  + Not Plus
SELFHRNZ     = B9C0    % 0111 $ 8 # SELect Fullword High Register on
                                  + Not Zero
SELFHRO      = B9C0    % 0001 $ 8 # SELect Fullword High Register on
                                  + Ones / Overflow
SELFHRP      = B9C0    % 0010 $ 8 # SELect Fullword High Register on
                                  + Plus
SELFHRZ      = B9C0    % 1000 $ 8 # SELect Fullword High Register on
                                  + Zero
SELGR        = B9E3    %      $   # SELect Grande Register
SELGRE       = B9E3    % 1000 $ 8 # SELect Grande Register on Equal
SELGRH       = B9E3    % 0010 $ 8 # SELect Grande Register on High
SELGRL       = B9E3    % 0100 $ 8 # SELect Grande Register on Low
SELGRM       = B9E3    % 0100 $ 8 # SELect Grande Register on Mixed /
                                  + Minus
SELGRNE      = B9E3    % 0111 $ 8 # SELect Grande Register on Not Equal
SELGRNH      = B9E3    % 1101 $ 8 # SELect Grande Register on Not High
SELGRNL      = B9E3    % 1011 $ 8 # SELect Grande Register on Not Low
SELGRNM      = B9E3    % 1011 $ 8 # SELect Grande Register on Not Mixed
                                  + / Minus
SELGRNO      = B9E3    % 1110 $ 8 # SELect Grande Register on Not Ones
                                  + / Overflow
SELGRNP      = B9E3    % 1101 $ 8 # SELect Grande Register on Not Plus
SELGRNZ      = B9E3    % 0111 $ 8 # SELect Grande Register on Not Zero
SELGRO       = B9E3    % 0001 $ 8 # SELect Grande Register on Ones /
                                  + Overflow
SELGRP       = B9E3    % 0010 $ 8 # SELect Grande Register on Plus
SELGRZ       = B9E3    % 1000 $ 8 # SELect Grande Register on Zero
SELR         = B9F0    %      $   # SELect Register
SELRE        = B9F0    % 1000 $ 8 # SELect Register on Equal
SELRH        = B9F0    % 0010 $ 8 # SELect Register on High
SELRL        = B9F0    % 0100 $ 8 # SELect Register on Low
SELRM        = B9F0    % 0100 $ 8 # SELect Register on Mixed / Minus
SELRNE       = B9F0    % 0111 $ 8 # SELect Register on Not Equal
SELRNH       = B9F0    % 1101 $ 8 # SELect Register on Not High
SELRNL       = B9F0    % 1011 $ 8 # SELect Register on Not Low
SELRNM       = B9F0    % 1011 $ 8 # SELect Register on Not Mixed /
                                  + Minus
SELRNO       = B9F0    % 1110 $ 8 # SELect Register on Not Ones /
                                  + Overflow
SELRNP       = B9F0    % 1101 $ 8 # SELect Register on Not Plus
SELRNZ       = B9F0    % 0111 $ 8 # SELect Register on Not Zero
SELRO        = B9F0    % 0001 $ 8 # SELect Register on Ones /
                                  + Overflow
SELRP        = B9F0    % 0010 $ 8 # SELect Register on Plus
SELRZ        = B9F0    % 1000 $ 8 # SELect Register on Zero
SER          = 3B      %      $   # Subtract Exponential hfp Register
SERN         =-B2C3    %      $   # Subtract Exponential hfp with
                                  + RouNding
SERVC        =-B220    %      $   # SERVice processor Call
SETA         = &&      %      $   # SET Arithmetic variable
SETAF        = &&      %      $   # SET Arithmetic variable by external
                                  + Function
SETB         = &&      %      $   # SET Boolean variable
SETC         = &&      %      $   # SET Character variable
SETCF        = &&      %      $   # SET Character variable by external
                                  + Function
SETR         =-B216    %      $   # Set External Timer Reference
                                  + attachment controls
SFASR        = B385    %      $   # Set Floating point control register
                                  + And Signal (Register)
SFLG         =-B29C    %      $ T # Set FLaGs
SFPC         = B384    %      $   # Set Floating Point Control register
SG           = E309    %      $ P # Subtract Grande
SGF          = E319    %      $ P # Subtract from Grande a Fullword
SGFR         = B919    %      $   # Subtract from Grande a Fullword
                                  + Register
SGH          = E339    %      $ P # Subtract from Grande a Halfword
SGR          = B909    %      $   # Subtract Grande Register
SGRK         = B9E9    %      $   # Subtract Grande Register
                                  + Keeping source data
SH           = 4B      %      $   # Subtract Halfword
SHHHR        = B9C9    %      $   # Subtract High from High and High
                                  + Registers
SHHLR        = B9D9    %      $   # Subtract High from High and Low
                                  + Registers
SHY          = E37B    %      $ P # Subtract Halfword Yonder
SIE          =-B214    %      $   # Start Interpretive Execution
SIGA         =-B274    %      $ M # SIGnal Adapter
SIGP         = AE      %      $   # SIGnal Processor
SIGP.CES     = AE.13   %      $   # SIGP - Conditional Emergency
                                  + Signal
SIGP.CR      = AE.0C   %      $   # SIGP - Cpu Reset
SIGP.EC      = AE.02   %      $   # SIGP - External Call
SIGP.ES      = AE.03   %      $   # SIGP - Emergency Signal
SIGP.ICR     = AE.0B   %      $   # SIGP - Initial Cpu Reset
SIGP.RSTRT   = AE.06   %      $   # SIGP - ReSTaRT
SIGP.SA      = AE.12   %      $   # SIGP - Set Architecture
SIGP.SASTS   = AE.09   %      $   # SIGP - Stop And STore Status
SIGP.SENS    = AE.01   %      $   # SIGP - SENSe
SIGP.SENSRS  = AE.15   %      $   # SIGP - SENSe Running Status
SIGP.SMT     = AE.16   %      $   # SIGP - Set MultiThreading
SIGP.SPFX    = AE.0D   %      $   # SIGP - Set PreFiX
SIGP.STASA   = AE.17   %      $   # SIGP - STore Additional Status at
                                  + Address
SIGP.STESA   = AE.11   %      $   # SIGP - STore Extended Status at
                                  + Address
SIGP.STOP    = AE.05   %      $   # SIGP - STOP
SIGP.STRT    = AE.04   %      $   # SIGP - STaRT
SIGP.STSA    = AE.0E   %      $   # SIGP - STore Status at Address
SIND         =-B288    %      $   # SINe of Double hfp
SINE         =-B289    %      $   # SINe of Exponential hfp
SIO          =-9C00    %      $ E # Start I/O
SIO          =-9C      %      $   # Start I/O
SIOF         =-9C01    %      $   # Start I/O Fast release
SL           = 5F      %      $   # Subtract Logical
SLA          = 8B      %      $   # Shift Left single Arithmetic
SLAG         = EB0B    %      $ P # Shift Left single Arithmetic Grande
SLAK         = EBDD    %      $   # Shift Left single Arithmetic
                                  + Keeping source data
SLB          = E399    %      $ P # Subtract Logical with Borrow
SLBG         = E389    %      $ P # Subtract Logical with Borrow Grande
SLBGR        = B989    %      $   # Subtract Logical with Borrow Grande
                                  + Register
SLBR         = B999    %      $   # Subtract Logical with Borrow
                                  + Register
SLDA         = 8F      %      $   # Shift Left Double Arithmetic
SLDL         = 8D      %      $   # Shift Left Double Logical
SLDT         = ED40    %      $ P # Shift significand Left Double Tfp
SLFI         = C25     %      $ A # Subtract Logical Fullword Immediate
SLG          = E30B    %      $ P # Subtract Logical Grande
SLGF         = E31B    %      $ P # Subtract Logical from Grande a
                                  + Fullword
SLGFI        = C24     %      $ A # Subtract Logical from Grande a
                                  + Fullword Immediate
SLGFR        = B91B    %      $   # Subtract Logical from Grande a
                                  + Fullword Register
SLGR         = B90B    %      $   # Subtract Logical Grande Register
SLGRK        = B9EB    %      $   # Subtract Logical Grande Register
                                  + Keeping source data
SLHHHR       = B9CB    %      $   # Subtract Logical High from High and
                                  + High Registers
SLHHLR       = B9DB    %      $   # Subtract Logical High from High and
                                  + Low Registers
SLL          = 89      %      $   # Shift Left single Logical
SLLG         = EB0D    %      $ P # Shift Left single Logical Grande
SLLHH        = EC5D    % [00.1F-.--]  $ P # Shift Left Logical High
                                          + from High
SLLHL        = EC5D    % [00.1F-.20+] $ P # Shift Left Logical High
                                          + from Low
SLLK         = EBDF    %      $   # Shift Left single Logical
                                  + Keeping source data
SLLLH        = EC51    % [00.9F-.20+] $ P # Shift Left Logical Low from
                                          + High
SLR          = 1F      %      $   # Subtract Logical Register
SLRK         = B9FB    %      $   # Subtract Logical Register
                                  + Keeping source data
SLXT         = ED48    %      $ P # Shift significand Left eXtended Tfp
SLY          = E35F    %      $ P # Subtract Logical Yonder
SORTL        = B938    %      $ Z # SORT Lists
SORTL.QAF    = B938.00 %      $   # SORTL - Query Available Functions
SORTL.SFLR   = B938.01 %      $   # SORTL - Sort Fixed-Length Records
SORTL.SVLR   = B938.02 %      $   # SORTL - Sort Variable-Length
                                  + Records
SP           = FB      %      $   # Subtract Packed decimal
SPACE        = --      %      $   # SPACE listing
SPB          =-B5      %      $   # Set Page Bits
SPCS         =-B270    %      $   # Set Primary Clock Selection
SPCTL        =-B285    %      $ X # Set Peripheral-counter-set ConTroLs
SPCTR        = B2E1    %      $ X # Set Peripheral CounTeR
SPGRI        = ????    %      $ T # Set Program General Register
                                  + Indirect
SPKA         = B20A    %      $   # Set Psw Key from Address
SPM          = 04      %      $   # Set Program Mask
SPP          =-B280    %      $ X # Set Program Parameter
SPSW         =-81      %      $ 5 # Set Program Status Word
SPT          = B208    %      $   # Set Processor Timer
SPX          = B210    %      $   # Set PrefiX register
SQBS         = EB8A    %      $   # Set Qdio Buffer State
SQD          = ED35    %      $ P # SQuare root of Double hfp
SQDB         = ED15    %      $ P # SQuare root of Double Bfp
SQDBR        = B315    %      $   # SQuare root of Double Bfp Register
SQDR         = B244    %      $   # SQuare root of Double hfp Register
SQE          = ED34    %      $ P # SQuare root of Exponential hfp
SQEB         = ED14    %      $ P # SQuare root of Exponential Bfp
SQEBR        = B314    %      $   # SQuare root of Exponential Bfp
                                  + Register
SQER         = B245    %      $   # SQuare root of Exponential hfp
                                  + Register
SQXBR        = B316    %      $   # SQuare root of eXtended Bfp
                                  + Register
SQXR         = B336    %      $   # SQuare root of eXtended hfp
                                  + Register
SR           = 1B      %      $   # Subtract Register
SRA          = 8A      %      $   # Shift Right single Arithmetic
SRAG         = EB0A    %      $ P # Shift Right single Arithmetic
                                  + Grande
SRAK         = EBDC    %      $   # Shift Right single Arithmetic
                                  + Keeping source data
SRDA         = 8E      %      $   # Shift Right Double Arithmetic
SRDL         = 8C      %      $   # Shift Right Double Logical
SRDT         = ED41    %      $ P # Shift significand Right Double Tfp
SRK          = B9F9    %      $   # Subtract Register
                                  + Keeping source data
SRL          = 88      %      $   # Shift Right single Logical
SRLG         = EB0C    %      $ P # Shift Right single Logical Grande
SRLHH        = EC5D    % [--.1F.00-] $ P # Shift Right Logical High
                                         + from High
SRLHL        = EC5D    % [--.1F.20-] $ P # Shift Right Logical High
                                         + from Low
SRLK         = EBDE    %      $   # Shift Right single Logical
                                  + Keeping source data
SRLLH        = EC51    % [--.9F.20-] $ P # Shift Right Logical Low from
                                         + High
SRNM         = B299    %      $   # Set RouNding Mode bfp
SRNMB        = B2B8    %      $   # Set RouNding Mode Bfp
SRNMT        = B2B9    %      $   # Set RouNding Mode Tfp
SRP          = F0      %      $   # Shift and Round Packed decimal
SRST         = B25E    %      $   # SeaRch STring
SRSTU        = B9BE    %      $   # SeaRch STring Unicode
SRXT         = ED49    %      $ P # Shift significand Right eXtended
                                  + Tfp
SSAIR        = B99F    %      $   # Set Secondary Asn with Instance
                                  + from Register
SSAR         = B225    %      $   # Set Secondary Asn from Register
SSCH         = B233    %      $   # Start SubCHannel
SSCTL        =-B287    %      $ X # Set Sampling ConTroLs
SSK          =-08      %      $   # Set Storage Key
SSKE         = B22B    %      $   # Set Storage Key Extended
SSM          = 80      %      $ D # Set System Mask
SSYN         =-B216    %      $ H # Set tod clock SYNchronization
                                  + selection register
ST           = 50      %      $   # STore
STAM         = 9B      %      $   # STore Access Multiple
STAMY        = EB9B    %      $ P # STore Access Multiple Yonder
STAP         = B212    %      $   # STore Address of Processor
START        = --      %      $   # START assembly
STBEAR       = B201    %      $   # STore Breaking-Event-Address
                                  + Register
STC          = 42      %      $   # STore Character
STCAP        =-B21F    %      $   # STore CAPacity counts
STCCTM       = EB17    %      $ X # STore Cpu CounTer Multiple
STCH         = E3C3    %      $   # STore Character High
STCK         = B205    %      $   # STore ClocK
STCKC        = B207    %      $   # STore ClocK Comparator
STCKE        = B278    %      $   # STore ClocK Extended
STCKF        = B27C    %      $   # STore ClocK Fast
STCM         = BE      %      $   # STore Characters under Mask
STCMH        = EB2C    %      $ P # STore Characters under Mask High
STCMY        = EB2D    %      $ P # STore Characters under Mask Yonder
STCPS        = B23A    %      $   # STore Channel Path Status
STCRW        = B239    %      $   # STore Channel Report Word
STCTG        = EB25    %      $ P # STore ConTrol Grande
STCTL        = B6      %      $   # STore ConTroL
STCY         = E372    %      $ P # STore Character Yonder
STD          = 60      %      $   # STore Double hfp
STDRV        = E60A    % 0000 $ P # STore Double hfp byte ReVersed
STDY         = ED67    %      $ P # STore Double hfp Yonder
STE          = 70      %      $   # STore Exponential hfp
STEAI        = B2B3    %      $   # STore External timer reference
                                  + Attachment Information
STERV        = E60B    % 0000 $ P # STore Exponential hfp byte ReVersed
STETR        =-B217    %      $   # STore External Timer Reference
                                  + attachment controls
STEY         = ED66    %      $ P # STore Exponential hfp Yonder
STFH         = E3CB    %      $   # STore Fullword High
STFL         = B2B1    %      $   # STore Facility List
STFLE        = B2B0    %      $   # STore Facility List Extended
STFPC        = B29C    %      $   # STore Floating Point Control
                                  + register
STG          = E324    %      $ P # STore Grande
STGOC        =-EBE3    %      $   # STore Grande On Condition
STGOCE       =-EBE3    % 1000 $   # STore Grande On Condition Equal
STGOCH       =-EBE3    % 0010 $   # STore Grande On Condition High
STGOCL       =-EBE3    % 0100 $   # STore Grande On Condition Low
STGOCNE      =-EBE3    % 0110 $   # STore Grande On Condition Not Equal
STGOCNH      =-EBE3    % 1100 $   # STore Grande On Condition Not High
STGOCNL      =-EBE3    % 1010 $   # STore Grande On Condition Not Low
STGRL        = C4B     %      $ A # STore Grande Relative Long
STGSC        = E349    %      $ P # STore Guarded Storage Controls
STH          = 40      %      $   # STore Halfword
STHH         = E3C7    %      $   # STore Halfword High
STHRL        = C47     %      $ A # STore Halfword Relative Long
STHY         = E370    %      $ P # STore Halfword Yonder
STIDC        =-B203    %      $   # STore ID of Channel
STIDP        = B202    %      $   # STore cpu ID of Processor
STM          = 90      %      $   # STore Multiple
STMC         =-B0      %      $   # STore Multiple Control
STMG         = EB24    %      $ P # STore Multiple Grande
STMH         = EB26    %      $ P # STore Multiple High
STMY         = EB90    %      $ P # STore Multiple Yonder
STNSM        = AC      %      $   # STore then aNd System Mask
STOC         = EBF3    %      $ P # STore On Condition
STOCE        = EBF3    % 1000 $ U # STore On Condition Equal
STOCFH       = EBE1    %      $ P # STore On Condition Fullword High
STOCFHE      = EBE1    % 1000 $ U # STore On Condition Fullword High if
                                  + Equal
STOCFHH      = EBE1    % 0010 $ U # STore On Condition Fullword High if
                                  + High
STOCFHL      = EBE1    % 0100 $ U # STore On Condition Fullword High if
                                  + Low
STOCFHM      = EBE1    % 0100 $ U # STore On Condition Fullword High if
                                  + Mixed / Minus
STOCFHNE     = EBE1    % 0111 $ U # STore On Condition Fullword High if
                                  + Not Equal
STOCFHNH     = EBE1    % 1101 $ U # STore On Condition Fullword High if
                                  + Not High
STOCFHNL     = EBE1    % 1011 $ U # STore On Condition Fullword High if
                                  + Not Low
STOCFHNM     = EBE1    % 1011 $ U # STore On Condition Fullword High if
                                  + Not Mixed / Minus
STOCFHNO     = EBE1    % 1110 $ U # STore On Condition Fullword High if
                                  + Not Ones / Overflow
STOCFHNP     = EBE1    % 1101 $ U # STore On Condition Fullword High if
                                  + Not Plus
STOCFHNZ     = EBE1    % 0111 $ U # STore On Condition Fullword High if
                                  + Not Zero
STOCFHO      = EBE1    % 0001 $ U # STore On Condition Fullword High if
                                  + Ones / Overflow
STOCFHP      = EBE1    % 0010 $ U # STore On Condition Fullword High if
                                  + Plus
STOCFHZ      = EBE1    % 1000 $ U # STore On Condition Fullword High if
                                  + Zero
STOCG        = EBE3    %      $ P # STore On Condition Grande
STOCGE       = EBE3    % 1000 $ U # STore On Condition Grande if Equal
STOCGH       = EBE3    % 0010 $ U # STore On Condition Grande if High
STOCGL       = EBE3    % 0100 $ U # STore On Condition Grande if Low
STOCGM       = EBE3    % 0100 $ U # STore On Condition Grande if Mixed
                                  + / Minus
STOCGNE      = EBE3    % 0111 $ U # STore On Condition Grande if Not
                                  + Equal
STOCGNH      = EBE3    % 1101 $ U # STore On Condition Grande if Not
                                  + High
STOCGNL      = EBE3    % 1011 $ U # STore On Condition Grande if Not
                                  + Low
STOCGNM      = EBE3    % 1011 $ U # STore On Condition Grande if Not
                                  + Mixed / Minus
STOCGNO      = EBE3    % 1110 $ U # STore On Condition Grande if Not
                                  + Ones / Overflow
STOCGNP      = EBE3    % 1101 $ U # STore On Condition Grande if Not
                                  + Plus
STOCGNZ      = EBE3    % 0111 $ U # STore On Condition Grande if Not
                                  + Zero
STOCGO       = EBE3    % 0001 $ U # STore On Condition Grande if Ones /
                                  + Overflow
STOCGP       = EBE3    % 0010 $ U # STore On Condition Grande if Plus
STOCGZ       = EBE3    % 1000 $ U # STore On Condition Grande if Zero
STOCH        = EBF3    % 0010 $ U # STore On Condition High
STOCL        = EBF3    % 0100 $ U # STore On Condition Low
STOCM        = EBF3    % 0100 $ U # STore On Condition Mixed / Minus
STOCNE       = EBF3    % 0111 $ U # STore On Condition Not Equal
STOCNH       = EBF3    % 1101 $ U # STore On Condition Not High
STOCNL       = EBF3    % 1011 $ U # STore On Condition Not Low
STOCNM       = EBF3    % 1011 $ U # STore On Condition Not Mixed /
                                  + Minus
STOCNO       = EBF3    % 1110 $ U # STore On Condition Not Ones /
                                  + Overflow
STOCNP       = EBF3    % 1101 $ U # STore On Condition Not Plus
STOCNZ       = EBF3    % 0111 $ U # STore On Condition Not Zero
STOCO        = EBF3    % 0001 $ U # STore On Condition Ones / Overflow
STOCP        = EBF3    % 0010 $ U # STore On Condition Plus
STOCZ        = EBF3    % 1000 $ U # STore On Condition Zero
STOSM        = AD      %      $   # STore then Or System Mask
STPCS        =-B271    %      $   # STore Primary Clock Selection
STPQ         = E38E    %      $ P # STore Pair to Quadword
STPT         = B209    %      $   # STore Processor Timer
STPX         = B211    %      $   # STore PrefiX register
STRAG        = E502    %      $   # STore Real Address Grande
STRL         = C4F     %      $ A # STore Relative Long
STRV         = E33E    %      $ P # STore ReVersed
STRVG        = E32F    %      $ P # STore ReVersed Grande
STRVH        = E33F    %      $ P # STore ReVersed Halfword
STSCH        = B234    %      $   # STore SubCHannel
STSI         = B27D    %      $   # STore System Information
STSYN        =-B217    %      $ H # STore tod clock SYNchronization
                                  + selection register
STURA        = B246    %      $   # STore Using Real Address
STURG        = B925    %      $   # STore Using Real address Grande
STY          = E350    %      $ P # STore Yonder
STZP         =-B23D    %      $ L # STore Zone Parameter
SU           = 7F      %      $   # Subtract Unnormalized hfp
SUR          = 3F      %      $   # Subtract Unnormalized hfp Register
SVC          = 0A      %      $   # SuperVisor Call
SVS          = B265    %      $ G # Set Vector Summary
SW           = 6F      %      $   # Subtract Wide unnormalized hfp
SWR          = 2F      %      $   # Subtract Wide unnormalized hfp
                                  + Register
SXBR         = B34B    %      $   # Subtract eXtended Bfp Register
SXR          = 37      %      $   # Subtract eXtended hfp Register
SXTR         = B3DB    %      $   # Subtract eXtended Tfp Register
SXTRA        = B3DB    %      $   # Subtract eXtended Tfp Register
                                  + Alternative
SY           = E35B    %      $ P # Subtract Yonder
SYSOP        = ????    %      $ T # SYStem OPeration
SYSOP.???    = ????    %      $ T # SYSOP - various subfunctions
SZP          =-B23E    %      $ L # Set Zone Parameter
TABORT       = B2FC    %      $ 4 # Transaction ABORT
TAM          = 010B    %      $   # Test Addressing Mode
TAR          = B24C    %      $   # Test Access Register
TB           = B22C    %      $   # Test Block
TBDR         = B351    %      $   # convert To Bfp Double from double
                                  + hfp Register
TBEDR        = B350    %      $   # convert To Bfp Exponential from
                                  + Double hfp Register
TBEGIN       = E560    %      $ 4 # Transaction BEGIN
TBEGINC      = E561    %      $ 4 # Transaction BEGIN Constrained
TCDB         = ED11    %      $ P # Test data Class for Double Bfp
TCEB         = ED10    %      $ P # Test data Class for Exponential Bfp
TCH          =-9F00    %      $ E # Test CHannel
TCH          =-9F      %      $   # Test CHannel
TCXB         = ED12    %      $ P # Test data Class for eXtended Bfp
TDCDT        = ED54    %      $ P # Test Data Class for Double Tfp
TDCET        = ED50    %      $ P # Test Data Class for Exponential Tfp
TDCXT        = ED58    %      $ P # Test Data Class for eXtended Tfp
TDGDT        = ED55    %      $ P # Test Data Group for Double Tfp
TDGET        = ED51    %      $ P # Test Data Group for Exponential Tfp
TDGXT        = ED59    %      $ P # Test Data Group for eXtended Tfp
TEND         = B2F8    %      $ 4 # Transaction END
THDER        = B358    %      $   # convert To Hfp Double from
                                  + Exponential bfp Register
THDR         = B359    %      $   # convert To Hfp Double from double
                                  + bfp Register
TIO          =-9D00    %      $ E # Test I/O
TIO          =-9D      %      $   # Test I/O
TIOB         =-9A      %      $ 5 # Test I/O and Branch
TITLE        = --      %      $   # TITLE definition
TM           = 91      %      $   # Test under Mask
TMBP         = ????    %      $ T # Test Millicode Branch Points
TMH          = A70     %      $ A # Test under Mask Higher halfword
TMHH         = A72     %      $ A # Test under Mask High-order word,
                                  + Higher halfword
TMHL         = A73     %      $ A # Test under Mask High-order word,
                                  + Lower halfword
TML          = A71     %      $ A # Test under Mask Lower halfword
TMLH         = A70     %      $ A # Test under Mask Low-order word,
                                  + Higher halfword
TMLL         = A71     %      $ A # Test under Mask Low-order word,
                                  + Lower halfword
TMPS         = 0108    %      $ G # Test Message Path State
TMSG         = 0106    %      $ F # Test MeSsaGe
TMY          = EB51    %      $ P # Test under Mask Yonder
TP           = EBC0    %      $ P # Test Packed decimal
TPEI         = B9A1    %      $   # Test Pending External Interruption
TPI          = B236    %      $   # Test Pending Interruption
TPROT        = E501    %      $   # Test PROTection
TPSW         = A3D     %      $ T # Test Program Status Word
TPZI         =-B23F    %      $ L # Test Pending Zone parameter
                                  + Interrupt
TR           = DC      %      $   # TRanslate
TRACE        = 99      %      $   # TRACE
TRACG        = EB0F    %      $ P # TRACe Grande
TRAP2        = 01FF    %      $   # TRAP 2-byte version
TRAP4        = B2FF    %      $   # TRAP 4-byte version
TRCD         =-81      %      $   # ???
TRE          = B2A5    %      $   # TRanslate Extended
TRFET        = A0      %      $ T # TRanslate FETch
TROO         = B993    %      $ Q # TRanslate One to One
TROT         = B992    %      $ Q # TRanslate One to Two
TRT          = DD      %      $   # TRanslate and Test
TRTE         = B9BF    %      $   # TRanslate and Test Extended
TRTO         = B991    %      $ Q # TRanslate Two to One
TRTR         = D0      %      $   # TRanslate and Test Reverse
TRTRE        = B9BD    %      $   # TRanslate and Test Reverse Extended
TRTT         = B990    %      $ Q # TRanslate Two to Two
TRTX         = B2E9    %      $ T # TRanslate and Test eXit
TS           = 93      %      $ D # Test and Set
TSCH         = B235    %      $   # Test SubCHannel
*
* Unknown instructions for Coupling Facility
UNKCF002     = ????    %      $ G # Test Vector Entry
UNKCF003     = ????    %      $ G # Set Vector Entry
UNKCF004     = ????    %      $ G # Test Vector Summary
UNKCF006     = ????    %      $ G # Send Message
UNKCF007     = ????    %      $ G # test message
UNKCF008     = ????    %      $ G # Prepare Channel Buffer
UNKCF009     = ????    %      $ G # Signal Channel buffer
UNKCF010     = ????    %      $ G # Test Channel Buffer
UNKCF011     = ????    %      $ G # Move Channel Buffer Data
UNKCF012     = ????    %      $ G # Locate Channel Buffer
UNKCF013     = ????    %      $ G # Transfer Structure
*
* Unknown instructions for MilliCode
UNKMC005     = ????    %      $ T # AND Logical Immediate
UNKMC006     = ????    %      $ T # OR Logical Immediate
UNKMC007     = ????    %      $ T # Insert Immediate Special Register
UNKMC008     = ????    %      $ T # EXtract program General Register
UNKMC009     = ????    %      $ T # Set Program General Register
UNKMC012     = ????    %      $ T # Set Program Access Register
UNKMC013     = ????    %      $ T # Set Program Access Register
                                  + Indirect
*
UNPK         = F3      %      $   # UNPacK
UNPKA        = EA      %      $   # UNPacK Ascii
UNPKU        = E2      %      $   # UNPacK Unicode
UPT          = 0102    %      $   # UPdate Tree
USING        = --      %      $   # USING
VA           = E7F3    %      $ P # Vector Add
VA           =-A420    %      $   # Vector Add
VAB          = E7F3    % 0000 $ P # Vector Add Byte
VAC          = E7BB    %      $ P # Vector Add with Carry
VACC         = E7F1    %      $ P # Vector Add Compute Carry
VACCB        = E7F1    % 0000 $ P # Vector Add Compute Carry Byte
VACCC        = E7B9    %      $ P # Vector Add with Carry Compute Carry
VACCCQ       = E7B9    % 0100 $ P # Vector Add with Carry Compute Carry
                                  + Quadword
VACCF        = E7F1    % 0010 $ P # Vector Add Compute Carry Fullword
VACCG        = E7F1    % 0011 $ P # Vector Add Compute Carry Grande
VACCH        = E7F1    % 0001 $ P # Vector Add Compute Carry Halfword
VACCQ        = E7F1    % 0100 $ P # Vector Add Compute Carry Quadword
VACD         =-A417    %      $   # Vector ACcumulate Double hfp
VACDR        =-A517    %      $   # Vector ACcumulate Double hfp
                                  + Register
VACE         =-A407    %      $   # Vector ACcumulate Exponential hfp
VACER        =-A507    %      $   # Vector ACcumulate Exponential hfp
                                  + Register
VACQ         = E7BB    % 0100 $ P # Vector Add with Carry Quadword
VACRS        =-A6CB    %      $   # Vector Activity Count ReStore
VACSV        =-A6CA    %      $   # Vector Activity Count SaVe
VAD          =-A410    %      $   # Vector Add Double hfp
VADQ         =-A590    %      $   # Vector Add Double hfp scalar to
                                  + Qualified register
VADR         =-A510    %      $   # Vector Add Double hfp Register
VADS         =-A490    %      $   # Vector Add Double hfp scalar to
                                  + Storage
VAE          =-A400    %      $   # Vector Add Exponential hfp
VAEQ         =-A580    %      $   # Vector Add Exponential hfp scalar
                                  + to Qualified register
VAER         =-A500    %      $   # Vector Add Exponential hfp Register
VAES         =-A480    %      $   # Vector Add Exponential hfp scalar
                                  + to Storage
VAF          = E7F3    % 0010 $ P # Vector Add Fullword
VAG          = E7F3    % 0011 $ P # Vector Add Grande
VAH          = E7F3    % 0001 $ P # Vector Add Halfword
VAP          = E671    %      $ P # Vector Add Packed decimal
VAQ          = E7F3    % 0100 $ P # Vector Add Quadword
VAQ          =-A5A0    %      $   # Vector Add scalar to Qualified
                                  + register
VAR          =-A520    %      $   # Vector Add Register
VAS          =-A4A0    %      $   # Vector Add scalar to Storage
VAVG         = E7F2    %      $ P # Vector AVeraGe
VAVGB        = E7F2    % 0000 $ P # Vector AVeraGe Byte
VAVGF        = E7F2    % 0010 $ P # Vector AVeraGe Fullword
VAVGG        = E7F2    % 0011 $ P # Vector AVeraGe Grande
VAVGH        = E7F2    % 0001 $ P # Vector AVeraGe Halfword
VAVGL        = E7F0    %      $ P # Vector AVeraGe Logical
VAVGLB       = E7F0    % 0000 $ P # Vector AVeraGe Logical Byte
VAVGLF       = E7F0    % 0010 $ P # Vector AVeraGe Logical Fullword
VAVGLG       = E7F0    % 0011 $ P # Vector AVeraGe Logical Grande
VAVGLH       = E7F0    % 0001 $ P # Vector AVeraGe Logical Halfword
VAVGLQ       = E7F0    % 0100 $ P # Vector AVeraGe Logical Quadword
VAVGQ        = E7F2    % 0100 $ P # Vector AVeraGe Quadword
VBLEND       = E789    %      $ P # Vector BLEND
VBLENDB      = E789    % 0000 $ P # Vector BLEND Byte
VBLENDF      = E789    % 0010 $ P # Vector BLEND Fullword
VBLENDG      = E789    % 0011 $ P # Vector BLEND Grande
VBLENDH      = E789    % 0001 $ P # Vector BLEND Halfword
VBLENDQ      = E789    % 0100 $ P # Vector BLEND Quadword
VBPERM       = E785    %      $ P # Vector Bit PERMute
VC           =-A428    %      $   # Vector Compare
VCD          =-A418    %      $   # Vector Compare Double hfp
VCDG         = E7C3    %           $ P # Vector Convert Double bfp from
                                       + Grande
VCDGB        = E7C3    % 0011.0000 $ P # Vector Convert Double bfp from
                                       + Grande to Bfp
VCDLG        = E7C1    %           $ P # Vector Convert Double bfp from
                                       + Logical Grande
VCDLGB       = E7C1    % 0011.0000 $ P # Vector Convert Double bfp from
                                       + Logical Grande to Bfp
VCDQ         =-A598    %           $   # Vector Compare Double hfp
                                       + scalar with Qualified register
VCDR         =-A518    %           $   # Vector Compare Double hfp
                                       + Register
VCDS         =-A498    %           $   # Vector Compare Double hfp
                                       + scalar with Storage
VCE          =-A408    %           $   # Vector Compare Exponential hfp
VCEFB        = E7C3    % 0010.0000 $ P # Vector Convert Exponential bfp
                                       + from Fullword to Bfp
VCELFB       = E7C1    % 0010.0000 $ P # Vector Convert Exponential bfp
                                       + from Logical Fullword to Bfp
VCEQ         = E7F8    %           $ P # Vector Compare EQual
VCEQ         =-A588    %           $   # Vector Compare Exponential hfp
                                       + scalar with Qualified register
VCEQB        = E7F8    % 0000.0000 $ P # Vector Compare EQual Byte
VCEQBS       = E7F8    % 0000.0001 $ P # Vector Compare EQual Byte and
                                       + Set cc
VCEQF        = E7F8    % 0010.0000 $ P # Vector Compare EQual Fullword
VCEQFS       = E7F8    % 0010.0001 $ P # Vector Compare EQual Fullword
                                       + and Set cc
VCEQG        = E7F8    % 0011.0000 $ P # Vector Compare EQual Grande
VCEQGS       = E7F8    % 0011.0001 $ P # Vector Compare EQual Grande
                                       + and Set cc
VCEQH        = E7F8    % 0001.0000 $ P # Vector Compare EQual Halfword
VCEQHS       = E7F8    % 0001.0001 $ P # Vector Compare EQual Halfword
                                       + and Set cc
VCEQQ        = E7F8    % 0100.0000 $ P # Vector Compare EQual Quadword
VCEQQS       = E7F8    % 0100.0001 $ P # Vector Compare EQual Quadword
                                       + and Set cc
VCER         =-A508    %           $   # Vector Compare Exponential hfp
                                       + Register
VCES         =-A488    %           $   # Vector Compare Exponential hfp
                                       + scalar with Storage
VCFEB        = E7C2    % 0010.0000 $ P # Vector Convert Fullword from
                                       + Exponential Bfp
VCFN         = E65D    %           $ P # Vector Convert Floating point
                                       + from Neural-nnp
VCFPL        = E7C1    %           $ P # Vector Convert Floating Point
                                       + from Logical
VCFPS        = E7C3    %           $ P # Vector Convert Floating Point
                                       + from Signed
VCGD         = E7C2    %           $ P # Vector Convert Grande from
                                       + Double bfp
VCGDB        = E7C2    % 0011.0000 $ P # Vector Convert Grande from
                                       + Double Bfp
VCH          = E7FB    %           $ P # Vector Compare High
VCHB         = E7FB    % 0000.0000 $ P # Vector Compare High Byte
VCHBS        = E7FB    % 0000.0001 $ P # Vector Compare High Byte and
                                       + Set cc
VCHF         = E7FB    % 0010.0000 $ P # Vector Compare High Fullword
VCHFS        = E7FB    % 0010.0001 $ P # Vector Compare High Fullword
                                       + and Set cc
VCHG         = E7FB    % 0011.0000 $ P # Vector Compare High Grande
VCHGS        = E7FB    % 0011.0001 $ P # Vector Compare High Grande and
                                       + Set cc
VCHH         = E7FB    % 0001.0000 $ P # Vector Compare High Halfword
VCHHS        = E7FB    % 0001.0001 $ P # Vector Compare High Halfword
                                       + and Set cc
VCHL         = E7F9    %           $ P # Vector Compare High Logical
VCHLB        = E7F9    % 0000.0000 $ P # Vector Compare High Logical
                                       + Byte
VCHLBS       = E7F9    % 0000.0001 $ P # Vector Compare High Logical
                                       + Byte and Set cc
VCHLF        = E7F9    % 0010.0000 $ P # Vector Compare High Logical
                                       + Fullword
VCHLFS       = E7F9    % 0010.0001 $ P # Vector Compare High Logical
                                       + Fullword and Set cc
VCHLG        = E7F9    % 0011.0000 $ P # Vector Compare High Logical
                                       + Grande
VCHLGS       = E7F9    % 0011.0001 $ P # Vector Compare High Logical
                                       + Grande and Set cc
VCHLH        = E7F9    % 0001.0000 $ P # Vector Compare High Logical
                                       + Halfword
VCHLHS       = E7F9    % 0001.0001 $ P # Vector Compare High Logical
                                       + Halfword and Set cc
VCHLQ        = E7F9    % 0100.0000 $ P # Vector Compare High Logical
                                       + Quadword
VCHLQS       = E7F9    % 0100.0001 $ P # Vector Compare High Logical
                                       + Quadword and Set cc
VCHQ         = E7FB    % 0100.0000 $ P # Vector Compare High Quadword
VCHQS        = E7FB    % 0100.0001 $ P # Vector Compare High Quadword
                                       + and Set cc
VCKSM        = E766    %           $ P # Vector ChecKSuM
VCLFEB       = E7C0    % 0010.0000 $ P # Vector Convert Logical
                                       + Fullword from Exponential Bfp
VCLFNH       = E656    %           $ P # Vector Convert and Lengthen
                                       + Floating point from Neural-nnp
                                       + High
VCLFNL       = E65E    %           $ P # Vector Convert and Lengthen
                                       + Floating point from Neural-nnp
                                       + Low
VCLFP        = E7C0    %           $ P # Vector Convert Logical from
                                       + Floating Point
VCLGD        = E7C0    %           $ P # Vector Convert Logical Grande
                                       + from Double bfp
VCLGDB       = E7C0    % 0011.0000 $ P # Vector Convert Logical Grande
                                       + from Double Bfp
VCLZ         = E753    %      $ P # Vector Count Leading Zeros
VCLZB        = E753    % 0000 $ P # Vector Count Leading Zeros Byte
VCLZDP       = E651    %      $ P # Vector Count Leading Zero Digits
                                  + Packed decimal
VCLZF        = E753    % 0010 $ P # Vector Count Leading Zeros Fullword
VCLZG        = E753    % 0011 $ P # Vector Count Leading Zeros Grande
VCLZH        = E753    % 0001 $ P # Vector Count Leading Zeros Halfword
VCLZQ        = E753    % 0100 $ P # Vector Count Leading Zeros Quadword
VCNF         = E655    %      $ P # Vector Convert Neural-nnp from
                                  + Floating point 
VCOVM        =-A643    %      $   # Vector Count Ones in Vector Mask
                                  + register
VCP          = E677    %      $ P # Vector Compare Packed decimal
VCQ          =-A5A8    %      $   # Vector Compare scalar with
                                  + Qualified register
VCR          =-A528    %      $   # Vector Compare Register
VCRNF        = E675    %      $ P # Vector Convert and Round Neural-nnp
                                  + from Floating point
VCS          =-A4A8    %      $   # Vector Compare scalar with Storage
VCSFP        = E7C2    %      $ P # Vector Convert Signed from Floating
                                  + Point
VCSPH        = E67D    %      $ P # Vector Convert Scaled Packed
                                  + decimal from Hex floating point
VCTZ         = E752    %      $ P # Vector Count Trailing Zeros
VCTZB        = E752    % 0000 $ P # Vector Count Trailing Zeros Byte
VCTZF        = E752    % 0010 $ P # Vector Count Trailing Zeros
                                  + Fullword
VCTZG        = E752    % 0011 $ P # Vector Count Trailing Zeros Grande
VCTZH        = E752    % 0001 $ P # Vector Count Trailing Zeros
                                  + Halfword
VCTZQ        = E752    % 0100 $ P # Vector Count Trailing Zeros
                                  + Quadword
VCVB         = E650    %      $ P # Vector ConVert to Binary
VCVBG        = E652    %      $ P # Vector ConVert to Binary Grande
VCVBQ        = E64E    %      $ P # Vector ConVert to Binary Quadword
VCVD         = E658    %      $ P # Vector ConVert to Decimal
VCVDG        = E65A    %      $ P # Vector ConVert to Decimal Grande
VCVDQ        = E64A    %      $ P # Vector ConVert to Decimal Quadword
VCVM         =-A641    %      $   # Vector Complement Vector Mask
                                  + register
VCZVM        =-A642    %      $   # Vector Count left Zeros in Vector
                                  + Mask register
VD           = E7B2    %      $ P # Vector Divide
VDD          =-A413    %      $   # Vector Divide Double hfp
VDDQ         =-A593    %      $   # Vector Divide Double hfp scalar
                                  + with Qualified register
VDDR         =-A513    %      $   # Vector Divide Double hfp Register
VDDS         =-A493    %      $   # Vector Divide Double hfp scalar
                                  + with Storage
VDE          =-A403    %      $   # Vector Divide Exponential hfp
VDEQ         =-A583    %      $   # Vector Divide Exponential hfp
                                  + scalar with Qualified register
VDER         =-A503    %      $   # Vector Divide Exponential hfp
                                  + Register
VDES         =-A483    %      $   # Vector Divide Exponential hfp
                                  + scalar with Storage
VDF          = E7B2    % 0010 $ P # Vector Divide Fullword
VDG          = E7B2    % 0011 $ P # Vector Divide Grande
VDL          = E7B0    %      $ P # Vector Divide Logical
VDLF         = E7B0    % 0010 $ P # Vector Divide Logical Fullword
VDLG         = E7B0    % 0011 $ P # Vector Divide Logical Grande
VDLQ         = E7B0    % 0100 $ P # Vector Divide Logical Quadword
VDP          = E67A    %      $ P # Vector Divide Packed decimal
VDQ          = E7B2    % 0100 $ P # Vector Divide Quadword
VEC          = E7DB    %      $ P # Vector Element Compare
VECB         = E7DB    % 0000 $ P # Vector Element Compare Byte
VECF         = E7DB    % 0010 $ P # Vector Element Compare Fullword
VECG         = E7DB    % 0011 $ P # Vector Element Compare Grande
VECH         = E7DB    % 0001 $ P # Vector Element Compare Halfword
VECL         = E7D9    %      $ P # Vector Element Compare Logical
VECLB        = E7D9    % 0000 $ P # Vector Element Compare Logical Byte
VECLF        = E7D9    % 0010 $ P # Vector Element Compare Logical
                                  + Fullword
VECLG        = E7D9    % 0011 $ P # Vector Element Compare Logical
                                  + Grande
VECLH        = E7D9    % 0001 $ P # Vector Element Compare Logical
                                  + Halfword
VECLQ        = E7D9    % 0100 $ P # Vector Element Compare Logical
                                  + Quadword
VECQ         = E7DB    % 0100 $ P # Vector Element Compare Quadword
VERIM        = E772    %      $ P # Vector Element Rotate and Insert
                                  + under Mask
VERIMB       = E772    % 0000 $ P # Vector Element Rotate and Insert
                                  + under Mask Byte
VERIMF       = E772    % 0010 $ P # Vector Element Rotate and Insert
                                  + under Mask Fullword
VERIMG       = E772    % 0011 $ P # Vector Element Rotate and Insert
                                  + under Mask Grande
VERIMH       = E772    % 0001 $ P # Vector Element Rotate and Insert
                                  + under Mask Halfword
VERLL        = E733    %      $ P # Vector Element Rotate Left Logical
VERLLB       = E733    % 0000 $ P # Vector Element Rotate Left Logical
                                  + Byte
VERLLF       = E733    % 0010 $ P # Vector Element Rotate Left Logical
                                  + Fullword
VERLLG       = E733    % 0011 $ P # Vector Element Rotate Left Logical
                                  + Grande
VERLLH       = E733    % 0001 $ P # Vector Element Rotate Left Logical
                                  + Halfword
VERLLV       = E773    %      $ P # Vector Element Rotate Left Logical
                                  + Vector-specified
VERLLVB      = E773    % 0000 $ P # Vector Element Rotate Left Logical
                                  + Vector-specified Byte
VERLLVF      = E773    % 0010 $ P # Vector Element Rotate Left Logical
                                  + Vector-specified Fullword
VERLLVG      = E773    % 0011 $ P # Vector Element Rotate Left Logical
                                  + Vector-specified Grande
VERLLVH      = E773    % 0001 $ P # Vector Element Rotate Left Logical
                                  + Vector-specified Halfword
VESL         = E730    %      $ P # Vector Element Shift Left
VESLB        = E730    % 0000 $ P # Vector Element Shift Left Byte
VESLF        = E730    % 0010 $ P # Vector Element Shift Left Fullword
VESLG        = E730    % 0011 $ P # Vector Element Shift Left Grande
VESLH        = E730    % 0001 $ P # Vector Element Shift Left Halfword
VESLV        = E770    %      $ P # Vector Element Shift Left
                                  + Vector-specified
VESLVB       = E770    % 0000 $ P # Vector Element Shift Left
                                  + Vector-specified Byte
VESLVF       = E770    % 0010 $ P # Vector Element Shift Left
                                  + Vector-specified Fullword
VESLVG       = E770    % 0011 $ P # Vector Element Shift Left
                                  + Vector-specified Grande
VESLVH       = E770    % 0001 $ P # Vector Element Shift Left
                                  + Vector-specified Halfword
VESRA        = E73A    %      $ P # Vector Element Shift Right
                                  + Arithmetic
VESRAB       = E73A    % 0000 $ P # Vector Element Shift Right
                                  + Arithmetic Byte
VESRAF       = E73A    % 0010 $ P # Vector Element Shift Right
                                  + Arithmetic Fullword
VESRAG       = E73A    % 0011 $ P # Vector Element Shift Right
                                  + Arithmetic Grande
VESRAH       = E73A    % 0001 $ P # Vector Element Shift Right
                                  + Arithmetic Halfword
VESRAV       = E77A    %      $ P # Vector Element Shift Right
                                  + Arithmetic Vector-specified
VESRAVB      = E77A    % 0000 $ P # Vector Element Shift Right
                                  + Arithmetic Vector-specified Byte
VESRAVF      = E77A    % 0010 $ P # Vector Element Shift Right
                                  + Arithmetic Vector-specified
                                  + Fullword
VESRAVG      = E77A    % 0011 $ P # Vector Element Shift Right
                                  + Arithmetic Vector-specified Grande
VESRAVH      = E77A    % 0001 $ P # Vector Element Shift Right
                                  + Arithmetic Vector-specified
                                  + Halfword
VESRL        = E738    %      $ P # Vector Element Shift Right Logical
VESRLB       = E738    % 0000 $ P # Vector Element Shift Right Logical
                                  + Byte
VESRLF       = E738    % 0010 $ P # Vector Element Shift Right Logical
                                  + Fullword
VESRLG       = E738    % 0011 $ P # Vector Element Shift Right Logical
                                  + Grande
VESRLH       = E738    % 0001 $ P # Vector Element Shift Right Logical
                                  + Halfword
VESRLV       = E778    %      $ P # Vector Element Shift Right Logical
                                  + Vector-specified
VESRLVB      = E778    % 0000 $ P # Vector Element Shift Right Logical
                                  + Vector-specified Byte
VESRLVF      = E778    % 0010 $ P # Vector Element Shift Right Logical
                                  + Vector-specified Fullword
VESRLVG      = E778    % 0011 $ P # Vector Element Shift Right Logical
                                  + Vector-specified Grande
VESRLVH      = E778    % 0001 $ P # Vector Element Shift Right Logical
                                  + Vector-specified Halfword
VEVAL        = E788    %      $ P # Vector EVALuate
VFA          = E7E3    %           $ P # Vector Floating point Add
VFADB        = E7E3    % 0011.0000 $ P # Vector Floating point Add
                                     + Double Bfp
VFAE         = E782    %           $ P # Vector Find Any element Equal
VFAEB        = E782    % 0000      $ P # Vector Find Any element Equal
                                       + Byte
VFAEBS       = E782    % 0000.0001 $ P # Vector Find Any element Equal
                                       + Byte and Set cc
VFAEF        = E782    % 0010      $ P # Vector Find Any element Equal
                                       + Fullword
VFAEFS       = E782    % 0010.0001 $ P # Vector Find Any element Equal
                                       + Fullword and Set cc
VFAEH        = E782    % 0001      $ P # Vector Find Any element Equal
                                       + Halfword
VFAEHS       = E782    % 0001.0001 $ P # Vector Find Any element Equal
                                       + Halfword and Set cc
VFAEZB       = E782    % 0000.0010 $ P # Vector Find Any element Equal
                                       + or Zero Byte
VFAEZBS      = E782    % 0000.0011 $ P # Vector Find Any element Equal
                                       + or Zero Byte and Set cc
VFAEZF       = E782    % 0010.0010 $ P # Vector Find Any element Equal
                                       + or Zero Fullword
VFAEZFS      = E782    % 0010.0011 $ P # Vector Find Any element Equal
                                       + or Zero Fullword and Set cc
VFAEZH       = E782    % 0001.0010 $ P # Vector Find Any element Equal
                                       + or Zero Halfword
VFAEZHS      = E782    % 0001.0011 $ P # Vector Find Any element Equal
                                       + or Zero Halfword and Set cc
VFASB        = E7E3    % 0010.0000 $ P # Vector Floating point Add
                                       + Single Bfp
VFCE         = E7E8    %                $ P # Vector Floating point
                                            + Compare Equal
VFCEDB       = E7E8    % 0011.0000.0000 $ P # Vector Floating point
                                            +Compare Equal  Double Bfp
VFCEDBS      = E7E8    % 0011.0000.0001 $ P # Vector Floating point
                                            + Compare Equal Double Bfp
                                            + and Set cc
VFCESB       = E7E8    % 0010.0000.0000 $ P # Vector Floating point
                                            + Compare Equal Single Bfp
VFCESBS      = E7E8    % 0010.0000.0001 $ P # Vector Floating point
                                            + Compare Equal Single Bfp
                                            + and Set cc
VFCH         = E7EB    %                $ P # Vector Floating point
                                            + Compare High
VFCHDB       = E7EB    % 0011.0000.0000 $ P # Vector Floating point
                                            + Compare High Double Bfp
VFCHDBS      = E7EB    % 0011.0000.0001 $ P # Vector Floating point
                                            + Compare High Double Bfp
                                            + and Set cc
VFCHE        = E7EA    %                $ P # Vector Floating point
                                            + Compare High or Equal
VFCHEDB      = E7EA    % 0011.0000.0000 $ P # Vector Floating point
                                            + Compare High or Equal
                                            + Double Bfp
VFCHEDBS     = E7EA    % 0011.0000.0001 $ P # Vector Floating point
                                            + Compare High or Equal
                                            + Double Bfp and Set cc
VFCHESB      = E7EA    % 0010.0000.0000 $ P # Vector Floating point
                                            + Compare High or Equal
                                            + Single Bfp
VFCHESBS     = E7EA    % 0010.0000.0001 $ P # Vector Floating point
                                            + Compare High or Equal
                                            + Single Bfp and Set cc
VFCHSB       = E7EB    % 0010.0000.0000 $ P # Vector Floating point
                                            + Compare High Single Bfp
VFCHSBS      = E7EB    % 0010.0000.0001 $ P # Vector Floating point
                                            + Compare High Single Bfp
                                            + and Set cc
VFD          = E7E5    %           $ P # Vector Floating point Divide
VFDDB        = E7E5    % 0011.0000 $ P # Vector Floating point Divide
                                       +  Double Bfp
VFDSB        = E7E5    % 0010.0000 $ P # Vector Floating point Divide
                                       + Single Bfp
VFEE         = E780    %           $ P # Vector Find Element Equal
VFEEB        = E780    % 0000      $ P # Vector Find Element Equal Byte
VFEEBS       = E780    % 0000.0001 $ P # Vector Find Element Equal Byte
                                       + and Set cc
VFEEF        = E780    % 0010      $ P # Vector Find Element Equal
                                       + Fullword
VFEEFS       = E780    % 0010.0001 $ P # Vector Find Element Equal
                                       + Fullword and Set cc
VFEEH        = E780    % 0001      $ P # Vector Find Element Equal
                                       + Halfword
VFEEHS       = E780    % 0001.0001 $ P # Vector Find Element Equal
                                       + Halfword and Set cc
VFEEZB       = E780    % 0000.0010 $ P # Vector Find Element Equal or
                                       + Zero Byte
VFEEZBS      = E780    % 0000.0011 $ P # Vector Find Element Equal or
                                       + Zero Byte and Set cc
VFEEZF       = E780    % 0010.0010 $ P # Vector Find Element Equal or
                                       + Zero Fullword
VFEEZFS      = E780    % 0010.0011 $ P # Vector Find Element Equal or
                                       + Zero Fullword and Set cc
VFEEZH       = E780    % 0001.0010 $ P # Vector Find Element Equal or
                                       + Zero Halfword
VFEEZHS      = E780    % 0001.0011 $ P # Vector Find Element Equal or
                                       +  Zero Halfword and Set cc
VFENE        = E781    %           $ P # Vector Find Element Not Equal
VFENEB       = E781    % 0000      $ P # Vector Find Element Not Equal
                                       + Byte
VFENEBS      = E781    % 0000.0001 $ P # Vector Find Element Not Equal
                                       + Byte and Set cc
VFENEF       = E781    % 0010      $ P # Vector Find Element Not Equal
                                       + Fullword
VFENEFS      = E781    % 0010.0001 $ P # Vector Find Element Not Equal
                                       + Fullword and Set cc
VFENEH       = E781    % 0001      $ P # Vector Find Element Not Equal
                                       + Halfword
VFENEHS      = E781    % 0001.0001 $ P # Vector Find Element Not Equal
                                       + Halfword and Set cc
VFENEZB      = E781    % 0000.0010 $ P # Vector Find Element Not Equal
                                       + or Zero Byte
VFENEZBS     = E781    % 0000.0011 $ P # Vector Find Element Not Equal
                                       + or Zero Byte and Set cc
VFENEZF      = E781    % 0010.0010 $ P # Vector Find Element Not Equal
                                       + or Zero Fullword
VFENEZFS     = E781    % 0010.0011 $ P # Vector Find Element Not Equal
                                       + or Zero Fullword and Set cc
VFENEZH      = E781    % 0001.0010 $ P # Vector Find Element Not Equal
                                       + or Zero Halfword
VFENEZHS     = E781    % 0001.0011 $ P # Vector Find Element Not Equal
                                       + or Zero Halfword and Set cc
VFI          = E7C7    %           $ P # Vector load Floating point
                                       + Integer
VFIDB        = E7C7    % 0011.0000 $ P # Vector load Floating point
                                       + Integer Double Bfp
VFISB        = E7C7    % 0010.0000 $ P # Vector load Floating point
                                       + Integer Single Bfp
VFKEDB       = E7E8    % 0011.0100.0000 $ P # Vector Floating point
                                            + Kompare and signal
                                            + Equal Double Bfp
VFKEDBS      = E7E8    % 0011.0100.0001 $ P # Vector Floating point
                                            + Kompare and signal
                                            + Equal Double Bfp and Set
                                            + cc
VFKESB       = E7E8    % 0010.0100.0000 $ P # Vector Floating point
                                            + Kompare and signal
                                            + Equal Single Bfp
VFKESBS      = E7E8    % 0010.0100.0001 $ P # Vector Floating point
                                            + Kompare and signal
                                            + Equal Single Bfp and Set
                                            + cc
VFKHDB       = E7EB    % 0011.0100.0000 $ P # Vector Floating point
                                            + Kompare and signal
                                            + High Double Bfp
VFKHDBS      = E7EB    % 0011.0100.0001 $ P # Vector Floating point
                                            + Kompare and signal
                                            + High Double Bfp and Set
                                            + cc
VFKHEDB      = E7EA    % 0011.0100.0000 $ P # Vector Floating point
                                            + Kompare and signal
                                            + High or Equal Double Bfp
VFKHEDBS     = E7EA    % 0011.0100.0001 $ P # Vector Floating point
                                            + Kompare and signal
                                            + High or Equal Double Bfp
                                            + and Set cc
VFKHESB      = E7EA    % 0010.0100.0000 $ P # Vector Floating point
                                            + Kompare and signal
                                            + High or Equal Single Bfp
VFKHESBS     = E7EA    % 0010.0100.0001 $ P # Vector Floating point
                                            + Kompare and signal
                                            + High or Equal Single Bfp
                                            + and Set cc
VFKHSB       = E7EB    % 0010.0100.0000 $ P # Vector Floating point
                                            + Kompare and signal
                                            + High Single Bfp
VFKHSBS      = E7EB    % 0010.0100.0001 $ P # Vector Floating point
                                            + Kompare and signal
                                            + High Single Bfp and Set
                                            + cc
VFLCDB       = E7CC    % 0011.0000.0000 $ P # Vector Floating point
                                            + Load Complement Double
                                            + Bfp
VFLCSB       = E7CC    % 0010.0000.0000 $ P # Vector Floating point
                                            + Load Complement Single
                                            + Bfp
VFLL         = E7C4    %           $ P # Vector Floating point Load
                                       + Lengthened
VFLLS        = E7C4    % 0010.0000 $ P # Vector Floating point Load
                                       + Lengthened Single bfp
VFLNDB       = E7CC    % 0011.0000.0001 $ P # Vector Floating point
                                            + Load Negative Double Bfp
VFLNSB       = E7CC    % 0010.0000.0001 $ P # Vector Floating point
                                            + Load Negative Single Bfp
VFLPDB       = E7CC    % 0011.0000.0010 $ P # Vector Floating point
                                            + Load Positive Double Bfp
VFLPSB       = E7CC    % 0010.0000.0010 $ P # Vector Floating point
                                            + Load Positive Single Bfp
VFLR         = E7C5    %           $ P # Vector Floating point Load
                                       + Rounded
VFLRD        = E7C5    % 0011.0000 $ P # Vector Floating point Load
                                       + Rounded Double bfp
VFM          = E7E7    %           $ P # Vector Floating point Multiply
VFMA         = E78F    %           $ P # Vector Floating point Multiply
                                       + and Add
VFMADB       = E78F    % 0000.0011 $ P # Vector Floating point Multiply
                                       + and Add Double Bfp
VFMASB       = E78F    % 0000.0010 $ P # Vector Floating point Multiply
                                       + and Add Single Bfp
VFMAX        = E7EF    %           $ P # Vector Floating point MAXimum
VFMAXDB      = E7EF    % 0011.0000 $ P # Vector Floating point MAXimum
                                       + Double Bfp
VFMAXSB      = E7EF    % 0010.0000 $ P # Vector Floating point MAXimum
                                       + Single Bfp
VFMDB        = E7E7    % 0011.0000 $ P # Vector Floating point Multiply
                                       + Double Bfp
VFMIN        = E7EE    %           $ P # Vector Floating point MINimum
VFMINDB      = E7EE    % 0011.0000 $ P # Vector Floating point MINimum
                                       + Double Bfp
VFMINSB      = E7EE    % 0010.0000 $ P # Vector Floating point MINimum
                                       + Single Bfp
VFMS         = E78E    %           $ P # Vector Floating point Multiply
                                       + and Subtract
VFMSB        = E7E7    % 0010.0000 $ P # Vector Floating point Multiply
                                       + Single Bfp
VFMSDB       = E78E    % 0000.0011 $ P # Vector Floating point Multiply
                                       + and Subtract Double Bfp
VFMSSB       = E78E    % 0000.0010 $ P # Vector Floating point Multiply
                                       + and Subtract Single Bfp
VFNMA        = E79F    %           $ P # Vector Floating point Negative
                                       + Multiply and Add
VFNMADB      = E79F    % 0000.0011 $ P # Vector Floating point Negative
                                       + Multiply and Add Double Bfp
VFNMASB      = E79F    % 0000.0010 $ P # Vector Floating point Negative
                                       + Multiply and Add Single Bfp
VFNMS        = E79E    %           $ P # Vector Floating point
                                       + Negative Multiply and Subtract
VFNMSDB      = E79E    % 0000.0011 $ P # Vector Floating point
                                       + Negative Multiply and Subtract
                                       + Double Bfp
VFNMSSB      = E79E    % 0000.0010 $ P # Vector Floating point Negative
                                       + Multiply and Subtract Single
                                       + Bfp
VFPSO        = E7CC    %           $ P # Vector Floating point
                                       + Perform Sign Operation
VFPSODB      = E7CC    % 0011.0000 $ P # Vector Floating point
                                       + Perform Sign Operation
                                       + Double Bfp
VFPSOSB      = E7CC    % 0010.0000 $ P # Vector Floating point
                                       + Perform Sign Operation
                                       + Single Bfp
VFS          = E7E2    %           $ P # Vector Floating point Subtract
VFSDB        = E7E2    % 0011.0000 $ P # Vector Floating point Subtract
                                       + Double Bfp
VFSQ         = E7CE    %           $ P # Vector Floating point SQuare
                                       + root
VFSQDB       = E7CE    % 0011.0000 $ P # Vector Floating point SQuare
                                       + root Double Bfp
VFSQSB       = E7CE    % 0010.0000 $ P # Vector Floating point SQuare
                                       + root Single Bfp
VFSSB        = E7E2    % 0010.0000 $ P # Vector Floating point Subtract
                                       + Single Bfp
VFTCI        = E74A    %           $ P # Vector Floating point Test
                                       + data Class Immediate
VFTCIDB      = E74A    % 0011.0000 $ P # Vector Floating point Test
                                       + data Class Immediate Double
                                       + Bfp
VFTCISB      = E74A    % 0010.0000 $ P # Vector Floating point Test
                                       + data Class Immediate Single
                                       + Bfp
VGBM         = E744    %      $ P # Vector Generate Byte Mask
VGEF         = E713    %      $ P # Vector Gather Element Fullword
VGEG         = E712    %      $ P # Vector Gather Element Grande
VGEM         = E754    %      $ P # Vector Generate Element Masks
VGEMB        = E754    % 0000 $ P # Vector Generate Element Masks Byte
VGEMF        = E754    % 0010 $ P # Vector Generate Element Masks 
                                  + Fullword
VGEMG        = E754    % 0011 $ P # Vector Generate Element Masks 
                                  + Grande
VGEMH        = E754    % 0001 $ P # Vector Generate Element Masks 
                                  + Halfword
VGEMQ        = E754    % 0100 $ P # Vector Generate Element Masks 
                                  + Quadword
VGFM         = E7B4    %      $ P # Vector Galois Field Multiply sum
VGFMA        = E7BC    %      $ P # Vector Galois Field Multiply sum
                                  + and Accumulate
VGFMAB       = E7BC    % 0000 $ P # Vector Galois Field Multiply sum
                                  + and Accumulate Byte
VGFMAF       = E7BC    % 0010 $ P # Vector Galois Field Multiply sum
                                  + and Accumulate Fullword
VGFMAG       = E7BC    % 0011 $ P # Vector Galois Field Multiply sum
                                  + and Accumulate Grande
VGFMAH       = E7BC    % 0001 $ P # Vector Galois Field Multiply sum
                                  + and Accumulate Halfword
VGFMB        = E7B4    % 0000 $ P # Vector Galois Field Multiply sum
                                  + Byte
VGFMF        = E7B4    % 0010 $ P # Vector Galois Field Multiply sum
                                  + Fullword
VGFMG        = E7B4    % 0011 $ P # Vector Galois Field Multiply sum
                                  + Grande
VGFMH        = E7B4    % 0001 $ P # Vector Galois Field Multiply sum
                                  + Halfword
VGM          = E746    %      $ P # Vector Generate Mask
VGMB         = E746    % 0000 $ P # Vector Generate Mask Byte
VGMF         = E746    % 0010 $ P # Vector Generate Mask Fullword
VGMG         = E746    % 0011 $ P # Vector Generate Mask Grande
VGMH         = E746    % 0001 $ P # Vector Generate Mask Halfword
VISTR        = E75C    %           $ P # Vector Isolate STRing
VISTRB       = E75C    % 0000      $ P # Vector Isolate STRing Byte
VISTRBS      = E75C    % 0000.0001 $ P # Vector Isolate STRing Byte and
                                       + Set cc
VISTRF       = E75C    % 0010      $ P # Vector Isolate STRing Fullword
VISTRFS      = E75C    % 0010.0001 $ P # Vector Isolate STRing Fullword
                                       + and Set cc
VISTRH       = E75C    % 0001      $ P # Vector Isolate STRing Halfword
VISTRHS      = E75C    % 0001.0001 $ P # Vector Isolate STRing Halfword
                                       + and Set cc
VL           = E706    %      $ P # Vector Load
VL           =-A409    %      $   # Vector Load
VLBB         = E707    %      $ P # Vector Load to Block Boundary
VLBIX        =-E428    %      $   # Vector Load Bit IndeX
VLBR         = E606    %      $ P # Vector Load Byte Reversed elements
VLBRF        = E606    % 0010 $ P # Vector Load Byte Reversed elements
                                  + Fullword
VLBRG        = E606    % 0011 $ P # Vector Load Byte Reversed elements
                                  + Grande
VLBRH        = E606    % 0001 $ P # Vector Load Byte Reversed elements
                                  + Halfword
VLBRQ        = E606    % 0100 $ P # Vector Load Byte Reversed elements
                                  + Quadword
VLBRREP      = E605    %      $ P # Vector Load Byte Reversed element
                                  + and REPlicate
VLBRREPF     = E605    % 0010 $ P # Vector Load Byte Reversed element
                                  + and REPlicate Fullword
VLBRREPG     = E605    % 0011 $ P # Vector Load Byte Reversed element
                                  + and REPlicate Grande
VLBRREPH     = E605    % 0001 $ P # Vector Load Byte Reversed element
                                  + and REPlicate Halfword
VLC          = E7DE    %      $ P # Vector Load Complement
VLCB         = E7DE    % 0000 $ P # Vector Load Complement Byte
VLCDR        =-A552    %      $   # Vector Load Complement Double hfp
                                  + Register
VLCER        =-A542    %      $   # Vector Load Complement Exponential
                                  + hfp Register
VLCF         = E7DE    % 0010 $ P # Vector Load Complement Fullword
VLCG         = E7DE    % 0011 $ P # Vector Load Complement Grande
VLCH         = E7DE    % 0001 $ P # Vector Load Complement Halfword
VLCQ         = E7DE    % 0100 $ P # Vector Load Complement Quadword
VLCR         =-A562    %      $   # Vector Load Complement Register
VLCVM        =-A681    %      $   # Vector Load Complement Vector Mask
                                  + register
VLD          =-A419    %      $   # Vector Load Double hfp
VLDE         = E7C4    %           $ P # Vector Load lengthened Double
                                       + from Exponential
VLDEB        = E7C4    % 0010.0000 $ P # Vector Load lengthened Double
                                       + from Exponential Bfp
VLDQ         =-A599    %      $   # Vector Load Double hfp scalar to
                                  + Qualified register
VLDR         =-A519    %      $   # Vector Load Double hfp Register
VLE          =-A409    %      $   # Vector Load Exponential hfp
VLEB         = E700    %      $ P # Vector Load Element Byte
VLEBRF       = E603    %      $ P # Vector Load Element Byte Reversed
                                  + Fullword
VLEBRG       = E602    %      $ P # Vector Load Element Byte Reversed
                                  + Grande
VLEBRH       = E601    %      $ P # Vector Load Element Byte Reversed
                                  + Halfword
VLED         = E7C5    %      $ P # Vector floating point Load rounded
                                  + Exponential from Double
VLEDB        = E7C5    % 0011.0000 $ P # Vector floating point Load
                                       + rounded Exponential from
                                       + Double Bfp
VLEF         = E703    %      $ P # Vector Load Element Fullword
VLEG         = E702    %      $ P # Vector Load Element Grande
VLEH         = E701    %      $ P # Vector Load Element Halfword
VLEIB        = E740    %      $ P # Vector Load Element Immediate Byte
VLEIF        = E743    %      $ P # Vector Load Element Immediate
                                  + Fullword
VLEIG        = E742    %      $ P # Vector Load Element Immediate
                                  + Grande
VLEIH        = E741    %      $ P # Vector Load Element Immediate
                                  + Halfword
VLEL         =-A628    %      $   # Vector Load ELement
VLELD        =-A618    %      $   # Vector Load ELement Double hfp
VLELE        =-A608    %      $   # Vector Load ELement Exponential hfp
VLEQ         =-A589    %      $   # Vector Load Exponential hfp scalar
                                  + to Qualified register
VLER         =-A509    %      $   # Vector Load Exponential hfp
                                  + Register
VLER         = E607    %      $ P # Vector Load Elements Reversed
VLERF        = E607    % 0010 $ P # Vector Load Elements Reversed
                                  + Fullword
VLERG        = E607    % 0011 $ P # Vector Load Elements Reversed
                                  + Grande
VLERH        = E607    % 0001 $ P # Vector Load Elements Reversed
                                  + Halfword
VLGV         = E721    %      $ P # Vector Load Gpr from Vector
                                  + register element
VLGVB        = E721    % 0000 $ P # Vector Load Gpr from Vector
                                  + register element Byte
VLGVF        = E721    % 0010 $ P # Vector Load Gpr from Vector
                                  + register element Fullword
VLGVG        = E721    % 0011 $ P # Vector Load Gpr from Vector
                                  + register element Grande
VLGVH        = E721    % 0001 $ P # Vector Load Gpr from Vector
                                  + register element Halfword
VLH          =-A429    %      $   # Vector Load Halfword
VLI          =-E400    %      $   # Vector Load Indirect
VLID         =-E410    %      $   # Vector Load Indirect Double hfp
VLIE         =-E400    %      $   # Vector Load Indirect Exponential
                                  + hfp
VLINT        =-A42A    %      $   # Vector Load INTeger
VLIP         = E649    %      $ P # Vector Load Immediate Packed
                                  + decimal
VLL          = E737    %      $ P # Vector Load with Length
VLLEBRZ      = E604    %      $ P # Vector Load Logical Element Byte
                                  + Reversed and Zero
VLLEBRZE     = E604    % 0110 $ P # Vector Load Logical Element Byte
                                  + Reversed and Zero lEftmost word
VLLEBRZF     = E604    % 0010 $ P # Vector Load Logical Element Byte
                                  + Reversed and Zero Fullword
VLLEBRZG     = E604    % 0011 $ P # Vector Load Logical Element Byte
                                  + Reversed and Zero Grande
VLLEBRZH     = E604    % 0001 $ P # Vector Load Logical Element Byte
                                  + Reversed and Zero Halfword
VLLEZ        = E704    %      $ P # Vector Load Logical Element and
                                  + Zero
VLLEZB       = E704    % 0000 $ P # Vector Load Logical Element and
                                  + Zero Byte
VLLEZF       = E704    % 0010 $ P # Vector Load Logical Element and
                                  + Zero Fullword
VLLEZG       = E704    % 0011 $ P # Vector Load Logical Element and
                                  + Zero Grande
VLLEZH       = E704    % 0001 $ P # Vector Load Logical Element and
                                  + Zero Halfword
VLLEZLF      = E704    % 0110 $ P # Vector Load Logical Element and
                                  + Zero Left-aligned Fullword
VLM          = E736    %      $ P # Vector Load Multiple
VLM          =-A40A    %      $   # Vector Load Matched
VLMD         =-A41A    %      $   # Vector Load Matched Double hfp
VLMDQ        =-A59A    %      $   # Vector Load Matched Double hfp
                                  + scalar to Qualified register
VLMDR        =-A51A    %      $   # Vector Load Matched Double hfp
                                  + Register
VLME         =-A40A    %      $   # Vector Load Matched Exponential hfp
VLMEQ        =-A58A    %      $   # Vector Load Matched Exponential hfp
                                  + scalar to Qualified register
VLMER        =-A50A    %      $   # Vector Load Matched Exponential hfp
                                  + Register
VLMQ         =-A5AA    %      $   # Vector Load Matched scalar to
                                  + Qualified register
VLMR         =-A50A    %      $   # Vector Load Matched Register
VLNDR        =-A551    %      $   # Vector Load Negative Double hfp
                                  + Register
VLNER        =-A541    %      $   # Vector Load Negative Exponential
                                  + hfp Register
VLNR         =-A561    %      $   # Vector Load Negative Register
VLP          = E7DF    %      $ P # Vector Load Positive
VLPB         = E7DF    % 0000 $ P # Vector Load Positive Byte
VLPDR        =-A550    %      $   # Vector Load Positive Double hfp
                                  + Register
VLPER        =-A540    %      $   # Vector Load Positive Exponential
                                  + hfp Register
VLPF         = E7DF    % 0010 $ P # Vector Load Positive Fullword
VLPG         = E7DF    % 0011 $ P # Vector Load Positive Grande
VLPH         = E7DF    % 0001 $ P # Vector Load Positive Halfword
VLPQ         = E7DF    % 0100 $ P # Vector Load Positive Quadword
VLPR         =-A560    %      $   # Vector Load Positive Register
VLQ          =-A5A9    %      $   # Vector Load scalar to Qualified
                                  + register
VLR          = E756    %      $ P # Vector Load Register
VLR          =-A509    %      $   # Vector Load Register
VLREP        = E705    %      $ P # Vector Load and REPlicate
VLREPB       = E705    % 0000 $ P # Vector Load and REPlicate Byte
VLREPF       = E705    % 0010 $ P # Vector Load and REPlicate Fullword
VLREPG       = E705    % 0011 $ P # Vector Load and REPlicate Grande
VLREPH       = E705    % 0001 $ P # Vector Load and REPlicate Halfword
VLRL         = E635    %      $ P # Vector Load Rightmost with Length
VLRLR        = E637    %      $ P # Vector Load Rightmost with Length
                                  + Register
VLVCA        =-A6C4    %      $   # Vector Load Vector Count from
                                  + Address
VLVCU        =-A645    %      $   # Vector Load Vector Count and Update
VLVG         = E722    %      $ P # Vector Load Vector element from Gpr
VLVGB        = E722    % 0000 $ P # Vector Load Vector element from Gpr
                                  + Byte
VLVGF        = E722    % 0010 $ P # Vector Load Vector element from Gpr
                                  + Fullword
VLVGG        = E722    % 0011 $ P # Vector Load Vector element from Gpr
                                  + Grande
VLVGH        = E722    % 0001 $ P # Vector Load Vector element from Gpr
                                  + Halfword
VLVGP        = E762    %      $ P # Vector Load Vector register from
                                  + Gpr disjoint after Pairing
VLVM         =-A680    %      $   # Vector Load Vector Mask register
VLVXA        =-A6C7    %      $   # Vector Load Vector interruption
                                  + indeX from Address
VLY          =-A40B    %      $   # Vector Load with expansYon
VLYD         =-A41B    %      $   # Vector Load with expansYon
                                  + Double hfp
VLYE         =-A40B    %      $   # Vector Load with expansYon
                                  + Exponential hfp
VLZDR        =-A51B    %      $   # Vector Load Zero Double hfp into
                                  + Register
VLZER        =-A50B    %      $   # Vector Load Zero Exponential hfp
                                  + into Register
VLZR         =-A50B    %      $   # Vector Load Zero into Register
VM           =-A422    %      $   # Vector Multiply
VMAD         =-A414    %      $   # Vector Multiply and Add Double hfp
VMADQ        =-A594    %      $   # Vector Multiply and Add Double hfp
                                  + scalar to Qualified register
VMADS        =-A494    %      $   # Vector Multiply and Add Double hfp
                                  + scalar to Storage
VMAE         = E7AE    %      $ P # Vector Multiply and Add Even
VMAE         =-A404    %      $   # Vector Multiply and Add Exponential
                                  + hfp
VMAEB        = E7AE    % 0000 $ P # Vector Multiply and Add Even Byte
VMAEF        = E7AE    % 0010 $ P # Vector Multiply and Add Even
                                  + Fullword
VMAEG        = E7AE    % 0011 $ P # Vector Multiply and Add Even
                                  + Grande
VMAEH        = E7AE    % 0001 $ P # Vector Multiply and Add Even
                                  + Halfword
VMAEQ        =-A584    %      $   # Vector Multiply and Add Exponential
                                  + hfp scalar to Qualified register
VMAES        =-A484    %      $   # Vector Multiply and Add Exponential
                                  + hfp scalar to Storage
VMAH         = E7AB    %      $ P # Vector Multiply and Add High
VMAHB        = E7AB    % 0000 $ P # Vector Multiply and Add High Byte
VMAHF        = E7AB    % 0010 $ P # Vector Multiply and Add High
                                  + Fullword
VMAHG        = E7AB    % 0011 $ P # Vector Multiply and Add High
                                  + Grande
VMAHH        = E7AB    % 0001 $ P # Vector Multiply and Add High
                                  + Halfword
VMAHQ        = E7AB    % 0100 $ P # Vector Multiply and Add High
                                  + Quadword
VMAL         = E7AA    %      $ P # Vector Multiply and Add Low
VMALB        = E7AA    % 0000 $ P # Vector Multiply and Add Low Byte
VMALE        = E7AC    %      $ P # Vector Multiply and Add Logical
                                  + Even
VMALEB       = E7AC    % 0000 $ P # Vector Multiply and Add Logical
                                  + Even Byte
VMALEF       = E7AC    % 0010 $ P # Vector Multiply and Add Logical
                                  + Even Fullword
VMALEG       = E7AC    % 0011 $ P # Vector Multiply and Add Logical
                                  + Even Grande
VMALEH       = E7AC    % 0001 $ P # Vector Multiply and Add Logical
                                  + Even Halfword
VMALF        = E7AA    % 0010 $ P # Vector Multiply and Add Low
                                  + Fullword
VMALG        = E7AA    % 0011 $ P # Vector Multiply and Add Low
                                  + Grande
VMALH        = E7A9    %      $ P # Vector Multiply and Add Logical
                                  + High
VMALHB       = E7A9    % 0000 $ P # Vector Multiply and Add Logical
                                  + High Byte
VMALHF       = E7A9    % 0010 $ P # Vector Multiply and Add Logical
                                  + High Fullword
VMALHG       = E7A9    % 0011 $ P # Vector Multiply and Add Logical
                                  + High Grande
VMALHH       = E7A9    % 0001 $ P # Vector Multiply and Add Logical
                                  + High Halfword
VMALHQ       = E7A9    % 0100 $ P # Vector Multiply and Add Logical
                                  + High Quadword
VMALHW       = E7AA    % 0001 $ P # Vector Multiply and Add Low
                                  + HalfWord
VMALO        = E7AD    %      $ P # Vector Multiply and Add Logical Odd
VMALOB       = E7AD    % 0000 $ P # Vector Multiply and Add Logical Odd
                                  + Byte
VMALOF       = E7AD    % 0010 $ P # Vector Multiply and Add Logical Odd
                                  + Fullword
VMALOG       = E7AD    % 0011 $ P # Vector Multiply and Add Logical Odd
                                  + Grande
VMALOH       = E7AD    % 0001 $ P # Vector Multiply and Add Logical Odd
                                  + Halfword
VMALQ        = E7AA    % 0100 $ P # Vector Multiply and Add Low
                                  + Quadword
VMAO         = E7AF    %      $ P # Vector Multiply and Add Odd
VMAOB        = E7AF    % 0000 $ P # Vector Multiply and Add Odd Byte
VMAOF        = E7AF    % 0010 $ P # Vector Multiply and Add Odd
                                  + Fullword
VMAOG        = E7AF    % 0011 $ P # Vector Multiply and Add Odd Grande
VMAOH        = E7AF    % 0001 $ P # Vector Multiply and Add Odd
                                  + Halfword
VMCD         =-A416    %      $   # Vector Multiply and aCcumulate
                                  + Double hfp
VMCDR        =-A516    %      $   # Vector Multiply and aCcumulate
                                  + Double hfp Register
VMCE         =-A406    %      $   # Vector Multiply and aCcumulate
                                  + Exponential hfp
VMCER        =-A506    %      $   # Vector Multiply and aCcumulate
                                  + Exponential hfp Register
VMD          =-A412    %      $   # Vector Multiply Double hfp
VMDQ         =-A592    %      $   # Vector Multiply Double hfp scalar
                                  + with Qualified register
VMDR         =-A512    %      $   # Vector Multiply Double hfp Register
VMDS         =-A492    %      $   # Vector Multiply Double hfp scalar
                                  + with Storage
VME          = E7A6    %      $ P # Vector Multipy Even
VME          =-A402    %      $   # Vector Multiply Exponential hfp
VMEB         = E7A6    % 0000 $ P # Vector Multipy Even Byte
VMEF         = E7A6    % 0010 $ P # Vector Multipy Even Fullword
VMEG         = E7A6    % 0011 $ P # Vector Multipy Even Grande
VMEH         = E7A6    % 0001 $ P # Vector Multipy Even Halfword
VMEQ         =-A582    %      $   # Vector Multiply Exponential hfp
                                  + scalar with Qualified register
VMER         =-A502    %      $   # Vector Multiply Exponential hfp
                                  + Register
VMES         =-A482    %      $   # Vector Multiply Exponential hfp
                                  + scalar with Storage
VMH          = E7A3    %      $ P # Vector Multiply High
VMHB         = E7A3    % 0000 $ P # Vector Multiply High Byte
VMHF         = E7A3    % 0010 $ P # Vector Multiply High Fullword
VMHG         = E7A3    % 0011 $ P # Vector Multiply High Grande
VMHH         = E7A3    % 0001 $ P # Vector Multiply High Halfword
VMHQ         = E7A3    % 0100 $ P # Vector Multiply High Quadword
VML          = E7A2    %      $ P # Vector Multiply Low
VMLB         = E7A2    % 0000 $ P # Vector Multiply Low Byte
VMLE         = E7A4    %      $ P # Vector Multiply Logical Even
VMLEB        = E7A4    % 0000 $ P # Vector Multiply Logical Even Byte
VMLEF        = E7A4    % 0010 $ P # Vector Multiply Logical Even
                                  + Fullword
VMLEG        = E7A4    % 0011 $ P # Vector Multiply Logical Even
                                  + Grande
VMLEH        = E7A4    % 0001 $ P # Vector Multiply Logical Even
                                  + Halfword
VMLF         = E7A2    % 0010 $ P # Vector Multiply Low Fullword
VMLG         = E7A2    % 0011 $ P # Vector Multiply Low Grande
VMLH         = E7A1    %      $ P # Vector Multiply Logical High
VMLHB        = E7A1    % 0000 $ P # Vector Multiply Logical High Byte
VMLHF        = E7A1    % 0010 $ P # Vector Multiply Logical High
                                  + Fullword
VMLHG        = E7A1    % 0011 $ P # Vector Multiply Logical High
                                  + Grande
VMLHH        = E7A1    % 0001 $ P # Vector Multiply Logical High
                                  + Halfword
VMLHQ        = E7A1    % 0100 $ P # Vector Multiply Logical High
                                  + Quadword
VMLHW        = E7A2    % 0001 $ P # Vector Multiply Low HalfWord
VMLO         = E7A5    %      $ P # Vector Multiply Logical Odd
VMLOB        = E7A5    % 0000 $ P # Vector Multiply Logical Odd Byte
VMLOF        = E7A5    % 0010 $ P # Vector Multiply Logical Odd
                                  + Fullword
VMLOG        = E7A5    % 0011 $ P # Vector Multiply Logical Odd
                                  + Grande
VMLOH        = E7A5    % 0001 $ P # Vector Multiply Logical Odd
                                  + Halfword
VMLQ         = E7A2    % 0100 $ P # Vector Multiply Low Quadword
VMN          = E7FE    %      $ P # Vector MiNimum
VMNB         = E7FE    % 0000 $ P # Vector MiNimum Byte
VMNF         = E7FE    % 0010 $ P # Vector MiNimum Fullword
VMNG         = E7FE    % 0011 $ P # Vector MiNimum Grande
VMNH         = E7FE    % 0001 $ P # Vector MiNimum Halfword
VMNL         = E7FC    %      $ P # Vector MiNimum Logical
VMNLB        = E7FC    % 0000 $ P # Vector MiNimum Logical Byte
VMNLF        = E7FC    % 0010 $ P # Vector MiNimum Logical Fullword
VMNLG        = E7FC    % 0011 $ P # Vector MiNimum Logical Grande
VMNLH        = E7FC    % 0001 $ P # Vector MiNimum Logical Halfword
VMNLQ        = E7FC    % 0100 $ P # Vector MiNimum Logical Quadword
VMNQ         = E7FE    % 0100 $ P # Vector MiNimum Quadword
VMNSD        =-A611    %      $   # Vector MiNimum Signed Double hfp
VMNSE        =-A601    %      $   # Vector MiNimum Signed Exponential
                                  + hfp
VMO          = E7A7    %      $ P # Vector Multiply Odd
VMOB         = E7A7    % 0000 $ P # Vector Multiply Odd Byte
VMOF         = E7A7    % 0010 $ P # Vector Multiply Odd Fullword
VMOG         = E7A7    % 0011 $ P # Vector Multiply Odd Grande
VMOH         = E7A7    % 0001 $ P # Vector Multiply Odd Halfword
VMP          = E678    %      $ P # Vector Multiply Packed decimal
VMQ          =-A5A2    %      $   # Vector Multiply scalar with
                                  + Qualified register
VMR          =-A522    %      $   # Vector Multiply Register
VMRH         = E761    %      $ P # Vector MeRge High
VMRHB        = E761    % 0000 $ P # Vector MeRge High Byte
VMRHF        = E761    % 0010 $ P # Vector MeRge High Fullword
VMRHG        = E761    % 0011 $ P # Vector MeRge High Grande
VMRHH        = E761    % 0001 $ P # Vector MeRge High Halfword
VMRL         = E760    %      $ P # Vector MeRge Low
VMRLB        = E760    % 0000 $ P # Vector MeRge Low Byte
VMRLF        = E760    % 0010 $ P # Vector MeRge Low Fullword
VMRLG        = E760    % 0011 $ P # Vector MeRge Low Grande
VMRLH        = E760    % 0001 $ P # Vector MeRge Low Halfword
VMRRS        =-A6C3    %      $   # Vector Mask Register ReStore
VMRSV        =-A6C1    %      $   # Vector Mask Register SaVe
VMS          =-A4A2    %      $   # Vector Multiply scalar with Storage
VMSD         =-A415    %      $   # Vector Multiply and Subtract Double
                                  + hfp
VMSDQ        =-A595    %      $   # Vector Multiply and Subtract Double
                                  + hfp scalar and Qualified register
VMSDS        =-A495    %      $   # Vector Multiply and Subtract Double
                                  + hfp scalar and Storage
VMSE         =-A405    %      $   # Vector Multiply and Subtract
                                  + Exponential hfp
VMSEQ        =-A585    %      $   # Vector Multiply and Subtract
                                  + Exponential hfp scalar and
                                  + Qualified register
VMSES        =-A485    %      $   # Vector Multiply and Subtract
                                  + Exponential hfp scalar and Storage
VMSL         = E7B8    %      $ P # Vector Multiply Sum Logical
VMSLG        = E7B8    % 0011 $ P # Vector Multiply Sum Logical Grande
VMSP         = E679    %      $ P # Vector Multiply an Shift Packed
                                  + decimal
VMX          = E7FF    %      $ P # Vector MaXimum
VMXAD        =-A612    %      $   # Vector MaXimum Absolute Double hfp
VMXAE        =-A602    %      $   # Vector MaXimum Absolute Exponential
                                  + hfp
VMXB         = E7FF    % 0000 $ P # Vector MaXimum Byte
VMXF         = E7FF    % 0010 $ P # Vector MaXimum Fullword
VMXG         = E7FF    % 0011 $ P # Vector MaXimum Grande
VMXH         = E7FF    % 0001 $ P # Vector MaXimum Halfword
VMXL         = E7FD    %      $ P # Vector MaXimum Logical
VMXLB        = E7FD    % 0000 $ P # Vector MaXimum Logical Byte
VMXLF        = E7FD    % 0010 $ P # Vector MaXimum Logical Fullword
VMXLG        = E7FD    % 0011 $ P # Vector MaXimum Logical Grande
VMXLH        = E7FD    % 0001 $ P # Vector MaXimum Logical Halfword
VMXLQ        = E7FD    % 0100 $ P # Vector MaXimum Logical Quadword
VMXQ         = E7FF    % 0100 $ P # Vector MaXimum Quadword
VMXSD        =-A610    %      $   # Vector MaXimum Signed Double hfp
VMXSE        =-A600    %      $   # Vector MaXimum Signed Exponential
                                  + hfp
VN           = E768    %      $ P # Vector aNd
VN           =-A424    %      $   # Vector aNd
VNC          = E769    %      $ P # Vector aNd with Complement
VNN          = E76E    %      $ P # Vector Not-aNd
VNO          = E76B    %      $ P # Vector Not-Or
VNOT         = E76B    % --   $ P # Vector NOT
VNQ          =-A5A4    %      $   # Vector aNd scalar to Qualified
                                  + register
VNR          =-A524    %      $   # Vector aNd Register
VNS          =-A4A4    %      $   # Vector aNd scalar to Storage
VNVM         =-A684    %      $   # Vector aNd to Vector Mask register
VNX          = E76C    %      $ P # Vecctor Not-eXclusive-or
VO           = E76A    %      $ P # Vector Or
VO           =-A425    %      $   # Vector Or
VOC          = E76F    %      $ P # Vector Or with Complement
VONE         = E744    % --   $ P # Vector set to all ONEs
VOQ          =-A5A5    %      $   # Vector Or scalar to Qualified
                                  + register
VOR          =-A525    %      $   # Vector Or Register
VOS          =-A4A5    %      $   # Vector Or scalar to Storage
VOVM         =-A685    %      $   # Vector Or to Vector Mask register
VPDI         = E784    %      $ P # Vector Permute Doubleword Immediate
VPERM        = E78C    %      $ P # Vector PERMute
VPK          = E794    %      $ P # Vector PacK
VPKF         = E794    % 0010 $ P # Vector PacK Fullword
VPKG         = E794    % 0011 $ P # Vector PacK Grande
VPKH         = E794    % 0001 $ P # Vector PacK Halfword
VPKLS        = E795    %           $ P # Vector PacK Logical Saturate
VPKLSF       = E795    % 0010.0000 $ P # Vector PacK Logical Saturate
                                       + Fullword
VPKLSFS      = E795    % 0010.0001 $ P # Vector PacK Logical Saturate
                                       + Fullword and Set cc
VPKLSG       = E795    % 0011.0000 $ P # Vector PacK Logical Saturate
                                       + Grande
VPKLSGS      = E795    % 0011.0001 $ P # Vector PacK Logical Saturate
                                       + Grande and Set cc
VPKLSH       = E795    % 0001.0000 $ P # Vector PacK Logical Saturate
                                       + Halfword
VPKLSHS      = E795    % 0001.0001 $ P # Vector PacK Logical Saturate
                                       + Halfword and Set cc
VPKS         = E797    %           $ P # Vector PacK Saturate
VPKSF        = E797    % 0010.0000 $ P # Vector PacK Saturate Fullword
VPKSFS       = E797    % 0010.0001 $ P # Vector PacK Saturate Fullword
                                       + and Set cc
VPKSG        = E797    % 0011.0000 $ P # Vector PacK Saturate Grande
VPKSGS       = E797    % 0011.0001 $ P # Vector PacK Saturate Grande
                                       + and Set cc
VPKSH        = E797    % 0001.0000 $ P # Vector PacK Saturate Halfword
VPKSHS       = E797    % 0001.0001 $ P # Vector PacK Saturate Halfword
                                       + and Set cc
VPKZ         = E634    %      $ P # Vector PacK Zoned
VPKZR        = E670    %      $ P # Vector PacK Zoned Register
VPOPCT       = E750    %      $ P # Vector POPulation CounT
VPOPCTB      = E750    % 0000 $ P # Vector POPulation CounT Byte
VPOPCTF      = E750    % 0010 $ P # Vector POPulation CounT Fullword
VPOPCTG      = E750    % 0011 $ P # Vector POPulation CounT Grande
VPOPCTH      = E750    % 0001 $ P # Vector POPulation CounT Halfword
VPSOP        = E65B    %      $ P # Vector Perform Sign Operation
                                  + Packed decimal
VR           = E7B3    %      $ P # Vector Remainder
VRCL         =-A6C5    %      $   # Vector Register CLear
VREP         = E74D    %      $ P # Vector REPlicate
VREPB        = E74D    % 0000 $ P # Vector REPlicate Byte
VREPF        = E74D    % 0010 $ P # Vector REPlicate Fullword
VREPG        = E74D    % 0011 $ P # Vector REPlicate Grande
VREPH        = E74D    % 0001 $ P # Vector REPlicate Halfword
VREPI        = E745    %      $ P # Vector REPlicate Immediate
VREPIB       = E745    % 0000 $ P # Vector REPlicate Immediate Byte
VREPIF       = E745    % 0010 $ P # Vector REPlicate Immediate Fullword
VREPIG       = E745    % 0011 $ P # Vector REPlicate Immediate Grande
VREPIH       = E745    % 0001 $ P # Vector REPlicate Immediate Halfword
VRF          = E7B3    % 0010 $ P # Vector Remainder Fullword
VRG          = E7B3    % 0011 $ P # Vector Remainder Grande
VRL          = E7B1    %      $ P # Vector Reaminder Logical
VRLF         = E7B1    % 0010 $ P # Vector Reaminder Logical Fullword
VRLG         = E7B1    % 0011 $ P # Vector Reaminder Logical Grande
VRLQ         = E7B1    % 0100 $ P # Vector Reaminder Logical Quadword
VRP          = E67B    %      $ P # Vector Remainder Packed decimal
VRQ          = E7B3    % 0100 $ P # Vector Remainder Quadword
VRRS         =-A648    %      $   # Vector Register ReStore
VRSV         =-A64A    %      $   # Vector Register SaVe
VRSVC        =-A649    %      $   # Vector Register SaVe Changed
                                  + registers
VS           =-A421    %      $   # Vector Subtract
VS           = E7F7    %      $ P # Vector Subtract
VSB          = E7F7    % 0000 $ P # Vector Subtract Byte
VSBCBI       = E7BD    %      $ P # Vector Subtract with Borrow
                                  + Compute Borrow Indication
VSBCBIQ      = E7BD    % 0100 $ P # Vector Subtract with Borrow
                                  + Compute Borrow Indication Quadword
VSBI         = E7BF    %      $ P # Vector Subtract with Borrow
                                  + Indication
VSBIQ        = E7BF    % 0100 $ P # Vector Subtract with Borrow
                                  + Indication Quadword
VSCBI        = E7F5    %      $ P # Vector Subtract Compute Borrow
                                  + Indication
VSCBIB       = E7F5    % 0000 $ P # Vector Subtract Compute Borrow
                                  + Indication Byte
VSCBIF       = E7F5    % 0010 $ P # Vector Subtract Compute Borrow
                                  + Indication Fullword
VSCBIG       = E7F5    % 0011 $ P # Vector Subtract Compute Borrow
                                  + Indication Grande
VSCBIH       = E7F5    % 0001 $ P # Vector Subtract Compute Borrow
                                  + Indication Halfword
VSCBIQ       = E7F5    % 0100 $ P # Vector Subtract Compute Borrow
                                  + Indication Quadword
VSCEF        = E71B    %      $ P # Vector SCatter Element Fullword
VSCEG        = E71A    %      $ P # Vector SCatter Element Grande
VSCHDP       = E674    % 0011 $ P # Vector Scale and Convert Hex Double
                                  + floating point from Packed decimal
VSCHP        = E674    %      $ P # Vector Scale and Convert Hfp from
                                  + Packed decimal
VSCHSP       = E674    % 0010 $ P # Vector Scale and Convert Hex Short
                                  + floating point from Packed decimal
VSCHXP       = E674    % 0100 $ P # Vector Scale and Convert Hex
                                  + eXtended floating point from Packed
                                  + decimal
VSCSHP       = E67C    %      $ P # Vector Scale and Convert and Split
                                  + Hex floating point from Packed
                                  + decimal
VSD          =-A411    %      $   # Vector Subtract Double hfp
VSDP         = E67E    %      $ P # Vector Shift and Divide Packed
                                  + decimal
VSDQ         =-A591    %      $   # Vector Subtract Double hfp scalar
                                  + from Qualified register
VSDR         =-A511    %      $   # Vector Subtract Double hfp Register
VSDS         =-A491    %      $   # Vector Subtract Double hfp scalar
                                  + from Storage
VSE          =-A401    %      $   # Vector Subtract Exponential hfp
VSEG         = E75F    %      $ P # Vector Sign Extend to Grande
VSEGB        = E75F    % 0000 $ P # Vector Sign Extend to Grande from
                                  + Byte
VSEGF        = E75F    % 0010 $ P # Vector Sign Extend to Grande from
                                  + Fullword
VSEGH        = E75F    % 0001 $ P # Vector Sign Extend to Grande from
                                  + Halfword
VSEL         = E78D    %      $ P # Vector SELect
VSEQ         =-A581    %      $   # Vector Subtract Exponential hfp
                                  + scalar from Qualified register
VSER         =-A501    %      $   # Vector Subtract Exponential hfp
                                  + Register
VSES         =-A481    %      $   # Vector Subtract Exponential hfp
                                  + scalar from Storage
VSF          = E7F7    % 0010 $ P # Vector Subtract Fullword
VSG          = E7F7    % 0011 $ P # Vector Subtract Grande
VSH          = E7F7    % 0001 $ P # Vector Subtract Halfword
VSL          = E774    %      $ P # Vector Shift Left
VSLB         = E775    %      $ P # Vector Shift Left by Byte
VSLD         = E786    %      $ P # Vector Shift Left Double
VSLDB        = E777    %      $ P # Vector Shift Left Double by Byte
VSLL         =-E425    %      $   # Vector Shift Left single Logical
VSP          = E673    %      $ P # Vector Subtract Packed decimal
VSPSD        =-A61A    %      $   # Vector Sum Partial Sums Double hfp
VSQ          = E7F7    % 0100 $ P # Vector Subtract Quadword
VSQ          =-A5A1    %      $   # Vector Subtract scalar from
                                  + Qualified register
VSQD         =-A453    %      $   # Vector SQuare root of Double hfp
VSQDR        =-A553    %      $   # Vector SQuare root of Double hfp
                                  + Register
VSQE         =-A443    %      $   # Vector SQuare root of Exponential
                                  + hfp
VSQER        =-A543    %      $   # Vector SQuare root of Exponential
                                  + hfp Register
VSR          =-A521    %      $   # Vector Subtract Register
VSRA         = E77E    %      $ P # Vector Shift Right Arithmetic
VSRAB        = E77F    %      $ P # Vector Shift Right Arithmetic by
                                  + Byte
VSRD         = E787    %      $ P # Vector Shift Right Double
VSRL         =-E424    %      $   # Vector Shift Right single Logical
VSRL         = E77C    %      $ P # Vector Shift Right Logical
VSRLB        = E77D    %      $ P # Vector Shift Right Logical by Byte
VSRP         = E659    %      $ P # Vector Shift and Round Packed
                                  + decimal
VSRPR        = E672    %      $ P # Vector Shift and Round Packed
                                  + decimal Register
VSRRS        =-A6C2    %      $   # Vector Status Register ReStore
VSRSV        =-A6C0    %      $   # Vector Status Register SaVe
VSS          =-A4A1    %      $   # Vector Subtract scalar from Storage
VST          =-A40D    %      $   # Vector STore
VST          = E70E    %      $ P # Vector STore
VSTBR        = E60E    %      $ P # Vector STore Byte Reversed elements
VSTBRF       = E60E    % 0010 $ P # Vector STore Byte Reversed elements
                                  + Fullword
VSTBRG       = E60E    % 0011 $ P # Vector STore Byte Reversed elements
                                  + Grande
VSTBRH       = E60E    % 0001 $ P # Vector STore Byte Reversed elements
                                  + Halfword
VSTBRQ       = E60E    % 0100 $ P # Vector STore Byte Reversed elements
                                  + Quadword
VSTD         =-A41D    %      $   # Vector STore Double hfp
VSTE         =-A40D    %      $   # Vector STore Exponential hfp
VSTEB        = E708    %      $ P # Vector STore Element Byte
VSTEBRF      = E60B    %      $ P # Vector STore Element Byte Reversed
                                  + Fullword
VSTEBRG      = E60A    %      $ P # Vector STore Element Byte Reversed
                                  + Grande
VSTEBRH      = E609    %      $ P # Vector STore Element Byte Reversed
                                  + Halfword
VSTEF        = E70B    %      $ P # Vector STore Element Fullword
VSTEG        = E70A    %      $ P # Vector STore Element Grande
VSTEH        = E709    %      $ P # Vector STore Element Halfword
VSTER        = E60F    %      $ P # Vector STore Elements Reversed
VSTERF       = E60F    % 0010 $ P # Vector STore Elements Reversed
                                  + Fullword
VSTERG       = E60F    % 0011 $ P # Vector STore Elements Reversed
                                  + Grande
VSTERH       = E60F    % 0001 $ P # Vector STore Elements Reversed
                                  + Halfword
VSTH         =-A42D    %      $   # Vector STore Halfword
VSTI         =-E401    %      $   # Vector STore Indirect
VSTID        =-E411    %      $   # Vector STore Indirect Double hfp
VSTIE        =-E401    %      $   # Vector STore Indirect Exponential
                                  + hfp
VSTK         =-A40F    %      $   # Vector STore Kompressed
VSTKD        =-A41F    %      $   # Vector STore Kompressed Double
                                  + hfp
VSTKE        =-A40F    %      $   # Vector STore Kompressed
                                  + Exponential hfp
VSTL         = E73F    %      $ P # Vector STore with Length
VSTM         =-A40E    %      $   # Vector STore Matched
VSTM         = E73E    %      $ P # Vector STore Multiple
VSTMD        =-A41E    %      $   # Vector STore Matched Double hfp
VSTME        =-A40E    %      $   # Vector STore Matched Exponential
                                  + hfp
VSTRC        = E78A    %           $ P # Vector STRing range Compare
VSTRCB       = E78A    % 0000      $ P # Vector STRing range Compare
                                       + Byte
VSTRCBS      = E78A    % 0000.0001 $ P # Vector STRing range Compare
                                       + Byte and Set cc
VSTRCF       = E78A    % 0010      $ P # Vector STRing range Compare
                                       + Fullword
VSTRCFS      = E78A    % 0010.0001 $ P # Vector STRing range Compare
                                       + Fullword and Set cc
VSTRCH       = E78A    % 0001      $ P # Vector STRing range Compare
                                       + Halfword
VSTRCHS      = E78A    % 0001.0001 $ P # Vector STRing range Compare
                                       + Halfword and Set cc
VSTRCZB      = E78A    % 0000.0010 $ P # Vector STRing range Compare
                                       + including Zero by Byte
VSTRCZBS     = E78A    % 0000.0011 $ P # Vector STRing range Compare
                                       + including Zero by Byte and Set
                                       + cc
VSTRCZF      = E78A    % 0010.0010 $ P # Vector STRing range Compare
                                       + including Zero by Fullword
VSTRCZFS     = E78A    % 0010.0011 $ P # Vector STRing range Compare
                                       + including Zero by Fullword and
                                       + Set cc
VSTRCZH      = E78A    % 0001.0010 $ P # Vector STRing range Compare
                                       + including Zero by Halfword
VSTRCZHS     = E78A    % 0001.0011 $ P # Vector STRing range Compare
                                       + including Zero by Halfword and
                                       + Set cc
VSTRL        = E63D    %      $ P      # Vector STore Rightmost with
                                       + Length
VSTRLR       = E63F    %      $ P      # Vector STore Rightmost with
                                       + Length Register
VSTRS        = E78B    %      $ P      # Vector STRing Search
VSTRSB       = E78B    % 0000 $ P      # Vector STRing Search Byte
VSTRSF       = E78B    % 0010 $ P      # Vector STRing Search Fullword
VSTRSH       = E78B    % 0001 $ P      # Vector STRing Search Halfword
VSTRSZB      = E78B    % 0000.0010 $ P # Vector STRing Search
                                       + Zero-delimited Byte
VSTRSZF      = E78B    % 0010.0010 $ P # Vector STRing Search
                                       + Zero-delimited Fullword
VSTRSZH      = E78B    % 0001.0010 $ P # Vector STRing Search
                                       + Zero-delimited Halfword
VSTVM        =-A682    %      $   # Vector STore Vector Mask register
VSTVP        =-A6C8    %      $   # Vector STore Vector Parameters
VSUM         = E764    %      $ P # Vector SUM across word
VSUMB        = E764    % 0000 $ P # Vector SUM across word per Byte
VSUMG        = E765    %      $ P # Vector SUM across Grande
VSUMGF       = E765    % 0010 $ P # Vector SUM across Grande per
                                  + Fullword
VSUMGH       = E765    % 0001 $ P # Vector SUM across Grande per
                                  + Halfword
VSUMH        = E764    % 0001 $ P # Vector SUM across word per Halfword
VSUMQ        = E767    %      $ P # Vector SUM across Quadword
VSUMQF       = E767    % 0010 $ P # Vector SUM across Quadword per
                                  + Fullword
VSUMQG       = E767    % 0011 $ P # Vector SUM across Quadword per
                                  + Grande
VSVMM        =-A6C6    %      $   # Vector Set Vector Mask Mode
VTAD         =-A454    %      $   # Vector multiply Then Add Double hfp
VTAE         =-A444    %      $   # Vector multiply Then Add
                                  + Exponential hfp
VTM          = E7D8    %      $ P # Vector Test under Mask
VTP          = E65F    %      $ P # Vector Test Packed decimal
VTSD         =-A455    %      $   # Vector multiply Then Subtract
                                  + Double hfp
VTSE         =-A445    %      $   # Vector multiply Then Subtract
                                  + Exponential hfp
VTVM         =-A640    %      $   # Vector Test Vector Mask register
VTZ          = E67F    %      $ P # Vector Test Zoned decimal
VUPH         = E7D7    %      $ P # Vector UnPack High
VUPHB        = E7D7    % 0000 $ P # Vector UnPack High Byte
VUPHF        = E7D7    % 0010 $ P # Vector UnPack High Fullword
VUPHG        = E7D7    % 0011 $ P # Vector UnPack High Grande
VUPHH        = E7D7    % 0001 $ P # Vector UnPack High Halfword
VUPKZ        = E63C    %      $ P # Vector UnPacK Zoned
VUPKZH       = E654    %      $ P # Vector UnPacK Zoned High
VUPKZL       = E65C    %      $ P # Vector UnPacK Zoned Low
VUPL         = E7D6    %      $ P # Vector UnPack Low
VUPLB        = E7D6    % 0000 $ P # Vector UnPack Low Byte
VUPLF        = E7D6    % 0010 $ P # Vector UnPack Low Fullword
VUPLG        = E7D6    % 0011 $ P # Vector UnPack Low Grande
VUPLH        = E7D5    %      $ P # Vector UnPack Logical High
VUPLHB       = E7D5    % 0000 $ P # Vector UnPack Logical High Byte
VUPLHF       = E7D5    % 0010 $ P # Vector UnPack Logical High Fullword
VUPLHG       = E7D5    % 0011 $ P # Vector UnPack Logical High Grande
VUPLHH       = E7D5    % 0001 $ P # Vector UnPack Logical High Halfword
VUPLHW       = E7D6    % 0001 $ P # Vector UnPack Low HalfWord
VUPLL        = E7D4    %      $ P # Vector UnPack Logical Low
VUPLLB       = E7D4    % 0000 $ P # Vector UnPack Logical Low Byte
VUPLLF       = E7D4    % 0010 $ P # Vector UnPack Logical Low Fullword
VUPLLG       = E7D4    % 0011 $ P # Vector UnPack Logical Low Grande
VUPLLH       = E7D4    % 0001 $ P # Vector UnPack Logical Low Halfword
VX           = E76D    %      $ P # Vector eXclusive-or
VX           =-A426    %      $   # Vector eXclusive-or
VXEL         =-A629    %      $   # Vector eXtract ELement
VXELD        =-A619    %      $   # Vector eXtract ELement Double hfp
VXELE        =-A609    %      $   # Vector eXtract ELement Exponential
                                  + hfp
VXQ          =-A5A6    %      $   # Vector eXclusive-or scalar with
                                  + Qualified register
VXR          =-A526    %      $   # Vector eXclusive-or Register
VXS          =-A4A6    %      $   # Vector eXclusive-or scalar with
                                  + Storage
VXVC         =-A644    %      $   # Vector eXtract Vector Count
VXVM         =-A686    %      $   # Vector eXclusive-or to Vector Mask
                                  + register
VXVMM        =-A646    %      $   # Vector eXtract Vector Mask Mode
VZERO        = E744    % --   $ P # Vector set to all ZEROes
VZPSD        =-A61B    %      $   # Vector Zero Partial Sums Double hfp
WCDGB        = E7C3    % 0011.1000 $ P # Would-be vector Convert Double
                                       + bfp from Grande to Bfp
WCDLGB       = E7C1    % 0011.1000 $ P # Would-be vector Convert Double
                                       + bfp from Logical Grande to Bfp
WCEFB        = E7C3    % 0010.1000 $ P # Would-be vector Convert
                                       + Exponential bfp from Fullword
                                       + to Bfp
WCELFB       = E7C1    % 0010.1000 $ P # Would-be vector Convert
                                       + Exponential bfp from Logical
                                       + Fullword to Bfp
WCFEB        = E7C2    % 0010.1000 $ P # Would-be vector Convert
                                       + Fullword from Exponential Bfp
WCGDB        = E7C2    % 0011.1000 $ P # Would-be vector Convert Grande
                                       + from Double Bfp
WCLFEB       = E7C0    % 0010.1000 $ P # Would-be vector Convert
                                       + Logical Fullword from
                                       + Exponential Bfp
WCLGDB       = E7C0    % 0011.1000 $ P # Would-be vector Convert
                                       + Logical Grande from Double Bfp
WFADB        = E7E3    % 0011.1000 $ P # Would-be vector Floating point
                                       + Add Double Bfp
WFASB        = E7E3    % 0010.1000 $ P # Would-be vector Floating point
                                       + Add Single Bfp
WFAXB        = E7E3    % 0100.1000 $ P # Would-be vector Floating point
                                       + Add eXtended Bfp
WFC          = E7CB    %           $ P # Would-be vector Floating point
                                       + Compare scalar
WFCDB        = E7CB    % 0011.0000 $ P # Would-be vector Floating point
                                       + Compare scalar Double Bfp
WFCEDB       = E7E8    % 0011.1000.0000 $ P # Would-be vector Floating
                                            + point Compare Equal
                                            + Double Bfp
WFCEDBS      = E7E8    % 0011.1000.0001 $ P # Would-be vector Floating
                                            + point Compare Equal
                                            + Double Bfp and Set cc
WFCESB       = E7E8    % 0010.1000.0000 $ P # Would-be vector Floating
                                            + point Compare Equal
                                            +  Single Bfp
WFCESBS      = E7E8    % 0010.1000.0001 $ P # Would-be vector Floating
                                            + point Compare Equal
                                            + Single Bfp and Set cc
WFCEXB       = E7E8    % 0100.1000.0000 $ P # Would-be vector Floating
                                            + point Compare Equal
                                            + eXtended Bfp
WFCEXBS      = E7E8    % 0100.1000.0001 $ P # Would-be vector Floating
                                            + point Compare Equal
                                            + eXtended Bfp and Set cc
WFCHDB       = E7EB    % 0011.1000.0000 $ P # Would-be vector Floating
                                            + point Compare High Double
                                            + Bfp
WFCHDBS      = E7EB    % 0011.1000.0001 $ P # Would-be vector Floating
                                            + point Compare High Double
                                            + Bfp and Set cc
WFCHEDB      = E7EA    % 0011.1000.0000 $ P # Would-be vector Floating
                                            + point Compare High or
                                            + Equal Double Bfp
WFCHEDBS     = E7EA    % 0011.1000.0001 $ P # Would-be vector Floating
                                            + point Compare High or
                                            + Equal Double Bfp and Set
                                            + cc
WFCHESB      = E7EA    % 0010.1000.0000 $ P # Would-be vector Floating
                                            + point Compare High or
                                            + Equal Single Bfp
WFCHESBS     = E7EA    % 0010.1000.0001 $ P # Would-be vector Floating
                                            + point Compare High or
                                            + Equal Single Bfp and Set
                                            + cc
WFCHEXB      = E7EA    % 0100.1000.0000 $ P # Would-be vector Floating
                                            + point Compare High or
                                            + Equal eXtended Bfp
WFCHEXBS     = E7EA    % 0100.1000.0001 $ P # Would-be vector Floating
                                            + point Compare High or
                                            + Equal eXtended Bfp and
                                            + Set cc
WFCHSB       = E7EB    % 0010.1000.0000 $ P # Would-be vector Floating
                                            + point Compare High Single
                                            + Bfp
WFCHSBS      = E7EB    % 0010.1000.0001 $ P # Would-be vector Floating
                                            + point Compare High Single
                                            + Bfp and Set cc
WFCHXB       = E7EB    % 0100.1000.0000 $ P # Would-be vector Floating
                                            + point Compare High
                                            + eXtended Bfp
WFCHXBS      = E7EB    % 0100.1000.0001 $ P # Would-be vector Floating
                                            + point Compare High
                                            + eXtended Bfp and Set cc
WFCSB        = E7CB    % 0010.0000 $ P # Would-be vector Floating point
                                       + Compare scalar Single Bfp
WFCXB        = E7CB    % 0100.0000 $ P # Would-be vector Floating point
                                       + Compare scalar eXtended Bfp
WFDDB        = E7E5    % 0011.1000 $ P # Would-be vector Floating point
                                       + Divide Double Bfp
WFDSB        = E7E5    % 0010.1000 $ P # Would-be vector Floating point
                                       + Divide Single Bfp
WFDXB        = E7E5    % 0100.1000 $ P # Would-be vector Floating point
                                       + Divide eXtended Bfp
WFIDB        = E7C7    % 0011.1000 $ P # Would-be vector load Floating
                                       + point Integer Double Bfp
WFISB        = E7C7    % 0010.1000 $ P # Would-be vector load Floating
                                       + point Integer Single Bfp
WFIXB        = E7C7    % 0100.1000 $ P # Would-be vector load Floating
                                       + point Integer eXtended Bfp
WFK          = E7CA    %           $ P # Would-be vector Floating point
                                       + Kompare and signal scalar
WFKDB        = E7CA    % 0011.0000 $ P # Would-be vector Floating point
                                       + Kompare and signal scalar
                                       + Double Bfp
WFKEDB       = E7E8    % 0011.1100.0000 $ P # Would-be vector Floating
                                            + point Kompare and signal
                                            + Equal Double Bfp
WFKEDBS      = E7E8    % 0011.1100.0001 $ P # Would-be vector Floating
                                            + point Kompare and signal
                                            + Equal Double Bfp
                                            + and Set cc
WFKESB       = E7E8    % 0010.1100.0000 $ P # Would-be vector Floating
                                            + point Kompare and signal
                                            + Equal Single Bfp
WFKESBS      = E7E8    % 0010.1100.0001 $ P # Would-be vector Floating
                                            + point Kompare and signal
                                            + Equal Single Bfp
                                            + and Set cc
WFKEXB       = E7E8    % 0100.1100.0000 $ P # Would-be vector Floating
                                            + point Kompare and signal
                                            + Equal eXtended Bfp
WFKEXBS      = E7E8    % 0100.1100.0001 $ P # Would-be vector Floating
                                            + point Kompare and signal
                                            + Equal eXtended Bfp
                                            + and Set cc
WFKHDB       = E7EB    % 0011.1100.0000 $ P # Would-be vector Floating
                                            + point Kompare and signal
                                            + High Double Bfp
WFKHDBS      = E7EB    % 0011.1100.0001 $ P # Would-be vector Floating
                                            + point Kompare and signal
                                            + High Double Bfp and
                                            + Set cc
WFKHEDB      = E7EA    % 0011.1100.0000 $ P # Would-be vector Floating
                                            + point Kompare and signal
                                            + High or Equal Double
                                            + Bfp
WFKHEDBS     = E7EA    % 0011.1100.0001 $ P # Would-be vector Floating
                                            + point Kompare and signal
                                            + High or Equal Double
                                            + Bfp and Set cc
WFKHESB      = E7EA    % 0010.1100.0000 $ P # Would-be vector Floating
                                            + point Kompare and signal
                                            + High or Equal Single
                                            + Bfp
WFKHESBS     = E7EA    % 0010.1100.0001 $ P # Would-be vector Floating
                                            + point Kompare and signal
                                            + High or Equal Single
                                            + Bfp and Set cc
WFKHEXB      = E7EA    % 0100.1100.0000 $ P # Would-be vector Floating
                                            + point Kompare and signal
                                            + High or Equal
                                            + eXtended Bfp
WFKHEXBS     = E7EA    % 0100.1100.0001 $ P # Would-be vector Floating
                                            + point Kompare and signal
                                            + High or Equal
                                            + eXtended Bfp and Set cc
WFKHSB       = E7EB    % 0010.1100.0000 $ P # Would-be vector Floating
                                            + point Kompare and signal
                                            + High Single Bfp
WFKHSBS      = E7EB    % 0010.1100.0001 $ P # Would-be vector Floating
                                            + point Kompare and signal
                                            + High Single Bfp and
                                            + Set cc
WFKHXB       = E7EB    % 0100.1100.0000 $ P # Would-be vector Floating
                                            + point Kompare and signal
                                            + High eXtended Bfp
WFKHXBS      = E7EB    % 0100.1100.0001 $ P # Would-be vector Floating
                                            + point Kompare and signal
                                            + High eXtended Bfp and
                                            + Set cc
WFKSB        = E7CA    % 0010.0000 $ P # Would-be vector Floating point
                                       + Kompare and signal scalar
                                       + Single Bfp
WFKXB        = E7CA    % 0100.0000 $ P # Would-be vector Floating point
                                       + Kompare and signal scalar
                                       + eXtended Bfp
WFLCDB       = E7CC    % 0011.1000.0000 $ P # Would-be vector Floating
                                            + point Load Complement
                                            + Double Bfp
WFLCSB       = E7CC    % 0010.1000.0000 $ P # Would-be vector Floating
                                            + point Load Complement
                                            + Single Bfp
WFLCXB       = E7CC    % 0100.1000.0000 $ P # Would-be vector Floating
                                            + point Load Complement
                                            + eXtended Bfp
WFLLD        = E7C4    % 0011.1000 $ P # Would-be vector Floating point
                                       + Load Lengthened Double bfp
WFLLS        = E7C4    % 0010.1000 $ P # Would-be vector Floating point
                                       + Load Lengthened Single bfp
WFLNDB       = E7CC    % 0011.1000.0001 $ P # Would-be vector Floating
                                            + point Load Negative
                                            + Double Bfp
WFLNSB       = E7CC    % 0010.1000.0001 $ P # Would-be vector Floating
                                            + point Load Negative
                                            + Single Bfp
WFLNXB       = E7CC    % 0100.1000.0001 $ P # Would-be vector Floating
                                            + point Load Negative
                                            + eXtended Bfp
WFLPDB       = E7CC    % 0011.1000.0010 $ P # Would-be vector Floating
                                            + point Load Positive
                                            + Double Bfp
WFLPSB       = E7CC    % 0010.1000.0010 $ P # Would-be vector Floating
                                            + point Load Positive
                                            + Single Bfp
WFLPXB       = E7CC    % 0100.1000.0010 $ P # Would-be vector Floating
                                            + point Load Positive
                                            + eXtended Bfp
WFLRD        = E7C5    % 0011.1000 $ P # Would-be vector Floating point
                                       + Load Rounded Double bfp
WFLRX        = E7C5    % 0100.1000 $ P # Would-be vector Floating point
                                       + Load Rounded eXtended bfp
WFMADB       = E78F    % 1000.0011 $ P # Would-be vector Floating point
                                       + Multiply and Add Double Bfp
WFMASB       = E78F    % 1000.0010 $ P # Would-be vector Floating point
                                       + Multiply and Add Single Bfp
WFMAXB       = E78F    % 1000.0100 $ P # Would-be vector Floating point
                                       + Multiply and Add eXtended Bfp
WFMAXDB      = E7EF    % 0011.1000 $ P # Would-be vector Floating point
                                       + MAXimum Double Bfp
WFMAXSB      = E7EF    % 0010.1000 $ P # Would-be vector Floating point
                                       + MAXimum Single Bfp
WFMAXXB      = E7EF    % 0100.1000 $ P # Would-be vector Floating point
                                       + MAXimum eXtended Bfp
WFMDB        = E7E7    % 0011.1000 $ P # Would-be vector Floating point
                                       + Multiply Double Bfp
WFMINDB      = E7EE    % 0011.1000 $ P # Would-be vector Floating point
                                       + MINimum Double Bfp
WFMINSB      = E7EE    % 0010.1000 $ P # Would-be vector Floating point
                                       + MINimum Single Bfp
WFMINXB      = E7EE    % 0100.1000 $ P # Would-be vector Floating point
                                       + MINimum eXtended Bfp
WFMSB        = E7E7    % 0010.1000 $ P # Would-be vector Floating point
                                       + Multiply Single Bfp
WFMSDB       = E78E    % 1000.0011 $ P # Would-be vector Floating point
                                       + Multiply and Subtract Double
                                       + Bfp
WFMSSB       = E78E    % 1000.0010 $ P # Would-be vector Floating point
                                       + Multiply and Subtract Single
                                       + Bfp
WFMSXB       = E78E    % 1000.0100 $ P # Would-be vector Floating point
                                       + Multiply and Subtract eXtended
                                       + Bfp
WFMXB        = E7E7    % 0100.1000 $ P # Would-be vector Floating point
                                       + Multiply eXtended Bfp
WFNMADB      = E79F    % 1000.0011 $ P # Would-be vector Floating point
                                       + Negative Multiply and Add
                                       + Double Bfp
WFNMASB      = E79F    % 1000.0010 $ P # Would-be vector Floating point
                                       + Negative Multiply and Add
                                       + Single Bfp
WFNMAXB      = E79F    % 1000.0100 $ P # Would-be vector Floating point
                                       + Negative Multiply and Add
                                       + eXtended Bfp
WFNMSDB      = E79E    % 1000.0011 $ P # Would-be vector Floating point
                                       + Negative Multiply and Subtract
                                       + Double Bfp
WFNMSSB      = E79E    % 1000.0010 $ P # Would-be vector Floating point
                                       + Negative Multiply and Subtract
                                       + Single Bfp
WFNMSXB      = E79E    % 1000.0100 $ P # Would-be vector Floating point
                                       + Negative Multiply and Subtract
                                       + eXtended Bfp
WFPSODB      = E7CC    % 0011.1000 $ P # Would-be vector Floating
                                       + point Perform Sign
                                       + Operation Double Bfp
WFPSOSB      = E7CC    % 0010.1000 $ P # Would-be vector Floating point
                                       + Perform Sign Operation
                                       + Single Bfp
WFPSOXB      = E7CC    % 0100.1000 $ P # Would-be vector Floating point
                                       + Perform Sign Operation
                                       + eXtended Bfp
WFSDB        = E7E2    % 0011.1000 $ P # Would-be vector Floating point
                                       + Subtract Double Bfp
WFSQDB       = E7CE    % 0011.1000 $ P # Would-be vector Floating point
                                       + SQuare root Double Bfp
WFSQSB       = E7CE    % 0010.1000 $ P # Would-be vector Floating point
                                       + SQuare root Single Bfp
WFSQXB       = E7CE    % 0100.1000 $ P # Would-be vector Floating point
                                       + SQuare root eXtended Bfp
WFSSB        = E7E2    % 0010.1000 $ P # Would-be vector Floating point
                                       + Subtract Single Bfp
WFSXB        = E7E2    % 0100.1000 $ P # Would-be vector Floating point
                                       + Subtract eXtended Bfp
WFTCIDB      = E74A    % 0011.1000 $ P # Would-be vector Floating point
                                       + Test dataClass Immediate
                                       + Double Bfp
WFTCISB      = E74A    % 0010.1000 $ P # Would-be vector Floating point
                                       + Test data Class Immediate
                                       + Single Bfp
WFTCIXB      = E74A    % 0100.1000 $ P # Would-be vector Floating point
                                       + Test data Class Immediate
                                       + eXtended Bfp
WLDEB        = E7C4    % 0010.1000 $ P # Would-be vector Load
                                       + lengthened Double from
                                       + Exponential Bfp
WLEDB        = E7C5    % 0011.1000 $ P # Would-be vector floating point
                                       + Load rounded Exponential from
                                       + Double Bfp
WRD          =-84      %      $   # WRite Direct
WSR          = A30     %      $ T # Write Special Register
WSRS         = A38     %      $ T # Write Special Register Short
WXTRN        = --      %      $   # Weak eXTeRNal
X            = 57      %      $   # eXclusive-or
XATTR        = --      %      $   # eXternal ATTRibutes
XC           = D7      %      $   # eXclusive-or Characters
XDECI        =-53      %      $   # assist eXtension for DECimal Input
XDECO        =-52      %      $   # assist eXtension for DECimal Output
XDUMP        =-E06     %      $   # assist eXtension for storage DUMP
XDUMP        =-E1      %      $   # assist eXtension for general
                                  + purpose register DUMP
XG           = E382    %      $ P # eXclusive-or Grande
XGET         =-E0A     %      $   # assist eXtension to GET a record
XGR          = B982    %      $   # eXclusive-or Grande Register
XGRK         = B9E7    %      $   # eXclusive-or Grande Register
                                  + Keeping source data
XHEXI        =-61      %      $   # assist eXtension for HEX Input
XHEXO        =-62      %      $   # assist eXtension for HEX Output
XHHR         = EC57    % [00.1F.00] $   # eXclusive-or High with High
                                        + Register
XHLR         = EC57    % [00.1F.20] $   # eXclusive-or High with Low
                                        + Register
XI           = 97      %      $   # eXclusive-or Immediate
XIHF         = C06     %      $ A # eXclusive-or Immediate High with
                                  + Fullword
XILF         = C07     %      $ A # eXclusive-or Immediate Low with
                                  + Fullword
XIO          =-D0      %      $ 5 # Xfer I/O
XIY          = EB57    %      $ P # eXclusive-or Immediate Yonder
XLHR         = EC57    % [20.3F.20] $   # eXclusive-or Low with High
                                        + Register
XLIMD        =-E08     %      $   # assist eXtension to LIMit Dump
XOPC         =-01      %      $   # assist eXtension for OPtions Call
XPNCH        =-E04     %      $   # assist eXtension to PuNCH a record
XPRNT        =-E02     %      $   # assist eXtension to PRiNT a record
XPUT         =-E0C     %      $   # assist eXtension to PUT a record
XR           = 17      %      $   # eXclusive-or Register
XREAD        =-E00     %      $   # assist eXtension to READ a record
XRK          = B9F7    %      $   # eXclusive-or Register
                                  + Keeping source data
XSCH         = B276    %      $   # cancel (eXit) SubCHannel
XY           = E357    %      $ P # eXclusive-or Yonder
ZAP          = F8      %      $   # Zero and Add Packed decimal
*
* 345678901234567890123456789012345678901234567890123456789012345678901
*
@ OPCODES
* lastpop_uk =
<p>Information on this page contains data from various
public sources, including 
IBM's Principles of Operation SA22-7832-13 and earlier versions.</p>
* h1_uk =
<h1>HLASM - &VAR1 = &VAR2</h1>
* bfp_uk =
<p>Where bfp stands for binary floating point.</p>
* hfp_uk =
<p>Where hfp stands for hex floating point.</p>
* tfp_uk =
<p>Where tfp stands for ten-based (decimal) floating point.</p>
* h2_uk =
<h2>The opcode of the &VAR1 instruction is X'&VAR3'.</h2>
* h2asm_uk =
<h2>The &VAR1 instruction has no opcode.</h2>
<p>This is because it is an assembler instruction;
 not a machine instruction.</p>
* h2dup_uk =
<p>However, the opcode of &quot;&VAR2&quot;
 was X'&VAR3'.</p>
* h2same_uk =
<p>&quot;&VAR2&quot;
 has previously been defined with opcode '&VAR3'.</p>
* h2unk_uk =
<h2>Opcode and mnemonic are both unknown.</h2>
* A_uk =
<p>The third hex digit of the opcode is the fourth digit of the
 instruction.</p>
* B_uk =
<p>The mask is the third hex digit of the instruction, and
 - though this is uncommon - can be regarded as the third hex digit
 of the opcode as well.</p>
* C_uk =
<p>The mask is the third hex digit of the instruction; the third
 hex digit of the opcode is the fourth digit of the instruction.</p>
* D_uk =
<p>The second byte of the instruction is unassigned and usually
 contains X'00'. These zeroes are not considered part of the
 opcode.</p>
* E_uk =
<p>Originally, the second byte of the instruction was not used,
 and not regarded as part of the opcode. When additional
 I/O instructions were needed, the second byte was redefined as
 part of the opcode.</p>
* F_uk =
<p>This instruction is a Coupling Facility I/O instruction.</p>
* G_uk =
<p>This instruction is a Coupling Facility instruction.</p>
* H_uk =
<p>This instruction was designed for TPF.</p>
* I_uk =
<p>This instruction was part of the MVS assist feature.</p>
* J_uk =
<p>This instruction was part of the CP assist feature.</p>
* K_uk =
<p>This instruction was part of the VS1 assist feature.</p>
* L_uk =
<p>This instruction was part of the SIE assist feature.</p>
* M_uk =
<p>This instruction was part of the Queued Direct I/O feature,
 which was used to support OSA express.</p>
* N_uk =
<p>This instruction was part of the Asynchronous Page Facility.</p>
* O_uk =
<p>This instruction was part of the Cryptographic Coprocessor
 Facility.</p>
* P_uk =
<p>The second byte of the opcode is the sixth byte of the
 instruction.</p>
* Q_uk =
<p>The second byte of the instruction originally was unassigned and
 usually contained X'00'. Later the third digit of the opcode was
 assigned to contain a mask value controlling the use of the
 Extended Translate Facility.</p>
* R_uk =
<p>This instruction was part of the VSAPL assist feature.</p>
* S_uk =
<p>This instruction was part of the 14xx emulation feature.</p>
* T_uk =
<p>This instruction is a millicode-only instruction.</p>
* U_uk =
<p>The second byte of the opcode is the sixth byte of the instruction.
 The mask is the fourth hex digit of the instruction, and
 - though this is uncommon - can be regarded as the fifth hex digit
 of the opcode.</p>
* V_uk =
<p>The second byte of the opcode is the sixth byte of the instruction.
 The mask is the ninth hex digit of the instruction, and
 - though this is uncommon - can be regarded as the fifth hex digit of
 the opcode.</p>
* W_uk =
<p>The mask is the fifth hex digit of the instruction, and
 - though this is uncommon - can be regarded as the fifth hex digit
 of the opcode as well.</p>
* X_uk =
<p>This instruction is part of the Set-Program-Parameter
 and CPU-Measurement facility, later renamed to the
 Load-Program-Parameter and CPU-Measurement facility.</p>
* Y_uk =
<p>This instruction is part of VM's Collaborative Memory Management
 Assist.</p>
* Z_uk =
<p>This instruction makes use of a function code, which is to be loaded
 into register R0 before executing the instruction.</p>
* 0_uk =
<p>The sixth digit of the instruction is unassigned and should contain
 a value of X'0'.</p>
* 1_uk =
<p>The sixth digit of the instruction was unassigned but is now
 used for the mask value.</p>
* 2_uk =
<p>The fifth byte of the instruction is unassigned and should contain
 a value of X'00'.</p>
* 3_uk =
<p>The third byte of the instruction is unassigned and should contain
 a value of X'00'.</p>
* 4_uk =
<p>This instruction is part of the Transactional-Execution feature.</p>
* 5_uk =
<p>This instruction was available only on the 360/20</p>
* 6_uk =
<p>The third and fourth bytes of the instruction are unassigned and
 should contain zeros</p>
* 7_uk =
<p>The second byte of the opcode is the sixth byte of the instruction.
 The mask is the third hex digit of the instruction, and
 - though this is uncommon - can be regarded as the fifth hex digit
 of the opcode.</p>
* 8_uk =
<p>The mask is the sixth hex digit of the instruction, and
 - though this is uncommon - can be regarded as the fifth hex digit
 of the opcode.</p>
*
* model.h_uk =
<!-- UK -->
<!-- -->
<!-- Saved from http://www.bixoft.com/english/opcd/&VAR1.htm -->
<!-- -->
<title>HLASM - &VAR1 = &VAR2</title>
<meta http-equiv="keywords"    content="Mainframe, Assembler,
                               +        Programming" />
<meta http-equiv="keywords"    content="MVS, OS/390, z/OS" />
<meta http-equiv="keywords"    content="Assembly, High Level Assembler,
                               +        HLASM" />
<meta http-equiv="description" content="Description of IBM mainframe
                               +        instruction &VAR1" />
<meta http-equiv="robots"      content="index,follow" />
*
* model.t_uk =
<!-- UK -->
<h1>header 1</h1>

<h2>header 2</h2>

<p>The description of this instruction is not yet complete.</p>

<p>Want to help us write the descriptions? Please contact
  <a href="mailto:abe@bixoft.nl">Abe Kornelis</a>.</p>

@ TEXT
