.*Metadata=HTML,Languages(DE,ES,FR,FY,IT,NL,UK,RT)

         GBLC     &SP_DIR,&SP_LANG
         HTMLINIT ,

         AIF      ('&SP_DIR' EQ '.').ROOT
         AGO      .OTHER

.ROOT    ANOP     ,
         HTMLHEAD WHATSNEW,UK
         HTMLBODY WHATSNEW,UK,ROOT,                                    *
               COMPNENT=($BODY.ALG,                                    *
               WHATSNEW.UKT,                                           *
               $EMAIL.UK2,                                             *
               $WEBRING.UK1,                                           *
               WHATSNEW.UKF,                                           *
               $SPONSOR.UK1,                                           *
               $LOGO.UK1,                                              *
               $BODYEND.ALG)

         AGO     .PUNCH

.OTHER   ANOP    ,
         HTMLHEAD WHATSNEW,&SP_LANG
         HTMLBODY WHATSNEW,&SP_LANG,HLASM

.PUNCH   ANOP    ,
         HTMLPUN OP=PUNCH

         END
