-- Grading Students Based on GPA

SELECT 
    id, 
    name, 
    gpa,
    CASE 
        WHEN gpa > 3.9 THEN 'High Achiever'
        WHEN gpa > 3.0 THEN 'Average'
        ELSE 'Needs Improvement'
    END AS gpa_category
FROM Student;

-- Determining Graduation Status Based on Dates

SELECT 
    id, 
    name, 
    graduation_date,
    gpa,
    CASE 
        WHEN graduation_date IS NULL THEN 'Still Enrolled'
        WHEN graduation_date > CAST(GETDATE() AS DATE) THEN 'Upcoming Graduate'
        ELSE 'Graduated'
    END AS graduation_status
FROM Student;

-- Categorizing Students Into Age Groups Based on Their Age

SELECT 
    id, 
    name, 
    birth_date,
    CASE 
        WHEN DATEDIFF(YEAR, birth_date, GETDATE()) > 23 THEN '24 and above'
        WHEN DATEDIFF(YEAR, birth_date, GETDATE()) > 20 THEN '21-23'
        ELSE '18-20'
    END AS age_group
FROM Student;

