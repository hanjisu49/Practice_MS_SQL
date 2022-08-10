ALTER TABLE 사원 ADD  취미 VARCHAR(200)
UPDATE 사원 SET 취미='영화감상,댄스,여행' WHERE 사원번호=1
UPDATE 사원 SET 취미='독서,요가' WHERE 사원번호=3
UPDATE 사원 SET 취미='사이클,트래킹' WHERE 사원번호=4
UPDATE 사원 SET 취미='피아노,여행' WHERE 사원번호=5
UPDATE 사원 SET 취미='노래,댄스' WHERE 사원번호=6
UPDATE 사원 SET 취미='댄스,독서,여행' WHERE 사원번호=7
UPDATE 사원 SET 취미='독서,영화감상' WHERE 사원번호=8
UPDATE 사원 SET 취미='영화감상,여행,태권도' WHERE 사원번호=9

SELECT * FROM 사원
