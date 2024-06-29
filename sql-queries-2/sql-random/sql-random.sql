SELECT * 
  FROM Faculty;

SELECT * 
  FROM Faculty 
  ORDER BY RANDOM();

SELECT * 
  FROM Faculty 
  ORDER BY RANDOM() 
  LIMIT 1;

SELECT * 
  FROM Faculty 
  ORDER BY RANDOM() 
  LIMIT 2;

SELECT * 
  FROM Faculty 
  ORDER BY RANDOM() 
  LIMIT 3;

SELECT * 
  FROM Faculty 
  ORDER BY RAND() 
  LIMIT 1;

SELECT TOP 1 * 
  FROM Faculty 
  ORDER BY NEWID();
