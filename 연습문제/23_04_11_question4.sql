select *from book;
--(4-1)
insert into book values (11,'스포츠 세계','대한미디어',10000);
--(4-2)
delete from book where book.publisher='삼성당';
--(4-3)
delete from book where book.publisher='이상미디어';
--(4-4)
update book set book.publisher='대한출판사' where book.publisher='대한미디어';
--(4-5)
create table Bookcompany(
    name varchar2(20) primary key,
    address varchar2(20),
    begin date
);
--(4-6)
alter table Bookcompany add webaddress varchar2(30);
--(4-7)
insert into Bookcompany values ('한빛 아카데미','서울시 마포구','1993-01-01','http://hanbit.co.kr');


