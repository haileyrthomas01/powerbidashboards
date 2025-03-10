SELECT 
        CASE 
        WHEN DISGISDB.POLE_EVW.ORG_ID = 'ascst' THEN 'Coast'
        WHEN DISGISDB.POLE_EVW.ORG_ID = 'ashttb' THEN 'Pinebelt'
        WHEN DISGISDB.POLE_EVW.ORG_ID = 'asmrd' THEN 'Meridian'
        ELSE 'Other'
    END AS "Division", 
    Count(DISGISDB.POLE_EVW.OBJECTID) AS "Count"
FROM DISGISDB.POLE_EVW
WHERE (((DISGISDB.POLE_EVW.POLE_USE)='FDIST') AND ((DISGISDB.POLE_EVW.OWNED_BY)='ATT')) 
OR (((DISGISDB.POLE_EVW.POLE_USE)='FDIST') AND ((DISGISDB.POLE_EVW.OWNED_BY)='MPC'))
GROUP BY DISGISDB.POLE_EVW.ORG_ID
ORDER BY DISGISDB.POLE_EVW.ORG_ID;