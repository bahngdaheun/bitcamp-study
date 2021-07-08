SQL> select * from sosi0706;
select * from sosi0706
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> drop table sosi;
drop table sosi
           *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> edit C:\Users\repar\git\database\sosi0706.sql

SQL> edit C:\Users\repar\git\database\sosi.sql

SQL> @ C:\Users\repar\git\database\sosi.sql
drop table sosi
           *
ERROR at line 1:
ORA-00942: table or view does not exist 



Table created.


Commit complete.

SQL> clear screen

SQL> desc sosi;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER(4)
 NAME                                      NOT NULL VARCHAR2(20)
 SALARY                                    NOT NULL NUMBER(6)
 BIRTH                                     NOT NULL DATE
 EMAIL                                              VARCHAR2(20)
 GRADE                                              VARCHAR2(4)

SQL> insert into sosi values(7789, 'hong', 79, sysdate, 'bc@sk.com', 'F');

1 row created.

SQL> insert into sosi values(7790, 'lee', 23, sysdate, 'bb@sk.com', 'C');

1 row created.

SQL> insert into sosi values(7754, 'kim', 57, sysdate, 'aa@sk.com', 'A');

1 row created.

SQL> commit;

Commit complete.

SQL> select * from sosi;

        ID NAME                                         SALARY BIRTH            
---------- ---------------------------------------- ---------- --------         
EMAIL                                    GRADE                                  
---------------------------------------- --------                               
      7789 hong                                             79 21/07/06         
bc@sk.com                                F                                      
                                                                                
      7790 lee                                              23 21/07/06         
bb@sk.com                                C                                      
                                                                                
      7754 kim                                              57 21/07/06         
aa@sk.com                                A                                      
                                                                                

SQL> col name for a10;
SQL> col email for a10;
SQL> col name for a10;
SQL> select * from sosi;

        ID NAME           SALARY BIRTH    EMAIL      GRADE                      
---------- ---------- ---------- -------- ---------- --------                   
      7789 hong               79 21/07/06 bc@sk.com  F                          
      7790 lee                23 21/07/06 bb@sk.com  C                          
      7754 kim                57 21/07/06 aa@sk.com  A                          

SQL> col id for 999;
SQL> select * from sosi;

  ID NAME           SALARY BIRTH    EMAIL      GRADE                            
---- ---------- ---------- -------- ---------- --------                         
#### hong               79 21/07/06 bc@sk.com  F                                
#### lee                23 21/07/06 bb@sk.com  C                                
#### kim                57 21/07/06 aa@sk.com  A                                

SQL> col id for 9999;
SQL> select * from sosi;

   ID NAME           SALARY BIRTH    EMAIL      GRADE                           
----- ---------- ---------- -------- ---------- --------                        
 7789 hong               79 21/07/06 bc@sk.com  F                               
 7790 lee                23 21/07/06 bb@sk.com  C                               
 7754 kim                57 21/07/06 aa@sk.com  A                               

SQL> col salary for 99999;
SQL> select * from sosi;

   ID NAME       SALARY BIRTH    EMAIL      GRADE                               
----- ---------- ------ -------- ---------- --------                            
 7789 hong           79 21/07/06 bc@sk.com  F                                   
 7790 lee            23 21/07/06 bb@sk.com  C                                   
 7754 kim            57 21/07/06 aa@sk.com  A                                   

SQL> insert into sosi values(7, '김고은', 100, to_date('17/12/12'), 'aa@girl.com', 'A');

1 row created.

SQL> insert into sosi values(6, '태연', 100, to_date('19/12/12'), 'aa@girl.com', 'A');

1 row created.

SQL> insert into sosi values(2, '티파니', 90, to_date('17/11/13'), 'bb@girl.com', 'B');

1 row created.

SQL> insert into sosi values(3, '제니', 120, to_date('17/10/25'), 'cc@girl.com', 'C');

1 row created.

SQL> insert into sosi values(4, '수영', 90, sysdate, 'dd@girl.com', 'A');

1 row created.

SQL> commit;

Commit complete.

SQL> select * from sosi;

   ID NAME       SALARY BIRTH    EMAIL      GRADE                               
----- ---------- ------ -------- ---------- --------                            
 7789 hong           79 21/07/06 bc@sk.com  F                                   
 7790 lee            23 21/07/06 bb@sk.com  C                                   
 7754 kim            57 21/07/06 aa@sk.com  A                                   
    7 김고은        100 17/12/12 aa@girl.co A                                   
                                 m                                              
                                                                                
    6 태연          100 19/12/12 aa@girl.co A                                   
                                 m                                              
                                                                                
    2 티파니         90 17/11/13 bb@girl.co B                                   
                                 m                                              

   ID NAME       SALARY BIRTH    EMAIL      GRADE                               
----- ---------- ------ -------- ---------- --------                            
                                                                                
    3 제니          120 17/10/25 cc@girl.co C                                   
                                 m                                              
                                                                                
    4 수영           90 21/07/06 dd@girl.co A                                   
                                 m                                              
                                                                                

8 rows selected.

SQL> col email for a14
SQL> select * from sosi;

   ID NAME       SALARY BIRTH    EMAIL          GRADE                           
----- ---------- ------ -------- -------------- --------                        
 7789 hong           79 21/07/06 bc@sk.com      F                               
 7790 lee            23 21/07/06 bb@sk.com      C                               
 7754 kim            57 21/07/06 aa@sk.com      A                               
    7 김고은        100 17/12/12 aa@girl.com    A                               
    6 태연          100 19/12/12 aa@girl.com    A                               
    2 티파니         90 17/11/13 bb@girl.com    B                               
    3 제니          120 17/10/25 cc@girl.com    C                               
    4 수영           90 21/07/06 dd@girl.com    A                               

8 rows selected.

SQL> select name, salary, grade from sosi;

NAME       SALARY GRADE                                                         
---------- ------ --------                                                      
hong           79 F                                                             
lee            23 C                                                             
kim            57 A                                                             
김고은        100 A                                                             
태연          100 A                                                             
티파니         90 B                                                             
제니          120 C                                                             
수영           90 A                                                             

8 rows selected.

SQL> select name, salary, grade from sosi where id=2
  2  
SQL> select name, salary, grade from sosi where id=2;

NAME       SALARY GRADE                                                         
---------- ------ --------                                                      
티파니         90 B                                                             

SQL> select id,name, salary, grade from sosi where id=2;

   ID NAME       SALARY GRADE                                                   
----- ---------- ------ --------                                                
    2 티파니         90 B                                                       

SQL> select rownum, id, name, salary, birth, email, grade from sosi;

    ROWNUM    ID NAME       SALARY BIRTH    EMAIL          GRADE                
---------- ----- ---------- ------ -------- -------------- --------             
         1  7789 hong           79 21/07/06 bc@sk.com      F                    
         2  7790 lee            23 21/07/06 bb@sk.com      C                    
         3  7754 kim            57 21/07/06 aa@sk.com      A                    
         4     7 김고은        100 17/12/12 aa@girl.com    A                    
         5     6 태연          100 19/12/12 aa@girl.com    A                    
         6     2 티파니         90 17/11/13 bb@girl.com    B                    
         7     3 제니          120 17/10/25 cc@girl.com    C                    
         8     4 수영           90 21/07/06 dd@girl.com    A                    

8 rows selected.

SQL> col grade for a5
SQL> select rownum, id, name, salary, birth, email, grade from sosi;

    ROWNUM    ID NAME       SALARY BIRTH    EMAIL          GRADE                
---------- ----- ---------- ------ -------- -------------- -----                
         1  7789 hong           79 21/07/06 bc@sk.com      F                    
         2  7790 lee            23 21/07/06 bb@sk.com      C                    
         3  7754 kim            57 21/07/06 aa@sk.com      A                    
         4     7 김고은        100 17/12/12 aa@girl.com    A                    
         5     6 태연          100 19/12/12 aa@girl.com    A                    
         6     2 티파니         90 17/11/13 bb@girl.com    B                    
         7     3 제니          120 17/10/25 cc@girl.com    C                    
         8     4 수영           90 21/07/06 dd@girl.com    A                    

8 rows selected.

SQL> select rownum, * from sosi;
select rownum, * from sosi
               *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select rownum, s.* from sosi s;

    ROWNUM    ID NAME       SALARY BIRTH    EMAIL          GRADE                
---------- ----- ---------- ------ -------- -------------- -----                
         1  7789 hong           79 21/07/06 bc@sk.com      F                    
         2  7790 lee            23 21/07/06 bb@sk.com      C                    
         3  7754 kim            57 21/07/06 aa@sk.com      A                    
         4     7 김고은        100 17/12/12 aa@girl.com    A                    
         5     6 태연          100 19/12/12 aa@girl.com    A                    
         6     2 티파니         90 17/11/13 bb@girl.com    B                    
         7     3 제니          120 17/10/25 cc@girl.com    C                    
         8     4 수영           90 21/07/06 dd@girl.com    A                    

8 rows selected.

SQL> select rownum, s.* from sosi s where id=2;

    ROWNUM    ID NAME       SALARY BIRTH    EMAIL          GRADE                
---------- ----- ---------- ------ -------- -------------- -----                
         1     2 티파니         90 17/11/13 bb@girl.com    B                    

SQL> select * from sosi s where grade='b';

no rows selected

SQL> select * from sosi s where grade=b;
select * from sosi s where grade=b
                                 *
ERROR at line 1:
ORA-00904: "B": invalid identifier 


SQL> select * from sosi s where grade='B';

   ID NAME       SALARY BIRTH    EMAIL          GRADE                           
----- ---------- ------ -------- -------------- -----                           
    2 티파니         90 17/11/13 bb@girl.com    B                               

SQL> select * from sosi where grade='B';

   ID NAME       SALARY BIRTH    EMAIL          GRADE                           
----- ---------- ------ -------- -------------- -----                           
    2 티파니         90 17/11/13 bb@girl.com    B                               

SQL> select * from sosi where salary > 120;

no rows selected

SQL> select * from sosi where salary <=120;

   ID NAME       SALARY BIRTH    EMAIL          GRADE                           
----- ---------- ------ -------- -------------- -----                           
 7789 hong           79 21/07/06 bc@sk.com      F                               
 7790 lee            23 21/07/06 bb@sk.com      C                               
 7754 kim            57 21/07/06 aa@sk.com      A                               
    7 김고은        100 17/12/12 aa@girl.com    A                               
    6 태연          100 19/12/12 aa@girl.com    A                               
    2 티파니         90 17/11/13 bb@girl.com    B                               
    3 제니          120 17/10/25 cc@girl.com    C                               
    4 수영           90 21/07/06 dd@girl.com    A                               

8 rows selected.

SQL> select * from sosi where salary > 90;

   ID NAME       SALARY BIRTH    EMAIL          GRADE                           
----- ---------- ------ -------- -------------- -----                           
    7 김고은        100 17/12/12 aa@girl.com    A                               
    6 태연          100 19/12/12 aa@girl.com    A                               
    3 제니          120 17/10/25 cc@girl.com    C                               

SQL> select * from sosi where salary <= 90;

   ID NAME       SALARY BIRTH    EMAIL          GRADE                           
----- ---------- ------ -------- -------------- -----                           
 7789 hong           79 21/07/06 bc@sk.com      F                               
 7790 lee            23 21/07/06 bb@sk.com      C                               
 7754 kim            57 21/07/06 aa@sk.com      A                               
    2 티파니         90 17/11/13 bb@girl.com    B                               
    4 수영           90 21/07/06 dd@girl.com    A                               

SQL> update sosi set id=2100 where id=2;

1 row updated.

SQL> update sosi set id=3000 where id=3;

1 row updated.

SQL> select * from sosi;

   ID NAME       SALARY BIRTH    EMAIL          GRADE                           
----- ---------- ------ -------- -------------- -----                           
 7789 hong           79 21/07/06 bc@sk.com      F                               
 7790 lee            23 21/07/06 bb@sk.com      C                               
 7754 kim            57 21/07/06 aa@sk.com      A                               
    7 김고은        100 17/12/12 aa@girl.com    A                               
    6 태연          100 19/12/12 aa@girl.com    A                               
 2100 티파니         90 17/11/13 bb@girl.com    B                               
 3000 제니          120 17/10/25 cc@girl.com    C                               
    4 수영           90 21/07/06 dd@girl.com    A                               

8 rows selected.

SQL> clear screen

SQL> select * from insa;

     SABUN NAME       BUSE                                                      
---------- ---------- ----------------------------------------                  
      7778 국민       스타                                                      
      1200 cd         desk                                                      
      1000 dada       ceo                                                       
      1100 one        전산                                                      
      7775 ai         챗봇                                                      
      3321 aaa        bbb                                                       
      5678 kay        cr                                                        
       223 kay        cr                                                        

8 rows selected.

SQL> select * from sosi;

   ID NAME       SALARY BIRTH    EMAIL          GRADE                           
----- ---------- ------ -------- -------------- -----                           
 7789 hong           79 21/07/06 bc@sk.com      F                               
 7790 lee            23 21/07/06 bb@sk.com      C                               
 7754 kim            57 21/07/06 aa@sk.com      A                               
    7 김고은        100 17/12/12 aa@girl.com    A                               
    6 태연          100 19/12/12 aa@girl.com    A                               
 2100 티파니         90 17/11/13 bb@girl.com    B                               
 3000 제니          120 17/10/25 cc@girl.com    C                               
    4 수영           90 21/07/06 dd@girl.com    A                               

8 rows selected.

SQL> update sosi set id=5827 where id=7;

1 row updated.

SQL> update sosi set id=6238 where id=6;

1 row updated.

SQL> commit;

Commit complete.

SQL> select * from sosi;

   ID NAME       SALARY BIRTH    EMAIL          GRADE                           
----- ---------- ------ -------- -------------- -----                           
 7789 hong           79 21/07/06 bc@sk.com      F                               
 7790 lee            23 21/07/06 bb@sk.com      C                               
 7754 kim            57 21/07/06 aa@sk.com      A                               
 5827 김고은        100 17/12/12 aa@girl.com    A                               
 6238 태연          100 19/12/12 aa@girl.com    A                               
 2100 티파니         90 17/11/13 bb@girl.com    B                               
 3000 제니          120 17/10/25 cc@girl.com    C                               
    4 수영           90 21/07/06 dd@girl.com    A                               

8 rows selected.

SQL> update sosi set name='bit';

8 rows updated.

SQL> select * from sosi;

   ID NAME       SALARY BIRTH    EMAIL          GRADE                           
----- ---------- ------ -------- -------------- -----                           
 7789 bit            79 21/07/06 bc@sk.com      F                               
 7790 bit            23 21/07/06 bb@sk.com      C                               
 7754 bit            57 21/07/06 aa@sk.com      A                               
 5827 bit           100 17/12/12 aa@girl.com    A                               
 6238 bit           100 19/12/12 aa@girl.com    A                               
 2100 bit            90 17/11/13 bb@girl.com    B                               
 3000 bit           120 17/10/25 cc@girl.com    C                               
    4 bit            90 21/07/06 dd@girl.com    A                               

8 rows selected.

SQL> rollback;

Rollback complete.

SQL> select * from sosi;

   ID NAME       SALARY BIRTH    EMAIL          GRADE                           
----- ---------- ------ -------- -------------- -----                           
 7789 hong           79 21/07/06 bc@sk.com      F                               
 7790 lee            23 21/07/06 bb@sk.com      C                               
 7754 kim            57 21/07/06 aa@sk.com      A                               
 5827 김고은        100 17/12/12 aa@girl.com    A                               
 6238 태연          100 19/12/12 aa@girl.com    A                               
 2100 티파니         90 17/11/13 bb@girl.com    B                               
 3000 제니          120 17/10/25 cc@girl.com    C                               
    4 수영           90 21/07/06 dd@girl.com    A                               

8 rows selected.

SQL> update sosi set name='고길동', salary=100, birth=to_char('20/07/05'), email='bt@ko.com', grade='A', where id=2100;
update sosi set name='고길동', salary=100, birth=to_char('20/07/05'), email='bt@ko.com', grade='A', where id=2100
                                                                                                       *
ERROR at line 1:
ORA-01747: invalid user.table.column, table.column, or column specification 


SQL> update sosi set name='고길동', salary=100, birth=to_char('20/07/05'), email='bt@ko.com', grade='A' where id=2100;

1 row updated.

SQL> update sosi set name='cake', salary=21 where id=3000;

1 row updated.

SQL> select * from sosi;

   ID NAME       SALARY BIRTH    EMAIL          GRADE                           
----- ---------- ------ -------- -------------- -----                           
 7789 hong           79 21/07/06 bc@sk.com      F                               
 7790 lee            23 21/07/06 bb@sk.com      C                               
 7754 kim            57 21/07/06 aa@sk.com      A                               
 5827 김고은        100 17/12/12 aa@girl.com    A                               
 6238 태연          100 19/12/12 aa@girl.com    A                               
 2100 고길동        100 20/07/05 bt@ko.com      A                               
 3000 cake           21 17/10/25 cc@girl.com    C                               
    4 수영           90 21/07/06 dd@girl.com    A                               

8 rows selected.

SQL> update sosi set id=4269 where id=4;

1 row updated.

SQL> select * from sosi;

   ID NAME       SALARY BIRTH    EMAIL          GRADE                           
----- ---------- ------ -------- -------------- -----                           
 7789 hong           79 21/07/06 bc@sk.com      F                               
 7790 lee            23 21/07/06 bb@sk.com      C                               
 7754 kim            57 21/07/06 aa@sk.com      A                               
 5827 김고은        100 17/12/12 aa@girl.com    A                               
 6238 태연          100 19/12/12 aa@girl.com    A                               
 2100 고길동        100 20/07/05 bt@ko.com      A                               
 3000 cake           21 17/10/25 cc@girl.com    C                               
 4269 수영           90 21/07/06 dd@girl.com    A                               

8 rows selected.

SQL> update sosi set salary=5500, email='mo@ney.com', grade='B' where id=7754;

1 row updated.

SQL> update sosi set salary=68, email='kp@32.com', grade='D' where id=5827;

1 row updated.

SQL> select * from sosi;

   ID NAME       SALARY BIRTH    EMAIL          GRADE                           
----- ---------- ------ -------- -------------- -----                           
 7789 hong           79 21/07/06 bc@sk.com      F                               
 7790 lee            23 21/07/06 bb@sk.com      C                               
 7754 kim          5500 21/07/06 mo@ney.com     B                               
 5827 김고은         68 17/12/12 kp@32.com      D                               
 6238 태연          100 19/12/12 aa@girl.com    A                               
 2100 고길동        100 20/07/05 bt@ko.com      A                               
 3000 cake           21 17/10/25 cc@girl.com    C                               
 4269 수영           90 21/07/06 dd@girl.com    A                               

8 rows selected.

SQL> insert into sosi values(8264, 'dada', 3800, sysdate, 'he@llo.com', 'S');

1 row created.

SQL> insert into sosi values(6621, 'LB', 33, to_date('19/12/12'), 'ta@llo.com', 'E');

1 row created.

SQL> insert into sosi values(1325, 'LC', 11, to_char('19/12/12'), 'qo@llo.com', 'F');

1 row created.

SQL> select * from sosi;

   ID NAME       SALARY BIRTH    EMAIL          GRADE                           
----- ---------- ------ -------- -------------- -----                           
 7789 hong           79 21/07/06 bc@sk.com      F                               
 7790 lee            23 21/07/06 bb@sk.com      C                               
 7754 kim          5500 21/07/06 mo@ney.com     B                               
 5827 김고은         68 17/12/12 kp@32.com      D                               
 6238 태연          100 19/12/12 aa@girl.com    A                               
 2100 고길동        100 20/07/05 bt@ko.com      A                               
 3000 cake           21 17/10/25 cc@girl.com    C                               
 4269 수영           90 21/07/06 dd@girl.com    A                               
 8264 dada         3800 21/07/06 he@llo.com     S                               
 6621 LB             33 19/12/12 ta@llo.com     E                               
 1325 LC             11 19/12/12 qo@llo.com     F                               

11 rows selected.

SQL> spool off
