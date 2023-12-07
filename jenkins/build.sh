#!/bin/bash

cd src
sudo make uninstall PG_CONFIG=/usr/pgsql-15/bin/pg_config
make clean PG_CONFIG=/usr/pgsql-15/bin/pg_config
make PG_CONFIG=/usr/pgsql-15/bin/pg_config
sudo make install PG_CONFIG=/usr/pgsql-15/bin/pg_config
sudo systemctl restart postgresql-15.service
