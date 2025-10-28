SELECT
    COUNT(*) AS liczba_sklepow_sportowych_blisko_parkow
FROM
    t2019_kar_poi_table AS poi
WHERE
    poi.type = 'Sporting Goods Store'
    AND EXISTS (
        SELECT 1
        FROM t2019_land_use_a AS park
        WHERE
            park.type = 'Park (City/County)'
            AND ST_DWithin(
                poi.geom::geography,
                park.geom::geography,
                300
            )
    );
