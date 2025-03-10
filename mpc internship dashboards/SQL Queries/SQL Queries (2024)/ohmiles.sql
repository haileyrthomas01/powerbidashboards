SELECT 
  CASE 
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 51 THEN '4 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 54 THEN '4 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 60 THEN '12 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 75 THEN '12 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 66 THEN '13.8 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 81 THEN '13.8 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 78 THEN '23 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 89 THEN '23 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 84 THEN '14.4 KV'
    ELSE 'Other'
  END AS Voltage,
  SUM(DISGISDB.PRIMARY_OH_EVW.LENGTH / 5280) AS "OH Miles"
FROM 
  DISGISDB.PRIMARY_OH_EVW
WHERE 
  DISGISDB.PRIMARY_OH_EVW.OWNED_BY = 'MPC'
GROUP BY 
  CASE 
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 51 THEN '4 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 54 THEN '4 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 60 THEN '12 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 75 THEN '12 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 66 THEN '13.8 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 81 THEN '13.8 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 78 THEN '23 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 89 THEN '23 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 84 THEN '14.4 KV'
    ELSE 'Other'
  END
ORDER BY 
  CASE 
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 51 THEN '4 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 54 THEN '4 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 60 THEN '12 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 75 THEN '12 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 66 THEN '13.8 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 81 THEN '13.8 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 78 THEN '23 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 89 THEN '23 KV'
    WHEN DISGISDB.PRIMARY_OH_EVW.OVOLTAGE = 84 THEN '14.4 KV'
    ELSE 'Other'
  END;