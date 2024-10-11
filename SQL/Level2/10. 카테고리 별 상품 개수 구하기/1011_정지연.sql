SELECT LEFT(PRODUCT_CODE, 2) AS CATEGORY, COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY LEFT(PRODUCT_CODE, 2)                                   
ORDER BY 1

/*
아래의 것들은 SELECT, GRUOP BY 모두 사용 가능하다.
하지만, 항상 GROUP BY 내 사용한것은 SELECT에도 그대로 사용해야 하니 주의할 것.

SUBSTRING("문자열", "시작위치", "길이") : 지정한 위치에서 지정한 문자열 길이만큼 자를 때 사용

LEFT("문자열", "길이") : 왼쪽에서부터 지정한 문자열의 길이만큼 자를 때 사용

RIGHT("문자열", "길이") : 오른쪽에서부터 지정한 문자열의 길이만큼 자를 때 사용
*/