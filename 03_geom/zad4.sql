INSERT INTO obiekty (nazwa, geometria)
SELECT 
    'obiekt7',
    ST_Collect(t1.geometria, t2.geometria)
FROM 
    obiekty t1, obiekty t2
WHERE 
    t1.nazwa = 'obiekt3' AND t2.nazwa = 'obiekt4';
