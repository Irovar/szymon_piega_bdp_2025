UPDATE obiekty
SET geometria = ST_MakePolygon(geometria)
WHERE 
    nazwa = 'obiekt4'
    AND ST_GeometryType(geometria) = 'ST_LineString'
    AND ST_IsClosed(geometria) = TRUE;
