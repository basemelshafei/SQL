## Summary of Skills, Functions, and Commands

### Skills Demonstrated

- **Database Creation and Management**: Creating a database and setting its encoding, collation, and connection parameters.
- **Schema Design**: Defining the schema with tables for various celestial objects (e.g., `comet`, `galaxy`, `moon`, `planet`, `star`) and their relationships.
- **Sequences and Auto-Increment**: Using sequences for auto-incrementing primary keys in tables (`comet_comet_id_seq`, `galaxy_galaxy_id_seq`, etc.).
- **Data Types**: Use of various data types including `integer`, `character varying`, `numeric`, `boolean`, and `text` to handle diverse data.
- **Constraints**: Adding `NOT NULL` constraints to enforce data integrity.
- **Data Insertion**: Populating tables with data using `INSERT INTO` statements.

### Functions and Commands

- **`CREATE DATABASE`**: Command used to create the database `universe`.
- **`CREATE TABLE`**: Defines tables for storing information about comets, galaxies, moons, planets, and stars.
- **`CREATE SEQUENCE`**: Creates sequences for auto-generating unique IDs for primary keys.
- **`ALTER TABLE`**: Modifies tables to set sequence ownership, change table ownership, and set default values for columns.
- **`INSERT INTO`**: Inserts rows of data into tables.
- **`SET` Commands**: Used to configure session parameters (e.g., `client_encoding`, `statement_timeout`).

### Key SQL Concepts

- **Normalization**: Ensuring data is organized within tables to reduce redundancy.
- **Foreign Keys**: Implicitly shown through the `*_id` fields indicating relationships (e.g., `galaxy_id` in `comet` table).
- **Primary Keys**: Unique identifiers for each table (`comet_id`, `galaxy_id`, etc.).
- **Data Validation**: Use of constraints like `NOT NULL` to enforce valid data entries.
  

