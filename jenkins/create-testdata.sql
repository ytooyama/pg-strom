CREATE EXTENSION IF NOT EXISTS pg_strom;

CREATE TABLE t_test AS SELECT id, id % 10 AS ten, id % 20 AS twenty
          FROM generate_series(1, 25000000) AS id
          ORDER BY id;

CREATE TABLE t_join AS SELECT *
       FROM   t_test
       ORDER BY random()
       LIMIT 1000000;

VACUUM FULL t_test;
VACUUM FULL t_join;