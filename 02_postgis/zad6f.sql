SELECT ST_Area(
    ST_Difference(
        (SELECT geometry FROM buildings WHERE name = 'BuildingC'),
        (SELECT ST_Buffer(geometry, 0.5) FROM buildings WHERE name = 'BuildingB')
    )
) AS area_outside_buffer;
