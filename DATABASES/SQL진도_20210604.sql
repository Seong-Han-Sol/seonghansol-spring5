--DDL��(create; alter;), DCL��(commit; rollback;)
--DML��(Data Manufacture Language) insert, update, delete
--insert��:���̺� ���ο� ���ڵ�(row)�� �߰�
CREATE TABLE dept02 AS SELECT * FROM dept WHERE 1=0;
--�� ������ ���̺��� �����ϴ� ���
--��ó�� ������ ���� dept���̺�� ������ ������ �Ȱ��� ���̺� ����
--where ������ ������, ������ ������ ������ �� ���̺��� ����
INSERT INTO dept02 (
--�ʵ��
deptno, dname, loc
) VALUES(
10, '���ߺμ�', 'õ��'
--���ε���
);
insert into dept02 values(20, '�����κ�', '��⵵');
COMMIT; --�����ͺ��̽� ������ ���� �Է��� ����� �ݵ�� Ŀ���� ��������� ���� ������ �˴ϴ�. 
--Ŀ���� ���� ������, ���⼭�� ���̰� �ٸ� ������ ������ ����
SELECT * FROM dept02 ORDER BY deptno;
--DELETE�� ���ڵ� 1���� ����� ���
DELETE FROM dept02; --�̷��� ����ϸ� X ��� ���ڵ尡 �����Ǵ� �����ؾ��Ѵ� 
DELETE FROM dept02 WHERE deptno >= 0; --��� ������ �Ϸ��ص� where���� �ݵ�� ����
COMMIT;