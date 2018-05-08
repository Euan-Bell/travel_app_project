DROP TABLE visits;
DROP TABLE locations;
DROP TABLE realms;




CREATE TABLE realms (
  id SERIAL4 PRIMARY KEY,
  realm_name VARCHAR(255) NOT NULL
);

CREATE TABLE locations (
  id SERIAL4 PRIMARY KEY,
  location_name VARCHAR(255)NOT NULL,
  realm_id INT4 REFERENCES realms(id)
);

CREATE TABLE visits (
  id SERIAL4 PRIMARY KEY,
  location_id INT4 REFERENCES locations(id),
  realm_id INT4 REFERENCES realms(id)
);
