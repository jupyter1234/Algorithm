-- 고양이를 개보다 먼저 조회해주세요.

SELECT ANIMAL_TYPE,COUNT(*) AS count FROM ANIMAL_INS
WHERE ANIMAL_TYPE IN ('Cat','Dog')
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE