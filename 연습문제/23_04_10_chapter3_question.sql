select *from book;
select *from orders;
select *from customer;
--�������� ������ ������ ���ǻ� ��
select count(distinct publisher) from book b,orders o,customer c where c.custid=o.custid and b.bookid=o.bookid and c.name like '������';
--�������� ������ ������ �̸�, ���� ,������ �ǸŰ����� ����
select b.price,o.saleprice,b.price-o.saleprice from book b,orders o,customer c where c.custid=o.custid and b.bookid=o.bookid and c.name like '������';
--�������� �������� ���� ������ �̸� 
select b.name from book b,orders o,customer c where c.custid=o.custid and b.bookid=o.bookid and c.name like '������';
--�������� �������� ���� ������ �̸� 
select Distinct b.bookname from book b,orders o,customer c where not c.custid=o.custid and b.bookid=o.bookid and c.name like '������';
--�ֹ����� ���� ���� �̸�(�μ� ���� ���)
select name from customer where name not in (select c.name from customer c,orders o where c.custid=o.custid); 
--�ֹ��ݾ��� �Ѿ�, �ֹ��� ��ձݾ�
select sum(saleprice),avg(saleprice) from orders;
--���� �̸��� ���� ���ž� 
select c.name,sum(saleprice)as total from customer c,orders o where c.custid=o.custid group by name;
--���� �̸��� ���� ������ �������
select c.name,b.bookname from customer c , book b ,orders o where o.custid=c.custid and o.bookid=b.bookid;
--������ ���ݰ� �ǸŰ����� ���̰� ���� ���� �ֹ� 
select *from orders o,book b where b.bookid=o.bookid and price-saleprice=(select max(price-saleprice) from book b,orders o where b.bookid=o.bookid);
--������ �Ǹž� ��պ��� �ڽ��� ���ž� ����� �� ���� ���� �̸�
select name,avg(saleprice) from customer,orders where customer.custid=orders.custid group by name having avg(saleprice)>(select avg(saleprice) from orders);