.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCDECE,&SP_LANG
         HTMLBODY OPCDECE,&SP_LANG,HLASM,OPCODES=GEN,                  *
               SEP=$NULL.ALG,ASSOC=$OPCDECE.UK

         HTMLPUN OP=PUNCH

         END
