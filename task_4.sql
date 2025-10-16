-- task_4.sql
-- Task 4: Full description of the Books table without using DESCRIBE or EXPLAIN
-- Works even when the database is passed as an argument to the mysql command

SELECT 
    COLUMN_NAME AS 'Column Name',
    COLUMN_TYPE AS 'Data Type',
    IS_NULLABLE AS 'Nullable',
    COLUMN_KEY AS 'Key',
    COLUMN_DEFAULT AS 'Default',
    EXTRA AS 'Extra'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = DATABASE()  -- uses the current database passed via mysql command
  AND TABLE_NAME = 'Books';
