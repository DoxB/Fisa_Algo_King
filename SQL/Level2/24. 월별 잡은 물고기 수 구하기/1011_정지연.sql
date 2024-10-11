SELECT COUNT(*) AS FISH_COUNT, MONTH(TIME) AS MONTH
FROM FISH_INFO
GROUP BY MONTH(TIME)
ORDER BY 2


/* 다른 예시
SELECT DATENAME(month, '2017/08/25') 처럼, DDATENAME을 쓰면,
출력값: 'August' 이 나옴.
따라서, 월 이름 문제가 나오면 DATENAME(month, '~~')을 쓸 것.
*/