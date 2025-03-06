SELECT 
  CASE 
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 51 THEN '4 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 54 THEN '4 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 60 THEN '12 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 75 THEN '12 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 66 THEN '13.8 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 81 THEN '13.8 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 78 THEN '23 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 89 THEN '23 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 84 THEN '14.4 KV'
    ELSE 'Other'
  END AS Voltage,
  SUM(DISGISDB.PRIMARY_UG_EVW.LENGTH / 5280) AS "UG Miles"
FROM 
  DISGISDB.PRIMARY_UG_EVW
WHERE 
  DISGISDB.PRIMARY_UG_EVW.OWNED_BY = 'MPC'
GROUP BY 
  CASE 
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 51 THEN '4 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 54 THEN '4 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 60 THEN '12 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 75 THEN '12 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 66 THEN '13.8 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 81 THEN '13.8 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 78 THEN '23 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 89 THEN '23 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 84 THEN '14.4 KV'
    ELSE 'Other'
  END
HAVING 
  SUM(DISGISDB.PRIMARY_UG_EVW.LENGTH / 5280) > 0
ORDER BY 
  CASE 
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 51 THEN '4 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 54 THEN '4 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 60 THEN '12 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 75 THEN '12 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 66 THEN '13.8 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 81 THEN '13.8 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 78 THEN '23 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 89 THEN '23 KV'
    WHEN DISGISDB.PRIMARY_UG_EVW.OVOLTAGE = 84 THEN '14.4 KV'
    ELSE 'Other'
  END;