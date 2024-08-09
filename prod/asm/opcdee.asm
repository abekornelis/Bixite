.*Metadata=HTML,Languages(FR,NL,UK)

         GBLC     &SP_LANG
         HTMLINIT ,

         HTMLHEAD OPCDEE,&SP_LANG
         HTMLBODY OPCDEE,&SP_LANG,HLASM,OPCODES=GEN,                   *
               SEP=$NULL.ALG,ASSOC=$OPCDEE.UK

         HTMLPUN OP=PUNCH

         END
