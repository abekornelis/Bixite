.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCD07,&SP_LANG
         HTMLBODY OPCD07,&SP_LANG,HLASM,OPCODES=GEN,                   *
               SEP=$NULL.ALG,ASSOC=$OPCD07.UK

         HTMLPUN OP=PUNCH

         END
