WITH MAXF AS (
    SELECT 
        FISH_TYPE, ID, LENGTH
    FROM 
        FISH_INFO
    WHERE 
        (FISH_TYPE, LENGTH) IN (
            SELECT 
                FISH_TYPE, MAX(LENGTH)
            FROM 
                FISH_INFO
            GROUP BY 
                FISH_TYPE
        )
)
SELECT 
    M.ID, N.FISH_NAME, M.LENGTH
FROM 
    MAXF M
JOIN 
    FISH_NAME_INFO N ON M.FISH_TYPE = N.FISH_TYPE
ORDER BY 
    M.ID;