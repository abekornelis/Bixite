.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCD010,&SP_LANG
         HTMLBODY OPCD010,&SP_LANG,HLASM,OPCODES=GEN,                  *
               SEP=$NULL.ALG,ASSOC=$OPCD010.UK

         HTMLPUN OP=PUNCH

         END
