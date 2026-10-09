# DBMS Lab Experiments

SQL files for DBMS lab Experiments 3, 4 and 5.

## Files

- [03_experiment_3_schema.sql](03_experiment_3_schema.sql) — Employee–Department–Project schema, sample data, selection, projection, aggregates, GROUP BY, HAVING, CASE and ORDER BY.
- [04_experiment_4_advanced_queries.sql](04_experiment_4_advanced_queries.sql) — INNER JOIN, LEFT JOIN, SELF JOIN, multi-table joins, correlated subqueries, EXISTS, simulated INTERSECT/EXCEPT and EXPLAIN.
- [05_experiment_5_views_recursive_cte.sql](05_experiment_5_views_recursive_cte.sql) — SQL views, view updatability, employee-manager relationships and recursive CTEs.

## Run order

1. Run `03_experiment_3_schema.sql` first in MySQL Workbench on a fresh database/server.
2. Run `04_experiment_4_advanced_queries.sql`.
3. Run `05_experiment_5_views_recursive_cte.sql`.

Requirements: MySQL 8.0+ (for recursive CTEs). Experiments 4 and 5 depend on the `CompanyDB` schema created in Experiment 3. Review the scripts before rerunning inserts or schema changes against an existing database.
