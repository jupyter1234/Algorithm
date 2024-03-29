-- 식품의 분류 CATEGORY, 가격, 이름
-- 식품분류가 '과자', '국', '김치', '식용유'인 경우만 출력
SELECT T1.CATEGORY, T1.PRICE AS MAX_PRICE, PRODUCT_NAME FROM FOOD_PRODUCT T1, 
    (SELECT CATEGORY,MAX(PRICE) PRICE FROM FOOD_PRODUCT GROUP BY CATEGORY) T2 WHERE T1.CATEGORY = T2.CATEGORY AND T1.PRICE = T2.PRICE
AND T1.CATEGORY IN ('과자','국','김치','식용유')
ORDER BY T1.PRICE DESC


-- 식품 분류에서 가장 비싼 식품
-- 각 분류에서 가장 비싼 식품 저장