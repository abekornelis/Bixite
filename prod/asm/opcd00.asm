.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCD00,&SP_LANG
         HTMLBODY OPCD00,&SP_LANG,HLASM,OPCODES=GEN,                   *
               SEP=$NULL.ALG,ASSOC=$OPCD00.UK

         HTMLPUN OP=PUNCH

         END
