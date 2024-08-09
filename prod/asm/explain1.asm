.*Metadata=HTML,Languages(NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD EXPLAIN1,&SP_LANG
         HTMLBODY EXPLAIN1,&SP_LANG,BIXOFT,                            *
               SEP=$HR80.ALG,ASSOC=$EXPLN1.UK

         HTMLPUN  OP=PUNCH

         END
