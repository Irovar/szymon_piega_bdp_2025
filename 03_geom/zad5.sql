SELECT 
    SUM(
        ST_Area(
            ST_Buffer(geometria, 5)
        )
    ) AS laczne_pole_buforow_zad5
FROM 
    obiekty
WHERE 
    ST_HasArc(geometria) = FALSE;
