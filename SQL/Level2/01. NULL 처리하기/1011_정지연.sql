SELECT ANIMAL_TYPE, IFNULL(NAME, 'No name') AS NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS

/*
- NAME Column의 값이 NULL인 경우 다음 표현식으로 넘어간다.
- 다음 표현식인 "No name"이 Null이 아니므로 "No name"을 출력.
SELECT COALESCE(NAME, "No name")
FROM ANIMAL_INS
*/