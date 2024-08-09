.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCDEBF,&SP_LANG
         HTMLBODY OPCDEBF,&SP_LANG,HLASM,OPCODES=GEN,                  *
               SEP=$NULL.ALG,ASSOC=$OPCDEBF.UK

         HTMLPUN OP=PUNCH

         END
