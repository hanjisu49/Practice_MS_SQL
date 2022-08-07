-- 1번
select * from 고객
where 도시 not in ('여주시','제주시')

select * from 고객
where 도시 <> '여주시' and 도시!='제주시'

select * from 고객
where not (도시 ='여주시' or 도시='제주시')

-- 2번
select * from 고객
where not (도시 like '%특별시' or 도시 like '%광역시')

select * from 고객
where 도시 not like '%특별시' and 도시 not like '%광역시'

-- 3번
select * from 고객
where 고객번호 not like '[ACF]%'

select * from 고객
where 고객번호 like '[^ACF]%'