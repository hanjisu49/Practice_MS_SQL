-- 1��
select * from ��
where ���� not in ('���ֽ�','���ֽ�')

select * from ��
where ���� <> '���ֽ�' and ����!='���ֽ�'

select * from ��
where not (���� ='���ֽ�' or ����='���ֽ�')

-- 2��
select * from ��
where not (���� like '%Ư����' or ���� like '%������')

select * from ��
where ���� not like '%Ư����' and ���� not like '%������'

-- 3��
select * from ��
where ����ȣ not like '[ACF]%'

select * from ��
where ����ȣ like '[^ACF]%'