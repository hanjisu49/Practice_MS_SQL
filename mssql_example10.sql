-- 1��
SELECT ��ȸ���, ��ȭ��ȣ, LTRIM(TRANSLATE(��ȭ��ȣ, '()', ' -')),
    REPLACE(REPLACE(��ȭ��ȣ, '(',''),')','-')
FROM ��

--2��
SELECT STRING_AGG(��ȸ���, ',') AS ȸ����
FROM ��
WHERE ���� = '�λ걤����'

--3��
SELECT ����, STRING_AGG(��ȸ���, ',') ȸ����
FROM ��
WHERE ���� LIKE '%������'
GROUP BY ����

--4��
SELECT �����ȣ, �̸�, ��� value
    FROM ���
        CROSS APPLY STRING_SPLIT(���,',')
        -- OUTER APPLY STRING_SPLIT(���,',')