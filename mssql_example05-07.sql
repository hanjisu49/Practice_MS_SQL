-- 1번
select 이름, 직위 from 고객, 사원
where 거주지역 = '서울 특별시'

select 담당자명 as 이름, 담당자직위 as 직위
from 고객
where  도시 = '서울특별시'
union
select 이름, 직위
from 사원
where 도시='서울특별시'

-- 2번
select 담당자명, 도시, 마일리지 from 고객
where 도시 like '%광역시'
intersect
select 담당자명, 도시, 마일리지 from 고객
where 마일리지 >= 100000

-- 3번
select 담당자명, 도시, 마일리지 from 고객
where 도시 like '%광역시'
except
select 담당자명, 도시, 마일리지 from 고객
where 마일리지 >= 100000


--1번
select 고객회사명, 담당자명, 마일리지 from 고객
where 담당자직위 = '대표 이사'
order by 마일리지 desc

-- 2번
select 담당자명, 고객회사명, 마일리지, 마일리지*1.1 as [10% 추가 마일리지]
from 고객
where 마일리지*1.1 >= 50000
-- order by 마일리지*1.1 desc
-- order by 4 desc
-- order by [10% 추가 마일리지] desc 셋 다 가능.

-- 3번
select top 10 with teis * from 고객
order by 마일리지

-- 4번
select distinct 도시 from 고객

--1번
select 담당자명, 고객회사명, 주소, patindex('%동 %', 주소) from 고객
where patindex('%동 %', 주소) < 5

-- 2번
select 담당자명, 고객번호, 전화번호, len(전화번호) - 3, stuff(전화번호, len(전화번호)-3, 4, '****') from 고객

select 담당자명, 고객번호, 전화번호, len(전화번호) - 3, stuff(전화번호, len(전화번호)-3, 4, replicate('*',4)) from 고객

-- 3번
select 담당자명, 고객번호, 전화번호, replace(replace(전화번호, '(', ''), ')', '-')
from 고객