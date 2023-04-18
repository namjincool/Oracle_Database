/*department table ����*/
CREATE TABLE department (
  depno NUMBER(10) NOT NULL PRIMARY KEY,
  deptname VARCHAR2(20),
  manager VARCHAR2(20)
);

/*employee table ����*/
CREATE TABLE employee (
  empno NUMBER(10) NOT NULL PRIMARY KEY,
  name VARCHAR2(20),
  phoneno NUMBER(11),
  address VARCHAR2(20),
  sex VARCHAR2(10),
  position VARCHAR2(20),
  deptno NUMBER(10),
  FOREIGN KEY (deptno) REFERENCES department(depno)
);

/*project table ����*/
CREATE TABLE project (
  projno NUMBER(10) NOT NULL PRIMARY KEY,
  projname VARCHAR2(20),
  deptno NUMBER(10),
  FOREIGN KEY (deptno) REFERENCES department(depno)
);

/*works table ����*/
CREATE TABLE works (
  projno NUMBER(10) NOT NULL,
  empno NUMBER(10) NOT NULL,
  hoursworked NUMBER(10),
  PRIMARY KEY (projno, empno),
  FOREIGN KEY (projno) REFERENCES project(projno),
  FOREIGN KEY (empno) REFERENCES employee(empno)
);

/*department table ������*/
INSERT INTO department (depno, deptname, manager) VALUES (1, 'IT', '����');
INSERT INTO department (depno, deptname, manager) VALUES (2, 'Marketing', 'ȫ�浿');

/*employee table ������*/
INSERT INTO employee (empno, name, phoneno, address, sex, position, deptno) VALUES (1, '�����', 1012341232, '����', '��', 'Programmer', 1);
INSERT INTO employee (empno, name, phoneno, address, sex, position, deptno) VALUES (2, '�̼���', 1012323122, '����', '��', 'Programmer', 1);
INSERT INTO employee (empno, name, phoneno, address, sex, position, deptno) VALUES (3, '�ڿ���', 1076851231, '����', '��', 'Salesperson', 2);
INSERT INTO employee (empno, name, phoneno, address, sex, position, deptno) VALUES (4, 'ȫ�浿', 1012341546, '����', '��', 'Manager', 2);
INSERT INTO employee (empno, name, phoneno, address, sex, position, deptno) VALUES (5, '����', 1012311112, '����', '��', 'Manager', 1);

/*project table ������*/

select *from project;