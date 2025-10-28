--Układ współrzędnych DHDN.Berlin/Cassini ma identyfikator (SRID) 3068
CREATE TABLE streets_reprojected AS
SELECT
    t.*,
    ST_Transform(geom, 3068) AS geom_new
FROM
    T2019_KAR_STREETS AS t;
	
ALTER TABLE streets_reprojected
DROP COLUMN geom;

ALTER TABLE streets_reprojected
RENAME COLUMN geom_new TO geom;

CREATE INDEX sidx_streets_reprojected_geom
ON streets_reprojected
USING GIST (geom);

SELECT ST_SRID(geom) FROM streets_reprojected LIMIT 1;
