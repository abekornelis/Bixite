.*Metadata=HTML,Languages(DE,ES,FR,FY,IT,NL,UK,RT)

         GBLC     &SP_DIR,&SP_LANG
         HTMLINIT ,

         AIF      ('&SP_DIR' EQ '.').ROOT
         AIF      ('&SP_LANG' EQ 'UK').FLAGS2
         AIF      ('&SP_LANG' EQ 'NL').FLAGS2
         AGO      .FLAGS3

.ROOT    ANOP     ,
         HTMLHEAD INDEX,UK
         HTMLBODY INDEX,UK,ROOT,                                       *
               COMPNENT=($BODY.ALG,                                    *
               INDEX.UKT,                                              *
               $FLAGSH.UK1,$P.ALG,                                     *
               $FLAGSB.UK1,                                            *
               $EMAIL.UK2,                                             *
               INDEX.UKL,                                              *
               $WEBRING.UK1,                                           *
               INDEX.UKF,                                              *
               $SPONSOR.UK1,                                           *
               $LOGO.UK1,                                              *
               $BODYEND.ALG)
         AGO   .PUNCH

.FLAGS2  ANOP     ,
         HTMLHEAD INDEX,&SP_LANG
         HTMLBODY INDEX,&SP_LANG,BIXOFT,ALTFTR=*NONE,                  *
               SEP=$NULL.ALG,ASSOC=$FLAGS2.&SP_LANG,SEP2=$NULL.ALG
         AGO   .PUNCH

.FLAGS3  ANOP     ,
         HTMLHEAD INDEX,&SP_LANG
         HTMLBODY INDEX,&SP_LANG,BIXOFT,ALTFTR=*NONE,                  *
               SEP=$NULL.ALG,ASSOC=$FLAGS3.&SP_LANG,SEP2=$NULL.ALG

.PUNCH   ANOP     ,
         HTMLPUN OP=PUNCH

         END
