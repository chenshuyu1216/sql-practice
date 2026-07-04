# SQL Company Database Learning Progress

Last updated: 2026-07-04

## Current Project

I practiced SQL using a small company database system.

Tables used:

- employee
- branch
- client
- works_with

## What I Practiced

### 1. Database and Table Design

I practiced creating related tables for a company database.

I used:

- PRIMARY KEY
- FOREIGN KEY
- Composite primary key
- AUTO relationships between tables
- ON DELETE SET NULL
- ON DELETE CASCADE

Tables and relationships:

- employee.branch_id references branch.branch_id
- employee.sup_id references employee.emp_id
- branch.manager_id references employee.emp_id
- works_with.emp_id references employee.emp_id
- works_with.client_id references client.client_id

### 2. Insert and Update Data

I practiced:

- INSERT INTO
- UPDATE
- WHERE

I also learned that insert order matters when using foreign keys.

### 3. Basic Queries

I practiced:

- SELECT *
- SELECT specific columns
- DISTINCT
- ORDER BY
- LIMIT

### 4. Aggregate Functions

I practiced:

- COUNT
- AVG
- SUM
- MAX
- MIN

Examples:

- Count employees
- Calculate average salary
- Calculate total salary
- Find highest and lowest salary

### 5. Wildcards and LIKE

I practiced using:

- LIKE
- %
- _

Examples:

- Find clients by phone number pattern
- Find clients whose name starts with a specific character
- Find employees born in a specific month

### 6. UNION

I practiced using UNION to combine results from different tables.

Examples:

- Employee names union client names
- Employee IDs and names union client IDs and names
- Employee salaries union total sales

### 7. JOIN

I practiced joining employee and branch tables.

I learned the difference between:

- JOIN
- LEFT JOIN

I also learned that join conditions decide what the result means.

Examples:

- employee.emp_id = branch.manager_id means finding managers
- employee.branch_id = branch.branch_id means finding each employee's department

### 8. Subquery

I practiced subqueries.

Examples:

- Find the manager of the R&D branch
- Find employees whose sales are greater than 50000

## Important Lessons

- SQL table names and column names must be spelled exactly correctly.
- Backticks are used for table or column names.
- Single quotes are used for text values.
- Foreign keys require related data to exist first.
- JOIN is used to connect related tables.
- LEFT JOIN keeps all rows from the left table.
- Subqueries allow one query to use the result of another query.

## Next Goals

- Practice GROUP BY
- Practice HAVING
- Practice more JOIN problems
- Turn this company database into a polished GitHub SQL mini project

## GROUP BY and HAVING Practice - 2026-07-04

Today I practiced `GROUP BY` and `HAVING`.

I learned that `GROUP BY` is used to group rows before calculating statistics, and `HAVING` is used to filter grouped results.

Practice completed:

- Count employees in each branch
- Calculate average salary in each branch
- Calculate total sales for each employee
- Find employees whose total sales are greater than 50000

Result:

- employee 206: 70000
- employee 210: 87940

## SQL Mini Project Update - 2026-07-04

I organized the company database practice into a polished GitHub mini project.

New project folder:

- `projects/company_database/schema.sql`
- `projects/company_database/seed.sql`
- `projects/company_database/queries.sql`
- `projects/company_database/README.md`

What I completed:

- Separated table structure into `schema.sql`
- Separated sample data into `seed.sql`
- Separated practice queries into `queries.sql`
- Added a project README for GitHub
- Practiced organizing SQL work like a real mini project

Current status:

- SQL company database mini project completed
- Next learning stage: DSA basics
