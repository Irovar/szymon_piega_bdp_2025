INSERT INTO obiekty (nazwa, geometria) VALUES (
    'obiekt2',
    ST_GeomFromText('GEOMETRYCOLLECTION(
        COMPOUNDCURVE(
            LINESTRING(10 6, 10 2), 
            CIRCULARSTRING(10 2, 12 0, 14 2), 
            CIRCULARSTRING(14 2, 16 4, 14 6), 
            LINESTRING(14 6, 10 6)
        ),
        CIRCULARSTRING(11 2, 13 2, 11 2)
    )', 0)
);
