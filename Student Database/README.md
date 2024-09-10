## Skills and Functions Demonstrated

### 1. **Bash Scripting**
- Usage of `#!/bin/bash` shebang to define the script interpreter.
- Reading CSV files using `cat` and `while IFS="," read ...` loop for line-by-line processing.
- Conditional statements (`if`, `else`, `[[ ... ]]`) to handle logic within scripts.
- Variable assignments and command substitution (`$(...)`) for executing commands and storing results.
- Basic input/output operations using `echo` to display information to the user.

### 2. **PostgreSQL Database Management**
- Executing SQL commands directly from the shell using `psql` command-line utility.
- Inserting data into tables with `INSERT INTO` SQL statements.
- Truncating tables to reset data:

  TRUNCATE students, majors, courses, majors_courses;

- Selecting data with `SELECT` statements to retrieve IDs, check for existing records, and fetch specific data points.

### 3. **Data Insertion and Validation**
- Inserting new records into `majors`, `courses`, and `students` tables based on CSV data.
- Checking for existing records using `SELECT` and handling missing entries by inserting new ones.
- Using nested `if` statements to verify successful data insertion.

### 4. **Advanced SQL Queries**
- Filtering and searching data using SQL conditions (`WHERE`, `LIKE`, `ILIKE`, `AND`, `OR`).
- Sorting results (`ORDER BY`) and limiting outputs (`LIMIT`).
- Aggregating data with `COUNT()` and `AVG()`, using `GROUP BY` and `HAVING` for conditional grouping.
- Performing joins (`INNER JOIN`, `RIGHT JOIN`, `FULL JOIN`) to combine data across related tables.
- Handling null values (`IS NULL`) to filter results based on missing data.

### 5. **Complex Data Filtering**
- Querying students based on multiple criteria, such as GPA ranges, specific starting letters of names, and case-insensitive searches.
- Finding courses based on alphabetical order or character positions.
- Identifying majors with specific conditions, like those not chosen by any student.

## Key Commands and Learning Outcomes

### **Bash Basics**
- Commands: `cat`, `echo`, `read`, and basic control flow commands to process data.
- Using pipes (`|`) to feed data between commands.

### **PostgreSQL Integration**
- `psql` for executing SQL commands directly from the shell, facilitating database interaction from scripts.
- Using SQL for data manipulation (`INSERT`, `SELECT`, `TRUNCATE`) and validation within the shell.

### **Data Processing Techniques**
- Parsing CSV files and dynamically inserting data into the database based on conditions.
- Building robust scripts that check for existing data, avoiding duplication, and ensuring consistency.

### **Database Querying Skills**
- Crafting detailed and advanced SQL queries to fetch, filter, and aggregate data based on complex conditions.
- Using SQL functions (`ROUND()`, `COUNT()`, `AVG()`) to process and present data meaningfully.

