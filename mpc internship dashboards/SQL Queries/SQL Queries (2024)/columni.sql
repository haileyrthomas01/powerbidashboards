SELECT
    CASE 
        WHEN DISGISDB.POLE_EVW.ORG_ID = 'ascst' THEN 'Coast'
        WHEN DISGISDB.POLE_EVW.ORG_ID = 'ashttb' THEN 'PineBelt'
        WHEN DISGISDB.POLE_EVW.ORG_ID = 'asmrd' THEN 'Meridian'
        ELSE 'Other'
    END AS Division, 
DISGISDB.ATTACH_OBJ_EVW.TYPE, 
DISGISDB.ATTACH_OBJ_EVW.OWNED_BY AS "Attachment Owner", 
Count(DISGISDB.ATTACH_OBJ_EVW.OBJECTID) AS "Count", 
DISGISDB.POLE_EVW.OWNED_BY, 
DISGISDB.POLE_EVW.POLE_USE
FROM DISGISDB.ATTACH_OBJ_EVW 
INNER JOIN DISGISDB.POLE_EVW ON DISGISDB.ATTACH_OBJ_EVW.POLE_GUID = DISGISDB.POLE_EVW.GLOBALID
GROUP BY DISGISDB.POLE_EVW.ORG_ID, DISGISDB.ATTACH_OBJ_EVW.TYPE, DISGISDB.ATTACH_OBJ_EVW.OWNED_BY, DISGISDB.POLE_EVW.OWNED_BY, DISGISDB.POLE_EVW.POLE_USE
HAVING (((DISGISDB.ATTACH_OBJ_EVW.TYPE) != 'CTV') AND ((DISGISDB.ATTACH_OBJ_EVW.OWNED_BY) != 'ATT' And (DISGISDB.ATTACH_OBJ_EVW.OWNED_BY) Is Not Null) AND ((DISGISDB.POLE_EVW.OWNED_BY)='MPC') AND ((DISGISDB.POLE_EVW.POLE_USE)='DIST'))
ORDER BY DISGISDB.POLE_EVW.ORG_ID;