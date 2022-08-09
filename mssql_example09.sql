--1번
select 이름, 생일, DATEDIFF(yy, 생일, GETDATE()) AS 나이,
DATENAME(weekday, 생일) 생일요일, 입사일,
DATEDIFF(dd, 입사일, getdate()) 입사일수,
dateadd(dd, 3000, getdate()) 'D+3000'
from 사원

--2번
select * from 사원
where month(입사일)=4

--3번
select * from 사원
where DATEPART(qq, 입사일) in (1,2)

--4번
select 주문번호, 고객번호, 주문일, 요청일, 발송일, DATEDIFF(DD, 요청일, 발송일) 지연일수
from 주문
where 요청일 < 발송일

--5번
select *, DATEDIFF(dd, 주문일, 발송일) 배송기간
from 주문
where DATEDIFF(dd, 주문일, 발송일) >30