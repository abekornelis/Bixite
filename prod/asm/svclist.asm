.*Metadata=HTML,Languages(NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD SVCLIST,&SP_LANG
         HTMLBODY SVCLIST,&SP_LANG,HLASM,                              *
               SEP=$NULL.ALG,ASSOC=$SVCLIST.UK

         HTMLPUN OP=PUNCH

         END
