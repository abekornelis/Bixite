.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCDAE,&SP_LANG
         HTMLBODY OPCDAE,&SP_LANG,HLASM,OPCODES=GEN,                   *
               SEP=$NULL.ALG,ASSOC=$OPCDAE.UK

         HTMLPUN OP=PUNCH

         END
