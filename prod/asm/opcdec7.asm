.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCDEC7,&SP_LANG
         HTMLBODY OPCDEC7,&SP_LANG,HLASM,OPCODES=GEN,                  *
               SEP=$NULL.ALG,ASSOC=$OPCDEC7.UK

         HTMLPUN OP=PUNCH

         END
