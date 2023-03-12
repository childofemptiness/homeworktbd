SELECT name, surname, score FROM student WHERE (score >= 4 AND score <= 4.5);
SELECT * FROM student WHERE CAST(n_group AS VARCHAR) LIKE '2281';
SELECT * FROM student ORDER BY n_group, name DESC;
SELECT * FROM student WHERE score > 4 ORDER BY score DESC;
SELECT (name, risk) FROM hobby WHERE id <= 2;
SELECT id_student, id_hobby FROM student_hobby WHERE date_start >= '1985-03-10' AND date_finish <= '2027-06-19' AND date_finish >= '2023-03-05';
SELECT * FROM student WHERE score >= 4.5 ORDER BY score DESC;
SELECT * FROM student WHERE score >= 4.5 ORDER BY score DESC FETCH FIRST 5 ROWS ONLY;
SELECT name,
CASE
WHEN risk >= 8 THEN 'очень высокий'
WHEN risk >= 6 AND risk < 8 THEN 'высокий'
WHEN risk >= 4 AND risk < 6 THEN 'средний'
WHEN risk >= 2 AND risk < 4 THEN 'низкий'
ELSE 'очень низкий'
END
FROM hobby;
SELECT name, risk FROM hobby ORDER BY risk DESC FETCH FIRST 3 ROWS ONLY;
