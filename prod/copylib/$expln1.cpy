         HTMLDEF $EXPLN1.UK1
<!-- UK -->
<a name="explain1a" id="explain1a"></a>
<pre>
--
   with     managers
           (mgrno,
            mgrname
            )
   as      (select   distinct
                     mgr.empno
                   , strip(coalesce(firstnme, '')) CONCAT
                     ' ' CONCAT
                     strip(coalesce(lastname, '???')) as mgrname
            from     DSN8810.DEPT dept
            join     DSN8810.EMP  mgr
                 on  mgr.empno = dept.mgrno
            )
   select   mgr.mgrname
          , dept.deptname
          , emp.lastname
          , emp.firstnme
   from     DSN8810.EMP emp
   left outer join
            DSN8810.DEPT dept
        on  dept.deptno = emp.workdept
   left outer join
            managers mgr
        on  mgr.mgrno = dept.mgrno
   where    emp.empno between '000000' and '150000'
        and emp.workdept between 'A' and 'EEE'
   order by case when dept.deptno IS NULL
                 then '*No dept'
                 when mgr.mgrno IS NULL
                 then '*No mgr'
                 else mgr.mgrname
            end,
            emp.empno
  ;
</pre>
<hr width="80%" />
<a name="explain1b" id="explain1b"></a>
<pre>
---------+---------+---------+---------+---------+---------+--------
+(@69) -+---------+---------+---------
MGRNAME                       DEPTNAME
+(@69) LASTNAME         FIRSTNME
---------+---------+---------+---------+---------+---------+--------
+(@69) -+---------+---------+---------
CHRISTINE HAAS                SPIFFY COMPUTER SERVICE DIV.
+(@69) HAAS             CHRISTINE
CHRISTINE HAAS                SPIFFY COMPUTER SERVICE DIV.
+(@69) LUCCHESI         VINCENZO
CHRISTINE HAAS                SPIFFY COMPUTER SERVICE DIV.
+(@69) O'CONNELL        SEAN
EVA PULASKI                   ADMINISTRATION SYSTEMS
+(@69) PULASKI          EVA
EVA PULASKI                   ADMINISTRATION SYSTEMS
+(@69) JEFFERSON        JAMES
EVA PULASKI                   ADMINISTRATION SYSTEMS
+(@69) MARINO           SALVATORE
EVA PULASKI                   ADMINISTRATION SYSTEMS
+(@69) SMITH            DANIEL
EVA PULASKI                   ADMINISTRATION SYSTEMS
+(@69) JOHNSON          SYBIL
EVA PULASKI                   ADMINISTRATION SYSTEMS
+(@69) PEREZ            MARIA
IRVING STERN                  MANUFACTURING SYSTEMS
+(@69) STERN            IRVING
IRVING STERN                  MANUFACTURING SYSTEMS
+(@69) ADAMSON          BRUCE
IRVING STERN                  MANUFACTURING SYSTEMS
+(@69) PIANKA           ELIZABETH
IRVING STERN                  MANUFACTURING SYSTEMS
+(@69) YOSHIMURA        MASATOSHI
IRVING STERN                  MANUFACTURING SYSTEMS
+(@69) SCOUTTEN         MARILYN
IRVING STERN                  MANUFACTURING SYSTEMS
+(@69) WALKER           JAMES
IRVING STERN                  MANUFACTURING SYSTEMS
+(@69) BROWN            DAVID
IRVING STERN                  MANUFACTURING SYSTEMS
+(@69) JONES            WILLIAM
IRVING STERN                  MANUFACTURING SYSTEMS
+(@69) LUTZ             JENNIFER
MICHAEL THOMPSON              PLANNING
+(@69) THOMPSON         MICHAEL
SALLY KWAN                    INFORMATION CENTER
+(@69) KWAN             SALLY
SALLY KWAN                    INFORMATION CENTER
+(@69) QUINTANA         DOLORES
SALLY KWAN                    INFORMATION CENTER
+(@69) NICHOLLS         HEATHER
DSNE610I NUMBER OF ROWS DISPLAYED IS 22
DSNE616I STATEMENT EXECUTION WAS SUCCESSFUL, SQLCODE IS 100
</pre>
/HTML

         HTMLDEF $EXPLN1.UK2
<!-- UK -->
<a name="explain2a" id="explain2a"></a>
<pre>
--
-- Query on PLAN_TABLE with Page-Range info
--
   SELECT   SUBSTR(STRIP(CHAR(PLAN.QUERYNO)), 1, 5) AS QUERY
          , CASE PLAN.PARENT_QBLOCKNO
                 WHEN 0 THEN ' '
                        ELSE
                        SUBSTR(STRIP(CHAR(PLAN.PARENT_QBLOCKNO)), 1, 4)
            END AS PBLK
          , SUBSTR(STRIP(CHAR(PLAN.QBLOCKNO)), 1, 4) AS QBLK
          , SUBSTR(STRIP(CHAR(PLAN.PLANNO)), 1, 4) AS PLNO
          , CASE PLAN.MIXOPSEQ
                 WHEN 0 THEN ' '
                        ELSE SUBSTR(STRIP(CHAR(PLAN.MIXOPSEQ)), 1, 4)
            END AS OPSQ
          , PLAN.QBLOCK_TYPE AS TYPE
          , CASE PLAN.JOIN_TYPE
                 WHEN 'F' THEN 'Full'
                 WHEN 'P' THEN 'Pair'
                 WHEN 'S' THEN 'Star'
                 WHEN 'L' THEN CASE PLAN.METHOD
                                    WHEN 1 THEN 'L/R'
                                    WHEN 2 THEN 'L/R'
                                    WHEN 4 THEN 'L/R'
                                           ELSE '?'
                                    END
                 WHEN ' ' THEN CASE PLAN.METHOD
                                    WHEN 1 THEN 'Innr'
                                    WHEN 2 THEN 'Innr'
                                    WHEN 4 THEN 'Innr'
                                           ELSE ' '
                                    END
                          ELSE '*ERR*'
            END AS JOIN
          , CASE PLAN.METHOD
                 WHEN 0 THEN 'First'
                 WHEN 1 THEN 'NLjoin'
                 WHEN 2 THEN 'MSjoin'
                 WHEN 3 THEN 'Sort'
                 WHEN 4 THEN 'Hybrid'
                        ELSE 'UNKNWN'
            END AS METHOD
          , CASE PLAN.TABLE_TYPE
                 WHEN 'B' THEN 'Buffer'
                 WHEN 'C' THEN 'CTE'
                 WHEN 'F' THEN 'TabFun'
                 WHEN 'M' THEN 'MQT'
                 WHEN 'Q' THEN 'Temp'
                 WHEN 'R' THEN 'Recurs'
                 WHEN 'T' THEN 'Table'
                 WHEN 'W' THEN 'Work'
                          ELSE ' '
            END AS TYPE
          , SUBSTR(PLAN.CREATOR, 1, 8) AS CREATOR
          , SUBSTR(PLAN.TNAME, 1, 18) AS TABLE
          , SUBSTR(PLAN.ACCESSNAME, 1, 8) AS NDXNAME
          , CASE PLAN.PRIMARY_ACCESSTYPE
                 WHEN 'D' THEN 'D/'
                 WHEN 'T' THEN 'T/'
                          ELSE ''
            END CONCAT
            STRIP(PLAN.ACCESSTYPE) CONCAT
            CASE WHEN PLAN.PAGE_RANGE = 'Y'
                 THEN '(' CONCAT
                      STRIP(SUBSTR(STRIP(CHAR(RANGE.NUMPARTS)), 1, 4))
                      CONCAT ')'
                 ELSE ''
            END AS ACCESS
          , CASE PLAN.PREFETCH
                 WHEN 'S' THEN 'SEQ'
                 WHEN 'L' THEN 'LST'
                 WHEN 'D' THEN 'DYN'
                          ELSE ' '
            END AS PREF
          , CASE PLAN.INDEXONLY
                 WHEN 'Y' THEN 'XO'
                          ELSE ' '
            END AS XO
          , CASE PLAN.MATCHCOLS
                 WHEN 0 THEN ''
                        ELSE SUBSTR(STRIP(CHAR(PLAN.MATCHCOLS)), 1, 2)
            END AS MC
          , CASE PLAN.SORTC_GROUPBY
                 WHEN 'Y' THEN 'G'
                          ELSE ' '
            END CONCAT
            CASE PLAN.SORTC_JOIN
                 WHEN 'Y' THEN 'J'
                          ELSE ' '
            END CONCAT
            CASE PLAN.SORTC_ORDERBY
                 WHEN 'Y' THEN 'O'
                          ELSE ' '
            END CONCAT
            CASE PLAN.SORTC_UNIQ
                 WHEN 'Y' THEN 'U'
                          ELSE ' '
            END CONCAT
            CASE PLAN.SORTN_GROUPBY
                 WHEN 'Y' THEN 'G'
                          ELSE ' '
            END CONCAT
            CASE PLAN.SORTN_JOIN
                 WHEN 'Y' THEN 'J'
                          ELSE ' '
            END CONCAT
            CASE PLAN.SORTN_ORDERBY
                 WHEN 'Y' THEN 'O'
                          ELSE ' '
            END CONCAT
            CASE PLAN.SORTN_UNIQ
                 WHEN 'Y' THEN 'U'
                          ELSE ' '
            END AS GJOUGJOU
          , CASE PLAN.PARALLELISM_MODE
                 WHEN 'I' THEN 'I/O'
                 WHEN 'C' THEN 'CPU'
                 WHEN 'X' THEN 'SYS'
                          ELSE ' '
            END AS PAR
          , CASE PLAN.CTEREF
                 WHEN 0 THEN ' '
                 ELSE STRIP(CHAR(PLAN.CTEREF))
            END AS CTEREF
   FROM     PLAN_TABLE PLAN
   LEFT OUTER JOIN
            DSN_PGRANGE_TABLE RANGE
        ON  RANGE.QUERYNO  = PLAN.QUERYNO
        AND RANGE.QBLOCKNO = PLAN.QBLOCKNO
        AND RANGE.TABNO    = PLAN.TABNO
   WHERE    PLAN.QUERYNO = 114
   ORDER BY PLAN.QUERYNO
          , PLAN.PARENT_QBLOCKNO DESC
          , PLAN.QBLOCKNO
          , PLAN.PLANNO
          , PLAN.MIXOPSEQ
  ;
</pre>
<hr width="80%" />
<a name="explain2b" id="explain2b"></a>
<pre>
---------+---------+---------+---------+---------+---------+---------+-
+ --------+---------+---------+---------+---------+---------+---------+
+ ---------
QUERY  PBLK  QBLK  PLNO  OPSQ  TYPE    JOIN   METHOD  TYPE    CREATOR
+(@73) TABLE               NDXNAME   ACCESS      PREF  XO  MC  GJOUGJOU
+(@139) PAR  CTEREF
---------+---------+---------+---------+---------+---------+---------+-
+ --------+---------+---------+---------+---------+---------+---------+
+ ---------
114    1     3     1           TABLEX         First   Table   DSN8810
+(@73) DEPT                XDEPT2    I                 XO
114    1     3     2           TABLEX  Innr   NLjoin  Table   DSN8810
+(@73) EMP                 XEMP1     I                     1
114    1     3     3           TABLEX         Sort
+(@132)                                                           U
114          1     1           SELECT         First   Table   DSN8810
+(@73) EMP                 XEMP2     I(2)        LST       1
114          1     2           SELECT  L/R    NLjoin  Table   DSN8810
+(@73) DEPT                XDEPT1    I                     1
114          1     3           SELECT  L/R    NLjoin  Work    TU00001
+(@73) MANAGERS                      T/R                            J
114          1     4           SELECT         Sort
+(@131)                                                          O
DSNE610I NUMBER OF ROWS DISPLAYED IS 7
DSNE616I STATEMENT EXECUTION WAS SUCCESSFUL, SQLCODE IS 100
</pre>
/HTML

         HTMLDEF $EXPLN1.UK3
<!-- UK -->
<a name="explain3a" id="explain3a"></a>
<pre>
--
-- Query on PLAN_TABLE with Page-Range info
--                      and sorting info
--
   WITH     QUERIES
           (QUERYNO)
   AS      (SELECT   114
            FROM     SYSIBM.SYSDUMMY1
            )
          , SORTKEYS
   AS      (SELECT DISTINCT
                     SKEY.QUERYNO
                   , SKEY.QBLOCKNO
                   , SKEY.PLANNO
                   , SKEY.SORTNO
                   , SKEY.TABNO
            FROM     DSN_SORTKEY_TABLE SKEY
            JOIN     QUERIES QRYS
                 ON  QRYS.QUERYNO = SKEY.QUERYNO
            WHERE    SKEY.TABNO &lt;&gt; 0
            )
          , TABLES
   AS      (SELECT DISTINCT
                     PLAN.QUERYNO
                   , PLAN.TABNO
                   , PLAN.TABLE_TYPE
                   , PLAN.CREATOR
                   , PLAN.TNAME
            FROM     PLAN_TABLE PLAN
            JOIN     QUERIES QRYS
                 ON  QRYS.QUERYNO = PLAN.QUERYNO
            WHERE    PLAN.TABNO &lt;&gt; 0
            )
   SELECT   SUBSTR(STRIP(CHAR(PLAN.QUERYNO)), 1, 5) AS QUERY
          , CASE PLAN.PARENT_QBLOCKNO
                 WHEN 0 THEN ' '
                        ELSE
                        SUBSTR(STRIP(CHAR(PLAN.PARENT_QBLOCKNO)), 1, 4)
            END AS PBLK
          , SUBSTR(STRIP(CHAR(PLAN.QBLOCKNO)), 1, 4) AS QBLK
          , SUBSTR(STRIP(CHAR(PLAN.PLANNO)), 1, 4) AS PLNO
          , CASE PLAN.MIXOPSEQ
                 WHEN 0 THEN ' '
                        ELSE SUBSTR(STRIP(CHAR(PLAN.MIXOPSEQ)), 1, 4)
            END AS OPSQ
          , PLAN.QBLOCK_TYPE AS TYPE
          , CASE PLAN.JOIN_TYPE
                 WHEN 'F' THEN 'Full'
                 WHEN 'P' THEN 'Pair'
                 WHEN 'S' THEN 'Star'
                 WHEN 'L' THEN CASE PLAN.METHOD
                                    WHEN 1 THEN 'L/R'
                                    WHEN 2 THEN 'L/R'
                                    WHEN 4 THEN 'L/R'
                                           ELSE '?'
                                    END
                 WHEN ' ' THEN CASE PLAN.METHOD
                                    WHEN 1 THEN 'Innr'
                                    WHEN 2 THEN 'Innr'
                                    WHEN 4 THEN 'Innr'
                                           ELSE ' '
                                    END
                          ELSE '*ERR*'
            END AS JOIN
          , CASE PLAN.METHOD
                 WHEN 0 THEN 'First'
                 WHEN 1 THEN 'NLjoin'
                 WHEN 2 THEN 'MSjoin'
                 WHEN 3 THEN 'Sort'
                 WHEN 4 THEN 'Hybrid'
                        ELSE 'UNKNWN'
            END AS METHOD
          , CASE PLAN.TABLE_TYPE
                 WHEN 'B' THEN 'Buffer'
                 WHEN 'C' THEN 'CTE'
                 WHEN 'F' THEN 'TabFun'
                 WHEN 'M' THEN 'MQT'
                 WHEN 'Q' THEN 'Temp'
                 WHEN 'R' THEN 'Recurs'
                 WHEN 'T' THEN 'Table'
                 WHEN 'W' THEN 'Work'
                          ELSE ' '
            END AS TYPE
          , SUBSTR(PLAN.CREATOR, 1, 8) AS CREATOR
          , SUBSTR(PLAN.TNAME, 1, 18) AS TABLE
          , SUBSTR(PLAN.ACCESSNAME, 1, 8) AS NDXNAME
          , CASE PLAN.PRIMARY_ACCESSTYPE
                 WHEN 'D' THEN 'D/'
                 WHEN 'T' THEN 'T/'
                          ELSE ''
            END CONCAT
            STRIP(PLAN.ACCESSTYPE) CONCAT
            CASE WHEN PLAN.PAGE_RANGE = 'Y'
                 THEN '(' CONCAT
                      STRIP(SUBSTR(STRIP(CHAR(RANGE.NUMPARTS)), 1, 4))
                      CONCAT ')'
                 ELSE ''
            END AS ACCESS
          , CASE PLAN.PREFETCH
                 WHEN 'S' THEN 'SEQ'
                 WHEN 'L' THEN 'LST'
                 WHEN 'D' THEN 'DYN'
                          ELSE ' '
            END AS PREF
          , CASE PLAN.INDEXONLY
                 WHEN 'Y' THEN 'XO'
                          ELSE ' '
            END AS XO
          , CASE PLAN.MATCHCOLS
                 WHEN 0 THEN ''
                        ELSE SUBSTR(STRIP(CHAR(PLAN.MATCHCOLS)), 1, 2)
            END AS MC
          , CASE PLAN.SORTC_GROUPBY
                 WHEN 'Y' THEN 'G'
                          ELSE ' '
            END CONCAT
            CASE PLAN.SORTC_JOIN
                 WHEN 'Y' THEN 'J'
                          ELSE ' '
            END CONCAT
            CASE PLAN.SORTC_ORDERBY
                 WHEN 'Y' THEN 'O'
                          ELSE ' '
            END CONCAT
            CASE PLAN.SORTC_UNIQ
                 WHEN 'Y' THEN 'U'
                          ELSE ' '
            END CONCAT
            CASE PLAN.SORTN_GROUPBY
                 WHEN 'Y' THEN 'G'
                          ELSE ' '
            END CONCAT
            CASE PLAN.SORTN_JOIN
                 WHEN 'Y' THEN 'J'
                          ELSE ' '
            END CONCAT
            CASE PLAN.SORTN_ORDERBY
                 WHEN 'Y' THEN 'O'
                          ELSE ' '
            END CONCAT
            CASE PLAN.SORTN_UNIQ
                 WHEN 'Y' THEN 'U'
                          ELSE ' '
            END AS GJOUGJOU
   FROM     PLAN_TABLE PLAN
   JOIN     QUERIES QRYS
        ON  QRYS.QUERYNO = PLAN.QUERYNO
   LEFT OUTER JOIN
            DSN_PGRANGE_TABLE RANGE
        ON  RANGE.QUERYNO  = PLAN.QUERYNO
        AND RANGE.QBLOCKNO = PLAN.QBLOCKNO
        AND RANGE.TABNO    = PLAN.TABNO
   WHERE    PLAN.METHOD &lt;&gt; 3
  UNION ALL
   SELECT   SUBSTR(STRIP(CHAR(PLAN.QUERYNO)), 1, 5) AS QUERY
          , CASE PLAN.PARENT_QBLOCKNO
                 WHEN 0 THEN ' '
                        ELSE
                        SUBSTR(STRIP(CHAR(PLAN.PARENT_QBLOCKNO)), 1, 4)
            END AS PBLK
          , SUBSTR(STRIP(CHAR(PLAN.QBLOCKNO)), 1, 4) AS QBLK
          , SUBSTR(STRIP(CHAR(PLAN.PLANNO)), 1, 4) AS PLNO
          , CASE WHEN PLAN.MIXOPSEQ &lt;&gt; 0
                 THEN SUBSTR(STRIP(CHAR(PLAN.MIXOPSEQ)), 1, 4)
                 ELSE ''
            END CONCAT
            CASE WHEN SORT.SORTNO &gt; 0
                 THEN SUBSTR('ABCDEFGHIJKLMNOPQRSTUVWXYZ',
                             SORT.SORTNO, 1)
                 ELSE ''
            END AS OPSQ
          , PLAN.QBLOCK_TYPE AS TYPE
          , '' AS JOIN
          , 'Sort' AS METHOD
          , CASE TBLS.TABLE_TYPE
                 WHEN 'B' THEN 'Buffer'
                 WHEN 'C' THEN 'CTE'
                 WHEN 'F' THEN 'TabFun'
                 WHEN 'M' THEN 'MQT'
                 WHEN 'Q' THEN 'Temp'
                 WHEN 'R' THEN 'Recurs'
                 WHEN 'T' THEN 'Table'
                 WHEN 'W' THEN 'Work'
                          ELSE ' '
            END AS TYPE
          , SUBSTR(TBLS.CREATOR, 1, 8) AS CREATOR
          , SUBSTR(TBLS.TNAME, 1, 18) AS TABLE
          , SUBSTR(PLAN.ACCESSNAME, 1, 8) AS NDXNAME
          , CASE PLAN.PRIMARY_ACCESSTYPE
                 WHEN 'D' THEN 'D/'
                 WHEN 'T' THEN 'T/'
                          ELSE ''
            END CONCAT
            STRIP(PLAN.ACCESSTYPE)
            AS ACCESS
          , CASE PLAN.PREFETCH
                 WHEN 'S' THEN 'SEQ'
                 WHEN 'L' THEN 'LST'
                 WHEN 'D' THEN 'DYN'
                          ELSE ' '
            END AS PREF
          , CASE PLAN.INDEXONLY
                 WHEN 'Y' THEN 'XO'
                          ELSE ' '
            END AS XO
          , CASE PLAN.MATCHCOLS
                 WHEN 0 THEN ''
                        ELSE SUBSTR(STRIP(CHAR(PLAN.MATCHCOLS)), 1, 2)
            END AS MC
          , SUBSTR(SORT.SORTC, 1, 4) CONCAT
            SUBSTR(SORT.SORTN, 1, 4) AS GJOUGJOU
   FROM     DSN_SORT_TABLE SORT
   JOIN     QUERIES QRYS
        ON  QRYS.QUERYNO = SORT.QUERYNO
   LEFT OUTER JOIN -- Obtain nr of table being sorted
            SORTKEYS SKEY
        ON  SKEY.QUERYNO  = SORT.QUERYNO
        AND SKEY.QBLOCKNO = SORT.QBLOCKNO
        AND SKEY.PLANNO   = SORT.PLANNO
        AND SKEY.SORTNO   = SORT.SORTNO
   LEFT OUTER JOIN -- Obtain name of table being sorted
            TABLES TBLS
        ON  TBLS.QUERYNO = SKEY.QUERYNO
        AND TBLS.TABNO   = SKEY.TABNO
   LEFT OUTER JOIN -- Join back to relevant PLAN_TABLE row
            PLAN_TABLE PLAN
        ON  PLAN.QUERYNO  = SORT.QUERYNO
        AND PLAN.QBLOCKNO = SORT.QBLOCKNO
        AND PLAN.PLANNO   = SORT.PLANNO
        AND(   PLAN.METHOD   = 3
            OR(    PLAN.SORTC_JOIN = 'Y'
               AND SUBSTR(SORT.SORTC, 2, 1) = 'J'
               )
            OR(    PLAN.SORTN_JOIN = 'Y'
               AND SUBSTR(SORT.SORTN, 2, 1) = 'J'
            )  )
   ORDER BY 1, 2 DESC, 3, 4, 5
  ;
</pre>
<hr width="80%" />
<a name="explain3b" id="explain3b"></a>
<pre>
---------+---------+---------+---------+---------+---------+---------+-
+ --------+---------+---------+---------+---------+---------+-------
QUERY  PBLK  QBLK  PLNO  OPSQ   TYPE    JOIN   METHOD  TYPE    CREATOR
+(@74) TABLE               NDXNAME   ACCESS      PREF  XO  MC  GJOUGJOU
---------+---------+---------+---------+---------+---------+---------+-
+ --------+---------+---------+---------+---------+---------+-------
114    1     3     1            TABLEX         First   Table   DSN8810
+(@74) DEPT                XDEPT2    I                 XO
114    1     3     2            TABLEX  Innr   NLjoin  Table   DSN8810
+(@74) EMP                 XEMP1     I                     1
114    1     3     3     A      TABLEX         Sort    Table   DSN8810
+(@74) EMP                                                        U
114          1     1            SELECT         First   Table   DSN8810
+(@74) EMP                 XEMP2     I(2)        LST       1
114          1     2            SELECT  L/R    NLjoin  Table   DSN8810
+(@74) DEPT                XDEPT1    I                     1
114          1     3            SELECT  L/R    NLjoin  Work    TU00001
+(@74) MANAGERS                      T/R                            J
114          1     3     A      SELECT         Sort    Work    TU00001
+(@74) MANAGERS                      T/R                            J
114          1     4     A      SELECT         Sort    Table   DSN8810
+(@74) EMP                                                       O
114          1     4     B      SELECT         Sort    Table   DSN8810
+(@74) EMP                                                       O
DSNE610I NUMBER OF ROWS DISPLAYED IS 9
DSNE616I STATEMENT EXECUTION WAS SUCCESSFUL, SQLCODE IS 100
</pre>
/HTML
