select *from book;
select *from orders;
select *from customer;
/*�������� ������ ������ ���ǻ� �� */
select count(b.publisher)"���ǻ� ��" from orders o,customer c,book b where c.custid=o.custid and c.name like '������' and b.bookid=o.bookid; 
/*�������� ������ ������ �̸�,����,������ �ǸŰ����� ���� price-saleprice*/ 
select b.bookname,b.price,o.saleprice,(b.price-o.saleprice)"������ �ǸŰ� ����" from orders o,customer c,book b where c.custid=o.custid and c.name like '������' and b.bookid=o.bookid;
/*�������� �������� ���� ������ �̸�*/
select Distinct b.bookname from orders o,customer c,book b where not c.custid=o.custid and c.name like '������' and b.bookid=o.bookid;/*�ֹ����� ���� ���� �̸�*/
/*�ֹ����� ���� ���� �̸�*/
select c.name from customer c where c.custid not in (select Distinct o.custid from orders o);
/*�ֹ� �ݾ��� �Ѿװ� �ֹ��� ��� �ݾ�*/
select sum(saleprice)"����",avg(saleprice)"���" from orders;
/*���� �̸��� ���� ���ž�*/
select name,sum(saleprice) from customer,orders where orders.custid=customer.custid group by name;
/*���� �̸��� ���� ������ �������*/
select name,bookname from book,orders,customer where book.bookid=orders.bookid and orders.custid=customer.custid;
/*������ ���ݰ� �ǸŰ����� ���̰� ���� ���� �ֹ�*/
select * from book,orders where book.bookid=orders.bookid and price-saleprice = (select max(price-saleprice) from book,orders where book.bookid = orders.bookid);
/*������ �Ǹž� ��պ��� �ڽ��� ���ž� ����� �� ���� ���� �̸� */
select name,avg(saleprice) from customer,orders where customer.custid=orders.custid group by name having avg(saleprice)>(select avg(saleprice) from orders); 