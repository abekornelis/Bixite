.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCDA2,&SP_LANG
         HTMLBODY OPCDA2,&SP_LANG,HLASM,OPCODES=GEN,                   *
               SEP=$NULL.ALG,ASSOC=$OPCDA2.UK

         HTMLPUN OP=PUNCH

         END
