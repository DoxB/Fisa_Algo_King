SELECT CONCAT(QUARTER(DIFFERENTIATION_DATE), 'Q') AS QUARTER, COUNT(*) AS ECOLI_COUNT
FROM ECOLI_DATA
GROUP BY 1
ORDER BY 1


/*
문자열 추가: CONCAT
문자열 자르기: SUBSTRING, LEFT, RIGHT
- SUBSTRING( 문자열, 시작위치, 길이 ) >> 문자열에서 시작 위치부터 길이만큼 출력합니다.
- LEFT( 문자열, 길이 ) >> 문자열에서 왼쪽부터 길이만큼 출력합니다.
- RIGHT( 문자열, 길이 ) >> 문자열에서 오른쪽부터 길이만큼 출력합니다.
*/