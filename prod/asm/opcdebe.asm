.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCDEBE,&SP_LANG
         HTMLBODY OPCDEBE,&SP_LANG,HLASM,OPCODES=GEN,                  *
               SEP=$NULL.ALG,ASSOC=$OPCDEBE.UK

         HTMLPUN OP=PUNCH

         END
