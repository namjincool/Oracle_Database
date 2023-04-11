create table Newbook(
    bookid number PRIMARY KEY,
    bookname varchar2(20),
    publisher varchar2(20),
    price number
);
create table NewCustomer(
    custid number primary key,
    name varchar2(40),
    address varchar2(40),
    phone varchar2(30)
);
create table NewOrders(
    orderid number,
    custid number not null,
    bookid number not null,
    saleprice number,
    orderdate date,
    primary key(orderid),
    FOREIGN key(custid) REFERENCES NewCustomer(custid) on delete Cascade);

Insert into book(bookid,bookname,publisher,price) values(11,'������ ����','�Ѽ����м���',90000);
Insert into book(bookid,bookname,publisher) values(14,'������ ����','�Ѽ����м���');
Insert into book(bookid,bookname,price,publisher) select bookid,bookname,price,publisher from Imported_book;

select *from book order by 1;
select *from imported_book;

update customer set address='���ѹα� �λ�' where custid=5;
select *from customer;
update customer set address=(select address from customer where name='�迬��') where name like '�ڼ���';

delete from customer where custid=5;
rollback;