select *from book;
--(4-1)
insert into book values (11,'������ ����','���ѹ̵��',10000);
--(4-2)
delete from book where book.publisher='�Ｚ��';
--(4-3)
delete from book where book.publisher='�̻�̵��';
--(4-4)
update book set book.publisher='�������ǻ�' where book.publisher='���ѹ̵��';
--(4-5)
create table Bookcompany(
    name varchar2(20) primary key,
    address varchar2(20),
    begin date
);
--(4-6)
alter table Bookcompany add webaddress varchar2(30);
--(4-7)
insert into Bookcompany values ('�Ѻ� ��ī����','����� ������','1993-01-01','http://hanbit.co.kr');


