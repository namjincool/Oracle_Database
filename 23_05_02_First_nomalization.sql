--7장 normalization(정규화)
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
--summer테이블에서 class가 C인 튜플의 가격을 가르쳐줘
select distinct class from summer where price=(select max(price) from summer);
--summer테이블에서 가격이 가장 큰 튜플을 중복을 제거해서 가르쳐줘
select count(*),sum(price) from summer;
--summer테이블의 튜플개수와 , 가격의 총합을 가르쳐줘

--삭제이상 : 200번 학생의 수강신청을 취소해라
delete from summer where sid=200; 
select *from summer; -- 이렇게 실행되면 이상이없는데?
select price from summer where class='C'; -- 안나오는데?

insert into summer values(200,'C',10000);
insert into summer values(null,'Java',25000);

select count(*) 수강인원 from summer; --튜플은 5개지만 수강신청한 인원은 4명인데 출력은 5명이뜸
--위같은 상황을 삽입이상이라고 함 , 아래처럼 count함수에 정확한 속성을 넣어주거나 where조건을 통해서 걸러주면 됨
select count(sid) 수강인원 from summer; 
select count(*) 수강인원 from summer where sid is not null;

update summer set price =15000 where class='FORTRAN';

select distinct price FORTRAN수강료 from summer where class='FORTRAN';
update summer set price=20000 where class = 'FORTRAN';
update summer set price=15000 where class ='FORTRAN' and sid=100;
select * from summer;

select price FORTRAN수강료 from summer where class ='FORTRAN';
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
--계절학기를 듣는 학생의 학번과 수강하는 과목
select price from summerprice where class='C';
--C과목의 수강료
select class from summerprice where price = (select max(price) from summerprice);
--수강료가 가장비싼 과목
select count(*),sum(price) from summerenroll s1,summerprice s2 where s1.class=s2.class;
--계절학기를 듣는 학생 수와 수강료 총액?

delete from summerenroll where sid=200;

select *from summerenroll;

select price C수강료 from summerprice where class='C';

insert into summerprice values ('java',25000);

select *from summerprice;
select *from summerenroll;

update summerprice set price=15000 where class='FORTRAN';

select price FORTRAN수강료 from summerprice where class='FORTRAN';