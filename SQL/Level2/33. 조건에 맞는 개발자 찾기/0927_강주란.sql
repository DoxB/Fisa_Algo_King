
WITH P_CODE AS (SELECT CODE
             FROM SKILLCODES
              WHERE NAME = 'Python'
), C_CODE AS (SELECT CODE
             FROM SKILLCODES
              WHERE NAME = 'C#'
)
SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPERS
WHERE SKILL_CODE & (SELECT CODE FROM P_CODE) = (SELECT CODE FROM P_CODE)
OR SKILL_CODE & (SELECT CODE FROM C_CODE) = (SELECT CODE FROM C_CODE)
ORDER BY 1;
