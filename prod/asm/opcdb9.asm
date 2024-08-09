.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCDB9,&SP_LANG
         HTMLBODY OPCDB9,&SP_LANG,HLASM,OPCODES=GEN,                   *
               SEP=$NULL.ALG,ASSOC=$OPCDB9.UK

         HTMLPUN OP=PUNCH

         END
