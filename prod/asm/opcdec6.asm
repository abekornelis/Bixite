.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCDEC6,&SP_LANG
         HTMLBODY OPCDEC6,&SP_LANG,HLASM,OPCODES=GEN,                  *
               SEP=$NULL.ALG,ASSOC=$OPCDEC6.UK

         HTMLPUN OP=PUNCH

         END
