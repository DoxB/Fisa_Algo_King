SELECT COUNT(I.FISH_TYPE) AS FISH_COUNT
FROM FISH_INFO I
LEFT JOIN FISH_NAME_INFO N ON I.FISH_TYPE = N.FISH_TYPE
WHERE N.FISH_NAME IN ('BASS' , 'SNAPPER')



/*
** IN은 기본적으로 OR을 생략한 것이니, BASS와 SNAPPER을 모두 포함한 값
** 다른 답
WHERE N.FISH_NAME = 'BASS' OR N.FISH_NAME = 'SNAPPER'
** 하지만, IN 절이 실행 속도가 더 빠르니 IN을 쓰는게 좋음

** 하지만, IN 절에는 AND 는 안되니, AND 일 경우는, 그냥 컬럼 = 원하는 값 AND 컬럼 = 원하는 값. 으로 작성 할것
*/