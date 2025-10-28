CREATE TABLE obiekty (
    id SERIAL PRIMARY KEY,
    nazwa VARCHAR(100),
    geometria GEOMETRY(GEOMETRY, 0)
);
