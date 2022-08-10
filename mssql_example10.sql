-- 1번
SELECT 고객회사명, 전화번호, LTRIM(TRANSLATE(전화번호, '()', ' -')),
    REPLACE(REPLACE(전화번호, '(',''),')','-')
FROM 고객

--2번
SELECT STRING_AGG(고객회사명, ',') AS 회사목록
FROM 고객
WHERE 도시 = '부산광역시'

--3번
SELECT 도시, STRING_AGG(고객회사명, ',') 회사목록
FROM 고객
WHERE 도시 LIKE '%광역시'
GROUP BY 도시

--4번
SELECT 사원번호, 이름, 취미 value
    FROM 사원
        CROSS APPLY STRING_SPLIT(취미,',')
        -- OUTER APPLY STRING_SPLIT(취미,',')