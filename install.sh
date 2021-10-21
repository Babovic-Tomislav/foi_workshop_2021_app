#!/bin/bash
cp .env.example .env
composer install

mysql -u $1 -p$2  < src/Migrations/database.sql
mysql -u $1 -p$2 foi_workshop < src/Migrations/city.sql
mysql -u $1 -p$2 foi_workshop < src/Migrations/address.sql
mysql -u $1 -p$2 foi_workshop < src/Migrations/category.sql
mysql -u $1 -p$2 foi_workshop < src/Migrations/position.sql
mysql -u $1 -p$2 foi_workshop < src/Migrations/employer.sql
mysql -u $1 -p$2 foi_workshop < src/Migrations/employer_category.sql
mysql -u $1 -p$2 foi_workshop < src/Migrations/employer_position.sql
mysql -u $1 -p$2 foi_workshop < src/Migrations/data_city.sql
mysql -u $1 -p$2 foi_workshop < src/Migrations/data_address.sql
mysql -u $1 -p$2 foi_workshop < src/Migrations/data_category.sql
mysql -u $1 -p$2 foi_workshop < src/Migrations/data_position.sql
mysql -u $1 -p$2 foi_workshop < src/Migrations/data_employer.sql
mysql -u $1 -p$2 foi_workshop < src/Migrations/data_employer_category.sql
mysql -u $1 -p$2 foi_workshop < src/Migrations/data_employer_position.sql