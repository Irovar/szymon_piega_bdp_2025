ALTER TABLE input_points
ALTER COLUMN geom TYPE GEOMETRY(Point, 3068)
USING ST_Transform(geom, 3068);
SELECT id, ST_SRID(geom), ST_AsText(geom) FROM input_points;
