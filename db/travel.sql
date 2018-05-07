DROP TABLE visits;
DROP TABLE cities;
DROP TABLE countries;




CREATE TABLE countries (
  id SERIAL4 PRIMARY KEY,
  country_name VARCHAR(255)
);

CREATE TABLE cities (
  id SERIAL4 PRIMARY KEY,
  city_name VARCHAR(255),
  country_id INT4
);

CREATE TABLE visits (
  id SERIAL4 PRIMARY KEY,
  city_id INT4 references cities(id),
  country_id INT4 references countries(id)
);
