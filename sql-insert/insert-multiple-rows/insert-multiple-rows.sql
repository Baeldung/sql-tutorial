INSERT INTO student (id, name, national_id)
VALUES (1001, 'John Liu', '123345566'),
       (1003, 'Rita Ora', '132345166'),
       (1007, 'Philip Lose', '321345566'),
       (1010, 'Samantha Prabhu', '3217165566');

INSERT INTO student (id, name, national_id)
SELECT id, name, national_id
FROM old_student
WHERE graduation_date = '2024-06-15';


INSERT INTO student (id, name, national_id) 
VALUES (1001, 'John Liu', 123345566) 
UNION ALL 
VALUES (1003, 'Rita Ora', 132345166) 
UNION ALL 
VALUES (1007, 'Philip Lose', 321345566)
UNION ALL 
VALUES (1010, 'Samantha Prabhu', 3217165566)