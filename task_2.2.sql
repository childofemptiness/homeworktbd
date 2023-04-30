SELECT n_group, count(n_group)  
FROM student 
GROUP BY n_group 

SELECT n_group, max(score)  
FROM student 
GROUP BY n_group 
 

SELECT count(DISTINCT surname) 
FROM student 

SELECT EXTRACT(year FROM date_birth), count(EXTRACT(year FROM date_birth))  
FROM student 
GROUP BY EXTRACT(year FROM date_birth)  

SELECT substr(CAST(n_group as text), 1, 1), avg(score) AverageScore 
FROM student 
GROUP BY substr(CAST(n_group as text), 1, 1) 

SELECT n_group, max(score) 
FROM student 
WHERE CAST (n_group as text) LIKE '3%' 
GROUP BY n_group 

SELECT n_group, AVG(score) 
FROM student 
GROUP BY n_group 
Having avg(student.score) <= 3.5 
ORDER BY avg 
 

SELECT n_group, COUNT(name), MAX(score), AVG(score), MIN(score) 
FROM student st 
GROUP BY n_group 
ORDER BY n_group DESC 
 
SELECT n_group, name  
FROM student 
WHERE score = (SELECT max(score)  
FROM student)  
GROUP BY n_group, name 

SELECT s.n_group, s.name, s.score 
FROM student s 
JOIN ( 
SELECT n_group, MAX(score) AS max_score 
FROM student 
GROUP BY n_group 
) s_max ON s.n_group = s_max.n_group AND s.score = s_max.max_score 
ORDER BY s.n_group;