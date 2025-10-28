WITH linia_wzorcowa AS (
    SELECT
        ST_MakeLine(geom ORDER BY id) AS geom
    FROM
        input_points
)

SELECT
    nodes.*
FROM
    t2019_street_node AS nodes,
    linia_wzorcowa
WHERE
    ST_DWithin(
        ST_Transform(nodes.geom, 3068),
        200
    );
