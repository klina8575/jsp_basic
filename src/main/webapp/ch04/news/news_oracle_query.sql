create table NEWS (
    AID number primary key,
    TITLE varchar2(255) not null,
    IMG varchar2(255) not null,
    NEWS_DATE date,
    CONTENT clob
);

create sequence AID_SEQ
       increment by 1
       start with 1
       minvalue 1
       maxvalue 9999
       nocycle
       nocache
       noorder;


commit;