-- 1��
select �̸�, ���� from ��, ���
where �������� = '���� Ư����'

select ����ڸ� as �̸�, ��������� as ����
from ��
where  ���� = '����Ư����'
union
select �̸�, ����
from ���
where ����='����Ư����'

-- 2��
select ����ڸ�, ����, ���ϸ��� from ��
where ���� like '%������'
intersect
select ����ڸ�, ����, ���ϸ��� from ��
where ���ϸ��� >= 100000

-- 3��
select ����ڸ�, ����, ���ϸ��� from ��
where ���� like '%������'
except
select ����ڸ�, ����, ���ϸ��� from ��
where ���ϸ��� >= 100000


--1��
select ��ȸ���, ����ڸ�, ���ϸ��� from ��
where ��������� = '��ǥ �̻�'
order by ���ϸ��� desc

-- 2��
select ����ڸ�, ��ȸ���, ���ϸ���, ���ϸ���*1.1 as [10% �߰� ���ϸ���]
from ��
where ���ϸ���*1.1 >= 50000
-- order by ���ϸ���*1.1 desc
-- order by 4 desc
-- order by [10% �߰� ���ϸ���] desc �� �� ����.

-- 3��
select top 10 with teis * from ��
order by ���ϸ���

-- 4��
select distinct ���� from ��

--1��
select ����ڸ�, ��ȸ���, �ּ�, patindex('%�� %', �ּ�) from ��
where patindex('%�� %', �ּ�) < 5

-- 2��
select ����ڸ�, ����ȣ, ��ȭ��ȣ, len(��ȭ��ȣ) - 3, stuff(��ȭ��ȣ, len(��ȭ��ȣ)-3, 4, '****') from ��

select ����ڸ�, ����ȣ, ��ȭ��ȣ, len(��ȭ��ȣ) - 3, stuff(��ȭ��ȣ, len(��ȭ��ȣ)-3, 4, replicate('*',4)) from ��

-- 3��
select ����ڸ�, ����ȣ, ��ȭ��ȣ, replace(replace(��ȭ��ȣ, '(', ''), ')', '-')
from ��