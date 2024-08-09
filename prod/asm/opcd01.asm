.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCD01,&SP_LANG
         HTMLBODY OPCD01,&SP_LANG,HLASM,OPCODES=GEN,                   *
               SEP=$NULL.ALG,ASSOC=$OPCD01.UK

         HTMLPUN OP=PUNCH

         END
