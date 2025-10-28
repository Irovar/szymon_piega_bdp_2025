SELECT 
    ST_Area(
        ST_Buffer(
            ST_ShortestLine(t1.geometria, t2.geometria), 
            5
        )
    ) AS pole_bufora_zad2
FROM 
    obiekty t1, obiekty t2
WHERE 
    t1.nazwa = 'obiekt3' AND t2.nazwa = 'obiekt4';
