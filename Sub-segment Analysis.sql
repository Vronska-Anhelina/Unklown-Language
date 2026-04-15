SELECT
SUBSTR(language,STRPOS((language),'-')+1)
 en_type,COUNT(*) AS session_cnt
FROM `DA.session_params` sp
WHERE language LIKE 'en_%'
GROUP BY en_type
ORDER BY session_cnt DESC;

