\set ON_ERROR_STOP on

EXPLAIN ANALYZE SELECT * FROM weblog;
EXPLAIN ANALYZE SELECT count(*) FROM t_test AS a, t_join AS b WHERE a.id = b.id GROUP BY a.ten;
