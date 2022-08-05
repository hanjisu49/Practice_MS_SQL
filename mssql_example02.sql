-- 1번
select * from 고객
where 마일리지>=1000 and 마일리지<=5000 and 도시='서울특별시'

select * from 고객
where 마일리지 between 1000 and 5000 and 도시='서울특별시'

-- 2번
select * from 고객
where (도시='부천시' or 도시='과천시') and 담당자직위= '대표 이사'

select * from 고객
where 도시 in('부천시','과천시' and 담당자직위='대표 이사'

-- 3번
select * from 고객
where 담당자직위 like '%영업%'

-- 4번
select * from 고객
where 고객번호 like '__[ABFZ]%[A-G]'