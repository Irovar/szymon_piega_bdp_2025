CREATE TABLE T2019_KAR_BRIDGES AS
SELECT
    ST_Intersection(r.geom, w.geom) AS geom
FROM
    t2019_kar_railways AS r
INNER JOIN
    t2019_kar_water_lines AS w
ON
    ST_Intersects(r.geom, w.geom);
DELETE FROM T2019_KAR_BRIDGES
WHERE ST_IsEmpty(geom);
CREATE INDEX sidx_t2019_kar_bridges_geom
ON T2019_KAR_BRIDGES
USING GIST (geom);

SELECT ST_AsText(geom) FROM T2019_KAR_BRIDGES LIMIT 10;
