# Data Engineer on Amazon Cloud

# 1. Amazon Relational Databases Service - Amazon RDS
## 1.1. Amazon RDS connections
Follow our [instructions](https://docs.google.com/presentation/d/1s8ZW-aKP_fAm28bbVhN4yDjD3ZacQyul/edit?usp=sharing&ouid=103057077167517333764&rtpof=true&sd=true).
## 1.2. Work win MySQL
After connect MySQL to Amazon RDS.
### 0. Create and setup schema (or database)
In query tab, code and run:
```bash
CREATE SCHEMA temp_db;
```
*note:* you changes the name of schema (*temp_db*), you must edit the name in SQL file.

Then upload the sql file `setup_temp_db_schema.sql`.

After that, dump small data into schema by SQL file `dump_small_data_temp_db.sql`.