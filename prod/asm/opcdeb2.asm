.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCDEB2,&SP_LANG
         HTMLBODY OPCDEB2,&SP_LANG,HLASM,OPCODES=GEN,                  *
               SEP=$NULL.ALG,ASSOC=$OPCDEB2.UK

         HTMLPUN OP=PUNCH

         END
