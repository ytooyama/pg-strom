DROP EXTENSION IF EXISTS pg_strom CASCADE;
CREATE EXTENSION IF NOT EXISTS pg_strom;

IMPORT FOREIGN SCHEMA weblog
           FROM SERVER arrow_fdw INTO public
           OPTIONS (file '/var/lib/pgsql/15/data/arrow/websrvlog.arrow');
