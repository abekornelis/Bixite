.*Metadata=HTML,Languages(UK,RT)

         GBLC     &SP_DIR,&SP_LANG
         HTMLINIT ,

         AIF      ('&SP_DIR' EQ '.').ROOT
         AGO      .OTHER

.ROOT    ANOP     ,
         HTMLHEAD CREDITS,UK
         HTMLBODY CREDITS,&SP_LANG,ROOT,                               *
               COMPNENT=($BODY.ALG,                                    *
               CREDITS.UKT,$HR80.ALG,                                  *
               CREDITS.UKL,                                            *
               $EMAIL.UK2,                                             *
               $WEBRING.UK1,                                           *
               CREDITS.UKF,                                            *
               $SPONSOR.UK1,                                           *
               $LOGO.UK1,                                              *
               $BODYEND.ALG)

         AGO     .PUNCH

.OTHER   ANOP    ,
         HTMLHEAD CREDITS,&SP_LANG
         HTMLBODY CREDITS,&SP_LANG,HLASM

.PUNCH   ANOP    ,
         HTMLPUN OP=PUNCH

         END
