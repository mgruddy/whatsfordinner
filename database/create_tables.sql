BEGIN;
CREATE TABLE recipes (
  id SERIAL,
  title VARCHAR(50) NOT NULL,
  total_time INTEGER,
  yields VARCHAR(30),
  ingredients TEXT[] NOT NULL,
  instructions TEXT[] NOT NULL,
  image TEXT,
  host TEXT,
  url TEXT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT url_unique UNIQUE(url)
)
;

CREATE TABLE users (
  id SERIAL,
  username VARCHAR(20) NOT NULL,
  password VARCHAR(20) NOT NULL,
  PRIMARY KEY (username)
)
;
COMMIT;
