--1��
select �̸�, ����, DATEDIFF(yy, ����, GETDATE()) AS ����,
DATENAME(weekday, ����) ���Ͽ���, �Ի���,
DATEDIFF(dd, �Ի���, getdate()) �Ի��ϼ�,
dateadd(dd, 3000, getdate()) 'D+3000'
from ���

--2��
select * from ���
where month(�Ի���)=4

--3��
select * from ���
where DATEPART(qq, �Ի���) in (1,2)

--4��
select �ֹ���ȣ, ����ȣ, �ֹ���, ��û��, �߼���, DATEDIFF(DD, ��û��, �߼���) �����ϼ�
from �ֹ�
where ��û�� < �߼���

--5��
select *, DATEDIFF(dd, �ֹ���, �߼���) ��۱Ⱓ
from �ֹ�
where DATEDIFF(dd, �ֹ���, �߼���) >30