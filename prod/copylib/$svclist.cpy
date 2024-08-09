         HTMLDEF $SVCLIST.UK1
<!-- UK -->
<table class="svclist">
 <tr>
  <th class="col1">&nbsp;</th>
  <th>MVS<br />
      OS/390<br />
      z/OS</th>
  <th>CMS (DOS OFF)</th>
  <th>GCS</th>
  <th>DOS/VSE</th>
  <th>CMS (DOS ON)</th>
  <th>TPF</th>
 </tr>
 <tr>
  <td class="col1">X'00'</td>
  <td>EXCP<br />
      XDAP</td>
  <td>EXCP<br />
      XDAP</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>EXCP</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'01'</td>
  <td>PRTOV<br />
      WAIT<br />
      WAITR</td>
  <td>WAIT</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>FETCH</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'02'</td>
  <td>POST</td>
  <td>POST</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>FETCH</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'03'</td>
  <td>EXIT</td>
  <td>EXIT (no macro)</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>FORCE DEQUEUE (not supported)</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'04'</td>
  <td>GETMAIN&nbsp;R,LOC=BELOW</td>
  <td>GETMAIN</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>LOAD</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'05'</td>
  <td>FREEMAIN&nbsp;R,LOC=BELOW</td>
  <td>FREEMAIN</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>MVCOM</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'06'</td>
  <td>LINK<br />
      LINKX</td>
  <td>LINK</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>CANCEL</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'07'</td>
  <td>XCTL<br />
      XCTLX</td>
  <td>XCTL</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>WAIT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'08'</td>
  <td>LOAD</td>
  <td>LOAD</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>CONTROL</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'09'</td>
  <td>DELETE</td>
  <td>DELETE</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>LBRET</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'0A'</td>
  <td>GETMAIN&nbsp;R,LOC=BELOW<br />
      FREEMAIN&nbsp;LOC=BELOW</td>
  <td>GETMAIN<br />
      FREEMAIN</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>SET TIMER</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'0B'</td>
  <td>TIME</td>
  <td>TIME</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>TRANS.RETURN</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'0C'</td>
  <td>SYNCH<br />
      SYNCHX</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>JOB CONTROL 'AND'</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'0D'</td>
  <td>ABEND</td>
  <td>ABEND</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>JC FLAGS</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'0E'</td>
  <td>SPIE</td>
  <td>SPIE</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>EOJ</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'0F'</td>
  <td>ERREXCP</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>SYSIO</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'10'</td>
  <td>PURGE</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>PC STXIT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'11'</td>
  <td>RESTORE</td>
  <td>RESTORE (does&nbsp;nothing)</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>PC EXIT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'12'</td>
  <td>BLDL&nbsp;,,D<br />
      FIND&nbsp;,,D</td>
  <td>BLDL<br />
      FIND</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>IT STXIT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'13'</td>
  <td>OPEN</td>
  <td>OPEN</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>IT EXIT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'14'</td>
  <td>CLOSE</td>
  <td>CLOSE</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>OC STXIT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'15'</td>
  <td>STOW</td>
  <td>STOW</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>OC EXIT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'16'</td>
  <td>OPEN&nbsp;TYPE=J</td>
  <td>OPEN&nbsp;TYPE=J</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>SEIZE</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'17'</td>
  <td>CLOSE&nbsp;TYPE=T</td>
  <td>CLOSE&nbsp;TYPE=T</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>LOAD HEADER</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'18'</td>
  <td>DEVTYPE</td>
  <td>DEVTYPE</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>SETIME</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'19'</td>
  <td>TRKBAL</td>
  <td>TRKBAL (does&nbsp;nothing)</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>HALT I/O</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'1A'</td>
  <td>CATALOG<br />
      INDEX<br />
      LOCATE</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>Valdiate Address Limits</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'1B'</td>
  <td>OBTAIN</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>TP HALT I/O</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'1C'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>MR EXIT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'1D'</td>
  <td>SCRATCH</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>WAITM</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'1E'</td>
  <td>RENAME</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>QWAIT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'1F'</td>
  <td>FEOV</td>
  <td>FEOV</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>QPOST</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'20'</td>
  <td>ALLOC<br />
      REALLOC</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'21'</td>
  <td>IOHALT</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>COMRG</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'22'</td>
  <td>MGCR<br />
      MGCRE<br />
      QEDIT</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>GETIME</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'23'</td>
  <td>WTO<br />
      WTOR</td>
  <td>WTO<br />
      WTOR</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>HOLD</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'24'</td>
  <td>WTL</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>FREE</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'25'</td>
  <td>SEGLD<br />
      SEGWT</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>AB STXIT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'26'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>ATTACH</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'27'</td>
  <td>LABEL</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>DETACH</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'28'</td>
  <td>EXTRACT</td>
  <td>EXTRACT (does&nbsp;nothing)</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>POST</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'29'</td>
  <td>IDENTIFY</td>
  <td>IDENTIFY</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>DEQ</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'2A'</td>
  <td>ATTACH<br />
      ATTACHX</td>
  <td>ATTACH</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>ENQ</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'2B'</td>
  <td>CIRB</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'2C'</td>
  <td>CHAP</td>
  <td>CHAP (does&nbsp;nothing)</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>UNIT CHECKS</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'2D'</td>
  <td>OVLYBRCH</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>EMULATOR INTERF.</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'2E'</td>
  <td>STIMERM&nbsp;CANCEL<br />
      STIMERM&nbsp;TEST<br />
      TTIMER</td>
  <td>STIMERM<br />
      TTIMER</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>OLTEP</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'2F'</td>
  <td>STIMER<br />
      STIMERM&nbsp;SET</td>
  <td>STIMER<br />
      STIMERM</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>WAITF</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'30'</td>
  <td>DEQ</td>
  <td>DEQ (does&nbsp;nothing)</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>CRT TRANS</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'31'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>CHANNEL PROG.</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'32'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>LIOCS DIAG.</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'33'</td>
  <td>SDUMP<br />
      SDUMPX<br />
      SNAP<br />
      SNAPX</td>
  <td>SNAP</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>RETURN HEADER</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'34'</td>
  <td>RESTART</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>TTIMER</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'35'</td>
  <td>RELEX</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>VTAM EXIT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'36'</td>
  <td>DISABLE</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>FREEREAL</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'37'</td>
  <td>EOV</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>GETREAL</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'38'</td>
  <td>ENQ<br />
      RESERVE</td>
  <td>ENQ (does&nbsp;nothing)</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>POWER</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'39'</td>
  <td>FREEDBUF</td>
  <td>FREEDBUF</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>POWER</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'3A'</td>
  <td>RELBUF<br />
      REQBUF</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>SUPVR.INTERF.</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'3B'</td>
  <td>OLTEP</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>EOJ INTERF.</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'3C'</td>
  <td>STAE<br />
      ESTAE<br />
      STAI<br />
      ESTAI</td>
  <td>STAE<br />
      ESTAE</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>GETADR</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'3D'</td>
  <td>IKJEGS6A&nbsp;(TSO)</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>GETVIS</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'3E'</td>
  <td>DETACH</td>
  <td>DETACH (does&nbsp;nothing)</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>FREEVIS</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'3F'</td>
  <td>CHKPT</td>
  <td>CHKPT (does&nbsp;nothing)</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>USE</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'40'</td>
  <td>RDJFCB</td>
  <td>RDJFCB</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>RELEASE</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'41'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>CDLOAD</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'42'</td>
  <td>BTAMTEST</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>RUNMODE</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'43'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>PFIX</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'44'</td>
  <td>SYSNADAF<br />
      SYNADRLS</td>
  <td>SYNADAF<br />
      SYNADRLS</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>PFREE</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'45'</td>
  <td>BSP</td>
  <td>BSP</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>REALAD</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'46'</td>
  <td>GSERV</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>VIRTAD</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'47'</td>
  <td>ASGNBFR<br />
      BUFINQ<br />
      RLSEBFR</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>SETPFA</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'48'</td>
  <td>No macro;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>GETCBUF<br />
      FREECBUF</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'49'</td>
  <td>SPAR</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>SETAPP</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'4A'</td>
  <td>DAR</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>PAGE FIX</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'4B'</td>
  <td>DQUEUE</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>SETCVAL</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'4C'</td>
  <td>IFBSTAT</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>SYSREC</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'4D'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>TRANSCCW</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'4E'</td>
  <td>LSPACE</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>CHAP</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'4F'</td>
  <td>STATUS</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>SYNCH</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'50'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>SETT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'51'</td>
  <td>SETDEV<br />
      SETPRT</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>TESTT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'52'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>LINKAGE</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'53'</td>
  <td>SMFWTM&nbsp;BRANCH=NO<br />
      SMFEWTM&nbsp;BRANCH=NO</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>ALLOCATE</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'54'</td>
  <td>GRAPHICS</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>SET LIMIT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'55'</td>
  <td>DDRSWAP</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>RELPAG</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'56'</td>
  <td>ATLAS</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>FCEPGOUT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'57'</td>
  <td>DOM</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>PAGEIN</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'58'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>TPIN</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'59'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>TPOUT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'5A'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>PUTACCT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'5B'</td>
  <td>VOLSTAT</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>POWER</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'5C'</td>
  <td>TCBEXCP<br />
      TCPEXCP</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>XECBTAB</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'5D'</td>
  <td>TGET<br />
      TPG<br />
      TPUT</td>
  <td>TGET<br />
      TPUT</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>XPOST</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'5E'</td>
  <td>GTDEVSIZ<br />
      GTSIZE<br />
      RTAUTSRM<br />
      STATTN<br />
      STAUTOCP<br />
      STAUTOLN<br />
      STAUTSRM<br />
      STBREAK<br />
      STCC<br />
      STCLEAR<br />
      STCOM<br />
      STFSMODE<br />
      STLINENO<br />
      STSIZE<br />
      STTIMEOU<br />
      STTMPPMD<br />
      STTRAN<br />
      TCABEND<br />
      TCLEARQ<br />
      TCSEND<br />
      TSEND<br />
      TSTGTTRM<br />
      TSTTPMD</td>
  <td>TCLEARQ</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>XWAIT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'5F'</td>
  <td>SYSEVENT</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>AB EXIT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'60'</td>
  <td>STAX</td>
  <td>STAX</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>TT EXIT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'61'</td>
  <td>IKJEGS9G</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>TT STXIT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'62'</td>
  <td>PROTECT</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>EXTRACT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'63'</td>
  <td>DYNALLOC</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>GETVCE</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'64'</td>
  <td>IKJEFFIB</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'65'</td>
  <td>QTIP</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>MODVCE</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'66'</td>
  <td>AQCTL</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'67'</td>
  <td>XLATE</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>SYSFIL</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'68'</td>
  <td>TOPCTL</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>EXTENT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'69'</td>
  <td>IMGLIB</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>SUBSID</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'6A'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>LINKAGE</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'6B'</td>
  <td>MODESET</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>TASK INTERF.</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'6C'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>DATA SECURE</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'6D'</td>
  <td>ESPIE<br />
      IFAUSAGE<br />
      MFDATA (RMF)<br />
      MFSTART (RMF)<br />
      MSGDISP<br />
      OUTADD<br />
      OUTDEL</td>
  <td>ESPIE</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>PAGESTAT</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'6E'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>LOCK<br />
      UNLOCK</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'6F'</td>
  <td>no macro</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'70'</td>
  <td>PGRLSE</td>
  <td>PGRLSE (does&nbsp;nothing)</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'71'</td>
  <td>PGANY<br />
      PGFIX<br />
      PGFREE<br />
      PGLOAD<br />
      PGOUT</td>
  <td>PGLOAD (does&nbsp;nothing)<br />
      PGOUT (does&nbsp;nothing)</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'72'</td>
  <td>EXCPVR</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'73'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'74'</td>
  <td>CALLDISP<br />
      CHNGNTRY<br />
      IECTATNR<br />
      IECTCHGA<br />
      IECTRDTI<br />
      RESETPL</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'75'</td>
  <td>DEBCHK</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'76'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'77'</td>
  <td>TESTAUTH</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'78'</td>
  <td>GETMAIN&nbsp;LOC=ABOVE<br />
      FREEMAIN&nbsp;LOC=ABOVE</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'79'</td>
  <td>no macro (VSAM)</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'7A'</td>
  <td>EVENTS&nbsp;(type 2)<br />
      extended&nbsp;LINK<br />
      extended&nbsp;LOAD<br />
      extended&nbsp;XCTL<br />
      Service&nbsp;Processor&nbsp;Call<br />
      STIMERE<br />
      VALIDATE</td>
  <td>LINK<br />
      XCTL<br />
      LOAD</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'7B'</td>
  <td>PURGEDQ</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'7C'</td>
  <td>TPIO</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'7D'</td>
  <td>EVENTS&nbsp;(type 1)</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'7E'</td>
  <td>MSS</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'7F'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'80'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'81'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'82'</td>
  <td>RACHECK</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'83'</td>
  <td>RACINIT</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'84'</td>
  <td>RACLIST</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'85'</td>
  <td>RACDEF</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'86'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'87'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'88'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'89'</td>
  <td>ESR</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'8A'</td>
  <td>PGSER</td>
  <td>PGSER (does&nbsp;nothing)</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'8B'</td>
  <td>CVAF<br />
      CVAFDIR<br />
      CVAFDSM<br />
      CVAFSEQ<br />
      CVAFVOL<br />
      CVAFVRF</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'8C'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'8D'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'8E'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'8F'</td>
  <td>CIPHER<br />
      EMK&nbsp;(type&nbsp;4)<br />
      GENKEY<br />
      RETKEY</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'90'</td>
  <td>no macro</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'91'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'92'</td>
  <td>BPESVC</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'93'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'94'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'95'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'96'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'97'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'98'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'99'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'9A'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'9B'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'9C'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'9D'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'9E'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'9F'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'A0'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'A1'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'A2'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'A3'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'A4'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'A5'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'A6'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'A7'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'A8'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'A9'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'AA'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'AB'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'AC'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'AD'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'AE'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'AF'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'B0'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'B1'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'B2'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'B3'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'B4'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'B5'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'B6'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'B7'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'B8'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'B9'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'BA'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'BB'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'BC'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'BD'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'BE'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'BF'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'C0'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'C1'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'C2'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'C3'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'C4'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'C5'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'C6'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'C7'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'C8'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'C9'</td>
  <td>&nbsp;</td>
  <td>obsolete</td>
  <td>obsolete</td>
  <td>&nbsp;</td>
  <td>obsolete</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'CA'</td>
  <td>&nbsp;</td>
  <td>no macro</td>
  <td>no macro</td>
  <td>&nbsp;</td>
  <td>no macro</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'CB'</td>
  <td>&nbsp;</td>
  <td>obsolete</td>
  <td>obsolete</td>
  <td>&nbsp;</td>
  <td>obsolete</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'CC'</td>
  <td>&nbsp;</td>
  <td>CMSCALL</td>
  <td>CMSCALL</td>
  <td>&nbsp;</td>
  <td>CMSCALL</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'CD'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'CE'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td class="col1">X'CF'</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
</table>

/HTML
