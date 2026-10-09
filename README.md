# DBMS Lab Experiments

MySQL scripts for the DBMS lab experiments in this repository.

## Files

- [01_experiment_1_schema.sql](01_experiment_1_schema.sql) — Creates and populates the Employee–Department–Project schema; demonstrates selection, projection, aggregate functions, GROUP BY, HAVING, CASE, and ORDER BY.
- [02_experiment_2_advanced_queries.sql](02_experiment_2_advanced_queries.sql) — INNER JOIN, LEFT JOIN, SELF JOIN, multi-table joins, correlated subqueries, EXISTS, simulated INTERSECT/EXCEPT, and EXPLAIN.
- [03_experiment_3_views_recursive_cte.sql](03_experiment_3_views_recursive_cte.sql) — SQL views, view updatability, employee-manager relationships, and recursive CTEs.

## Run order

1. Execute `01_experiment_1_schema.sql` in MySQL Workbench on a fresh database/server.
2. Execute `02_experiment_2_advanced_queries.sql`.
3. Execute `03_experiment_3_views_recursive_cte.sql`.

Requirements: MySQL 8.0+ (for recursive CTEs). Experiments 2 and 3 depend on the CompanyDB schema from Experiment 1. Review the scripts before rerunning inserts or schema changes against an existing database.
