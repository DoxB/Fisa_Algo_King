SELECT ANIMAL_ID, NAME
FROM 
(SELECT I.ANIMAL_ID, I.NAME, O.DATETIME-I.DATETIME
FROM ANIMAL_INS I, ANIMAL_OUTS O
WHERE I.ANIMAL_ID = O.ANIMAL_ID
ORDER BY 3 DESC
LIMIT 2) SUB;