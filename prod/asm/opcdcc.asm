.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCDCC,&SP_LANG
         HTMLBODY OPCDCC,&SP_LANG,HLASM,OPCODES=GEN,                   *
               SEP=$NULL.ALG,ASSOC=$OPCDCC.UK

         HTMLPUN OP=PUNCH

         END
