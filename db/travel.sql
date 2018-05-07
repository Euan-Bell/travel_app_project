DROP TABLE countries;
DROP TABLE cities;
DROP TABLE visits;


CREATE TABLE countries (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE cities (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  country_id SERIAL4
);

CREATE TABLE visits (
  id SERIAL4 PRIMARY KEY,
  city_id SERIAL4 references cities(id),
  country_id SERIAL4 references countries(id)
);
