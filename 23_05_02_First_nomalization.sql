--7�� normalization(����ȭ)
create table summer(
    sid number,
    class varchar2(20),
    price number
);
insert into summer values(100,'FORTRAN',20000);
insert into summer values(150,'PASCAL',15000);
insert into summer values(200,'C',10000);
insert into summer values(250,'FORTRAN',20000);
select *from summer;

select price from summer where class='C';
--summer���̺��� class�� C�� Ʃ���� ������ ��������
select distinct class from summer where price=(select max(price) from summer);
--summer���̺��� ������ ���� ū Ʃ���� �ߺ��� �����ؼ� ��������
select count(*),sum(price) from summer;
--summer���̺��� Ʃ�ð����� , ������ ������ ��������

--�����̻� : 200�� �л��� ������û�� ����ض�
delete from summer where sid=200; 
select *from summer; -- �̷��� ����Ǹ� �̻��̾��µ�?
select price from summer where class='C'; -- �ȳ����µ�?

insert into summer values(200,'C',10000);
insert into summer values(null,'Java',25000);

select count(*) �����ο� from summer; --Ʃ���� 5������ ������û�� �ο��� 4���ε� ����� 5���̶�
--������ ��Ȳ�� �����̻��̶�� �� , �Ʒ�ó�� count�Լ��� ��Ȯ�� �Ӽ��� �־��ְų� where������ ���ؼ� �ɷ��ָ� ��
select count(sid) �����ο� from summer; 
select count(*) �����ο� from summer where sid is not null;

update summer set price =15000 where class='FORTRAN';

select distinct price FORTRAN������ from summer where class='FORTRAN';
update summer set price=20000 where class = 'FORTRAN';
update summer set price=15000 where class ='FORTRAN' and sid=100;
select * from summer;

select price FORTRAN������ from summer where class ='FORTRAN';
update summer set price=20000 where class ='FORTRAN';
delete from summer where sid is null;

create table summerprice(
    class varchar2(20),
    price number
);
insert into summerprice values('FORTRAN',20000);
insert into summerprice values('PASCAL',15000);
insert into summerprice values('C',10000);
select *from summerprice;

create table summerenroll(
    sid integer,
    class varchar2(20)
);
insert into summerenroll values (100,'FORTRAN');
insert into summerenroll values (150,'PASCAL');
insert into summerenroll values (200,'C');
insert into summerenroll values (250,'FORTRAN');

select *from summerenroll;
--�����б⸦ ��� �л��� �й��� �����ϴ� ����
select price from summerprice where class='C';
--C������ ������
select class from summerprice where price = (select max(price) from summerprice);
--�����ᰡ ������ ����
select count(*),sum(price) from summerenroll s1,summerprice s2 where s1.class=s2.class;
--�����б⸦ ��� �л� ���� ������ �Ѿ�?

delete from summerenroll where sid=200;

select *from summerenroll;

select price C������ from summerprice where class='C';

insert into summerprice values ('java',25000);

select *from summerprice;
select *from summerenroll;

update summerprice set price=15000 where class='FORTRAN';

select price FORTRAN������ from summerprice where class='FORTRAN';