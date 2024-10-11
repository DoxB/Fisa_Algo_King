SELECT CONCAT( MAX(LENGTH),'cm') AS MAX_LENGTH
FROM FISH_INFO;


/*
SELECT 'SQL' + 'Server' + '2019'
이렇게도 문자열을 합칠 수는 있지만, '문자열 + 숫자', '문자열 + 컬럼명' 은 안됨.
=> 따라서 CONCAT 사용 권장.

+ CONCAT_WS("구분자", "문자열", "문자열", "문자열"...)
문자열을 특정 구분자로 합칠 때 유용하게 사용
*/