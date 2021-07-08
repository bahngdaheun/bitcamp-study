drop table sosi;

create table sosi (
 id number(4) not null primary key,
 name varchar2(20) not null,
 salary number(6) not null,
 birth date not null,
 email varchar2(20),
 grade varchar2(4)
 );

commit;