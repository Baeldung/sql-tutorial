-- Create new table with columns in desired order
CREATE TABLE Baeldung2 (first_column int, new_second_column date, second_column varchar(150), third_column varchar(100));

-- Insert data into new table from old table
INSERT INTO Baeldung2 (first_column, second_column, third_column) SELECT first_column, second_column, third_column FROM Baeldung;

-- Drop old table
DROP TABLE Baeldung;

-- Rename new table to old table [MySQL and PostgreSQL]
ALTER TABLE Baeldung2 RENAME TO Baeldung;

-- Rename new table to old table [MSSQL]
EXEC sp_rename 'Baeldung2', 'Baeldung';

-- Query information_schema.columns for columns in recreated table Baeldung
SELECT column_name FROM information_schema.columns WHERE table_name = 'Baeldung';
