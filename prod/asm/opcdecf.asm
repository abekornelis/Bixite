.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCDECF,&SP_LANG
         HTMLBODY OPCDECF,&SP_LANG,HLASM,OPCODES=GEN,                  *
               SEP=$NULL.ALG,ASSOC=$OPCDECF.UK

         HTMLPUN OP=PUNCH

         END
