SELECT ANIMAL_ID, NAME, 
CASE 
  WHEN SEX_UPON_INTAKE LIKE('%Neutered%') OR SEX_UPON_INTAKE LIKE('%Spayed%') THEN 'O'
  ELSE 'X'   
END 중성화
FROM ANIMAL_INS
ORDER BY ANIMAL_ID

/* %와일드 카드를 쓸때에는 IN이 아닌 LIKE를 써야 한다.
IN은 무조건 일치하는 값을 찾을때 OR의 개념으로 사용한다. LIKE 와의 차이점을 유념할 것.
*/