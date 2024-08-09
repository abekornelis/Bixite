.*Metadata=HTML,Languages(RT)

         GBLC     &SP_DIR,&SP_LANG
         HTMLINIT ,

         HTMLHEAD BIXOFT,UK
         HTMLBODY BIXOFT,&SP_LANG,ROOT,                                *
               COMPNENT=($BODY.ALG,                                    *
               $LOGO.UK2,                                              *
               BIXOFT.UKT,                                             *
               $FLAGSB.UK1,$HR.ALG,                                    *
               $EMAIL.UK1,                                             *
               BIXOFT.UKL,                                             *
               $WEBRING.UK1,$P.ALG,                                    *
               $COPYRT.ALG,                                            *
               $BODYEND.ALG)

         HTMLPUN OP=PUNCH

         END
