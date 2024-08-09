.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCDEC5,&SP_LANG
         HTMLBODY OPCDEC5,&SP_LANG,HLASM,OPCODES=GEN,                  *
               SEP=$NULL.ALG,ASSOC=$OPCDEC5.UK

         HTMLPUN OP=PUNCH

         END
