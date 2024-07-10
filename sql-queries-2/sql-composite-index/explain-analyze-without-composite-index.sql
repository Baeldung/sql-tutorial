-- EXPLAIN ANALYZE for a multi-column query without a composite index defined
EXPLAIN ANALYZE 
SELECT * 
FROM Empl 
WHERE dept = 1 AND age < 30 AND lname = 'Smith';