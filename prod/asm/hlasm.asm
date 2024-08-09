.*Metadata=HTML,Languages(DE,ES,FR,FY,IT,NL,UK,RT)

         GBLC     &SP_DIR,&SP_LANG
         HTMLINIT ,

         AIF      ('&SP_DIR' EQ '.').ROOT
         AGO      .OTHER

.ROOT    ANOP     ,
         HTMLHEAD HLASM,UK
         HTMLBODY HLASM,&SP_LANG,ROOT,                                 *
               COMPNENT=($BODY.ALG,                                    *
               HLASM.UKT,                                              *
               $FLAGSH.UK1,                                            *
               HLASM.UKL,                                              *
               $WEBRING.UK1,                                           *
               HLASM.UKF,$HR80.ALG,                                    *
               $SPONSOR.UK1,                                           *
               $LOGO.UK2,                                              *
               $BODYEND.ALG)

         AGO     .PUNCH

.OTHER   ANOP    ,
         HTMLHEAD HLASM,&SP_LANG
         HTMLBODY HLASM,&SP_LANG,HLASM

.PUNCH   ANOP    ,
         HTMLPUN OP=PUNCH

         END
