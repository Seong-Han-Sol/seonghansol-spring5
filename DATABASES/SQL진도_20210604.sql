--19�� ������߰�(CreateWorkSpace)�� ����Ŭ����ũž(����)X ��� 
-- �����α׷��� ��� (http://127.0.0.1:9000/apex/f?p=4950)
-- ,SQL�÷���X, 
--15�� PK������ �ڵ����� 2�� ���� NOT NULL(�󰪹���), UNIQUE(NO�ߺ�)
-- ��������(constraint) �� �ڵ�����, Index(���̺�)�� �ڵ�����(�˻����߿�)
-- ERD�� �Խ������̺�-[���|÷������]Foreign KEY(�ܷ�Ű)���ڰ������
--14�� Ʈ����� DB�ܿ��� ������� �ʰ�, 
-- �������ܿ��� Ʈ������� ��� @Transactional �������̽��� ���
-- commit��rollback;(DML��:insert,update,delete)
-- rollback�� ���� ������ Ŀ�Ե� ���·� �ǵ����ϴ�.
--12�� ���̺� ��������(create;),����(alter;),����(drop;)
-- ERD ������ ���̾�׷����� ������ ���̺� ����(�����忣���Ͼ)
DROP TABLE tbl_member_del;
CREATE TABLE TBL_MEMBER_DEL
(
USER_ID VARCHAR(50) PRIMARY KEY
,USER_PW VARCHAR(255)
,USER_NAME VARCHAR(255)
,EMAIL VARCHAR(255)
,POINT NUMBER(11)
,ENABLED NUMBER(1)
,LEVELS VARCHAR(255)
,REG_DATE TIMESTAMP
,UPDATE_DATE TIMESTAMP
);
--ALTER ���̺�� �ʵ�� ����(�Ʒ�)
DESC tbl_member_del;
ALTER TABLE tbl_member_del RENAME COLUMN email TO user_email;
--DEPT���̺��� deptno ����2�ڸ������� ���� -> 4�ڸ� ũ�⸦ ����
DESC dept;--��, �����ڸ� ū�ڸ��� ���� ��������.
ALTER TABLE dept MODIFY(deptno NUMBER(4));
--11��������
-- �����༭������ �ʵ尪�� ���Ҷ�, ���ϴ� ���� ������(�ʵ尪)
-- �����༭������ ���̺��� select������ ����(���ڵ尪)
--10.���̺� ���� 2�����̺� �����ؼ� ����� ���ϴ� �����
--��۰��� ���Ҷ�, 
--īƼ�þ�������Ʈ ����(������-�Խù�10��,���100=110��~1000��)
--(�γ�)����(������) �� ���ϸ��� ���
--�Ʒ����ι�� Oracle���(�Ʒ�)
SELECT dept.dname, emp.* FROM emp , dept 
WHERE emp.deptno = dept.deptno
AND emp.ename = 'SCOTT';
--ǥ������(ANSI)���(�Ʒ�)INNER Ű���� ����Ʈ����.
SELECT d.dname, e.* FROM emp e INNER JOIN dept d 
ON e.deptno = d.deptno
WHERE e.ename = 'SCOTT';
--���ΰ� �׷��� �̿��ؼ� ���ī���͵� ����ϴ� �Խ��Ǹ���Ʈ�����
SELECT bod.bno,title||'['||count(*)||']'
,writer,bod.reg_date,view_count
FROM tbl_board BOD
INNER JOIN tbl_reply REP ON bod.bno=rep.bno
GROUP BY bod.bno, title, writer, bod.reg_date, view_count
ORDER BY bod.bno;
--9�� �н�(����Ʈ�� �Լ����)
--8�� �Լ�(count,upper,lower,to_char,round...) �׷��Լ�
--having�� group by �� ���ǹ��� �����ϴ�.
--�μ��� ��� ������ 2000 �̻��� �μ��� ��ȣ�� �μ�����ձ޿�
SELECT deptno, round(avg(sal)) FROM emp
--where avg(sal) >= 2000 --�˻�����
GROUP BY deptno
HAVING avg(sal) >= 2000;--�׷�����
--�μ��� ������ �հ踦 ���ؼ� ���ϱ޿��� ���� ����Ǵ� �μ�(�Ʒ�)
--�ڹ��ڵ������� �ҹ��ڷ� �����մϴ�.Select
--DB���ÿ��� ��ҹ��ڱ����ؼ� �������, �������� ���� �� ����
SELECT R.* FROM (
SELECT deptno, Sum(sal) AS dept_sal
FROM emp GROUP BY deptno
) R ORDER BY dept_sal DESC;--R�� ������ Alias�����Դϴ�.
SELECT deptno, SUM(sal) FROM emp 
GROUP BY deptno 
ORDER BY SUM(sal) DESC;
--�����Լ�(�ݿø�) �Ҽ�������. round(10.05,2)�Ҽ���2°�ݿø�
SELECT ename, round(sal,-3) FROM emp;--���ڵ尡 ������
SELECT SUM(sal) FROM emp;--1���� ���ڵ常 �׷��Լ���� ����.
SELECT round(AVG(sal)) FROM emp;--��� 1���� ���ڵ�� ���
SELECT COUNT(*) FROM emp WHERE sal >= 
(SELECT round(AVG(sal)) FROM emp);
--�������� ����߿� ��տ������� ���� �޴� ����� ����.error
--�� AVG�Լ��� where���ǿ� �����Ҷ� ���������� �̿��մϴ�.
SELECT MAX(sal)
, MIN(sal)
, MAX(sal)-MIN(sal) AS "��ǥ�ͻ���ǿ�����"
FROM emp;
--DDL��(create; alter; drop;), DCL��(commit; rollback;)
--DML��(Data Manufacture Language) insert,update,delete
--insert��:���̺� ���ο� ���ڵ�(row)�� �߰�
CREATE TABLE dept02 AS SELECT * FROM dept WHERE 1=0;
--�� ������ ���̺��� �����ϴ� ���
--��ó�� ������ ���� dept���̺�� ������ ������ �Ȱ��� ���̺����
--where ������ ������, ������ ������ ������ �� ���̺��� ����
INSERT INTO dept02(
--�ʵ��
deptno, dname, loc
)VALUES(
10, '���ߺμ�', 'õ��'
--���ε���
);
insert into dept02 values(20,'�����κ�','��⵵');
--DCL��ɾ� �� Ŀ���� �ʼ��Դϴ�.
COMMIT;--�����ͺ��̽����������Է��� ����� �ݵ�� Ŀ���� ���������
--���� ������ �˴ϴ�. Ŀ���� ����������, ���⸸ ���̰�, �ٸ�����X
SELECT * FROM dept02 ORDER BY deptno;
--DELETE �� ���ڵ�1���� ����� ���
DELETE FROM dept02;--�̷��� ����Ͻø� ��緹�ڵ������ ���ǿ�.
DELETE FROM dept02 WHERE deptno >= 0;--��� ���� where�ݵ������
--DROP table ���̺�� �� ���̺���ü�� ���������� ���ִ� ���
DROP TABLE dept02;--��� ���̺� Ŀ�Ծ��� �ٷ� �����.
CREATE TABLE emp01 AS SELECT * FROM emp;--���̺������
SELECT * FROM emp01;
--UPDATE ���̺�� SET �ʵ�� = '�ٲܰ�' where empno='Ư��ID'
UPDATE emp01 SET ename = 'ȫ�浿' where empno = 7839;
ROLLBACK;--DCL���ѹ��� ������ Ŀ�� �ٷ������� �ǵ����ϴ�.
UPDATE emp01 SET sal = sal*1.1;--�������������10%�λ�
UPDATE emp01 SET hiredate = sysdate;
--���� ǥ������(ANSI)�� �ƴ϶� �ǳʶ�