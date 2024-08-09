.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCDB2,&SP_LANG
         HTMLBODY OPCDB2,&SP_LANG,HLASM,OPCODES=GEN,                   *
               SEP=$NULL.ALG,ASSOC=$OPCDB2.UK

         HTMLPUN OP=PUNCH

         END
