WITH MAX_BOARD AS (SELECT BOARD_ID, VIEWS
                    FROM USED_GOODS_BOARD
                    WHERE VIEWS IN (SELECT MAX(VIEWS)
                                    FROM USED_GOODS_BOARD))
SELECT CONCAT('/home/grep/src/', BOARD_ID, '/', FILE_ID, FILE_NAME, FILE_EXT) FILE_PATH

FROM USED_GOODS_FILE
WHERE BOARD_ID IN (SELECT BOARD_ID FROM MAX_BOARD)
ORDER BY FILE_ID DESC;