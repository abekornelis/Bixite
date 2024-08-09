.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCDEC4,&SP_LANG
         HTMLBODY OPCDEC4,&SP_LANG,HLASM,OPCODES=GEN,                  *
               SEP=$NULL.ALG,ASSOC=$OPCDEC4.UK

         HTMLPUN OP=PUNCH

         END
