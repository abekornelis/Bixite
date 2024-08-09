.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCDEB,&SP_LANG
         HTMLBODY OPCDEB,&SP_LANG,HLASM,OPCODES=GEN,                   *
               SEP=$NULL.ALG,ASSOC=$OPCDEB.UK

         HTMLPUN OP=PUNCH

         END
