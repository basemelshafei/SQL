# World Cup Database Project

This project is part of the freeCodeCamp Relational Databases curriculum. The goal is to build and query a PostgreSQL database containing data from World Cup games, focusing on the final three rounds of tournaments since 2014. The project involves creating a database structure, populating it with data, and running queries to extract specific information.

## Project Overview

The project is divided into three main tasks:

### 1. Database Setup
- A PostgreSQL database named `worldcup` is created.
- Two tables are designed:
  - `teams`: Contains the team names. Each team has a unique `team_id`.
  - `games`: Contains the details of each game, such as the year, round, winning team, opponent team, and the number of goals scored by each.
- The `games` table references the `teams` table using foreign keys for `winner_id` and `opponent_id`.

### 2. Data Insertion
- The provided `games.csv` file contains historical data for World Cup games.
- A script (`insert_data.sh`) is created to read this data and insert it into the database:
  - Unique teams are inserted into the `teams` table.
  - Game data is inserted into the `games` table, referencing the appropriate team IDs.

### 3. Querying the Database
- A script (`queries.sh`) is created to run specific SQL queries on the database.
- Queries include:
  - Counting total goals by winning teams.
  - Finding the average number of goals in all games.
  - Identifying the winner of the 2018 World Cup.
  - Listing all teams that played in the 2014 Eighth-Final round.
  - Listing unique winning teams and champions from each year.

## Technologies Used
- PostgreSQL for database management.
- Bash scripting for data insertion and querying.


