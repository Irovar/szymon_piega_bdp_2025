SELECT 
    t2019.polygon_id,
    t2019.geom
FROM 
    t2019_kar_buildings AS t2019
WHERE 
    NOT EXISTS (
        SELECT 1
        FROM t2018_kar_buildings AS t2018
        WHERE ST_Intersects(t2019.geom, t2018.geom)
    )
    OR
    (
        EXISTS (
            SELECT 1
            FROM t2018_kar_buildings AS t2018
            WHERE ST_Intersects(t2019.geom, t2018.geom)
        )
        AND NOT EXISTS (
            SELECT 1
            FROM t2018_kar_buildings AS t2018
            WHERE ST_Equals(t2019.geom, t2018.geom)
        )
    );
