-- 회원 ID, 닉네임, 총거래금액
SELECT USER_ID, NICKNAME, SUM(PRICE) AS TOTAL_SALES FROM USED_GOODS_USER AS U1,USED_GOODS_BOARD AS U2 WHERE U1.USER_ID = U2.WRITER_ID AND STATUS = "DONE" 
GROUP BY WRITER_ID
HAVING TOTAL_SALES >= 700000
ORDER BY TOTAL_SALES ASC