-- 연도별 평균 미세먼지 오염도, 연도별 평균 초미세먼지 오염도 두번째 자리 반올림, 연도 오름차순

SELECT YEAR(YM) AS YEAR, ROUND(AVG(PM_VAL1),2) PM10, ROUND(AVG(PM_VAL2),2) AS 'PM2.5' 
FROM AIR_POLLUTION
WHERE LOCATION2 = '수원'
GROUP BY YEAR(YM)
ORDER BY 1