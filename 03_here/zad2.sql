WITH zmienione_budynki AS (
    SELECT geom
    FROM t2019_kar_buildings AS t2019
    WHERE NOT EXISTS (
        SELECT 1
        FROM t2018_kar_buildings AS t2018
        WHERE ST_Intersects(t2019.geom, t2018.geom)
    )
    UNION ALL
    SELECT geom
    FROM t2019_kar_buildings AS t2019
    WHERE
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
),
  
nowe_poi AS (
    SELECT
        t2019_poi.geom,
        t2019_poi.type
    FROM
        t2019_kar_poi_table AS t2019_poi
    WHERE
        NOT EXISTS (
            SELECT 1
            FROM t2018_kar_poi_table AS t2018_poi
            WHERE t2018_poi.poi_id = t2019_poi.poi_id
        )
)

SELECT
    t_poi.type,
    COUNT(*) AS liczba_nowych_poi_w_promieniu_500m
FROM
    nowe_poi AS t_poi
WHERE
    EXISTS (
        SELECT 1
        FROM zmienione_budynki AS t_bud
        WHERE
            ST_DWithin(
                t_poi.geom::geography,
                t_bud.geom::geography,
                500  -- odległość w metrach
            )
    )
GROUP BY
    t_poi.type
ORDER BY
    liczba_nowych_poi_w_promieniu_500m DESC;
