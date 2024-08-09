.*Metadata=HTML,Languages(NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD MACLIB,&SP_LANG
         HTMLBODY MACLIB,&SP_LANG,BIXOFT,                              *
               SEP=$HR.ALG,ASSOC=$MACLIB.UK,SEP2=$TABLEND.ALG

         HTMLPUN OP=PUNCH

         END
