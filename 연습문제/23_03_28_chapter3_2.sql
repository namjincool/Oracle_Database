-- 1�� ���� --
select *from book;
select *from orders;
select *from customer;
select bookname from book where bookid=1; --���� ��ȣ�� 1�� ������ �̸� 
select bookname from book where price>=20000; -- ������ 20000�� �̻��� ������ �̸� 
select sum(saleprice) from orders where custid=1; -- �������� �ѱ��ž�
select sum(o.saleprice) from orders o,customer c where c.custid=o.custid and c.name like '������'; --�������� �ѱ��ž�
select count(*) from orders where custid=1; -- �������� ������ ������ �� 
select count(*) from orders o,customer c where c.custid=o.custid and c.name like '������'; --�������� ������ ������ �� 
-- 1�� ���� --
-- 2�� ���� --
select *from book;
select *from orders;
select *from customer;
select count(*) from book; --���� ���� ������ �Ѽ� 
select count(Distinct publisher) from book; -- ���缭���� ������ �Ⱓ�ϴ� ���ǻ��� �� 
select name,address from customer; -- ���� �̸��� �ּ�

select orderid from orders where orderdate BETWEEN '20/07/04' AND '20/07/07'; --20�� 7�� 4�Ϻ��� 7�� 7�ϱ����� ���� �ֹ� ��ȣ
select orderid from orders where orderdate NOT BETWEEN '20/07/04' AND '20/07/07'; --20�� 7�� 4�Ϻ��� 7�� 7�ϱ����� ���� �ֹ� ��ȣ�� ������ ���� �ֹ� ��ȣ 

select name,address from customer where substr(name,0,1)='��'; --�̸��� ������ �����ϴ� ���� �̸��� �ּ�  
select name,address from customer where name like '��%';
select name,address from customer where substr(name,0,1)='��' AND substr(name,-1)='��'; --�̸��� ������ �����ϰ� �Ʒ� ������ ���� �̸��� �ּ� 
select name,address from customer where name like '��_��';
-- 2�� ���� --