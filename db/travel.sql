DROP TABLE visits;
DROP TABLE cities;
DROP TABLE countries;




CREATE TABLE countries (
  id SERIAL4 PRIMARY KEY,
  country_name VARCHAR(255) not null
);

CREATE TABLE cities (
  id SERIAL4 PRIMARY KEY,
  city_name VARCHAR(255)not null,
  country_id INT4 references countries(id)
);

CREATE TABLE visits (
  id SERIAL4 PRIMARY KEY,
  city_id INT4 references cities(id),
  country_id INT4 references countries(id)
);
