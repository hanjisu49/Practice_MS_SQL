--1번
select ceiling(RAND()*45)

--2번
select 담당자명, 마일리지, CEILING(마일리지*1.1) AS [10%인상],
	SIGN(마일리지*1.1 - 3000) AS  구분
from 고객

--3번
select 주문번호, 제품번호, 단가, 주문수량, ROUND(단가*주문수량,-1) AS 주문금액,
STR(FLOOR(할인율*100)) + '%' AS [할인율(%)], ROUND(단가*주문수량*할인율,-1) AS 할인금액,
ROUND(단가*주문수량,-1)-ROUND(단가*주문수량*할인율,-1) AS 실주문금액
from 주문세부