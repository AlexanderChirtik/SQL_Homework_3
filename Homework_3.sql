CREATE DATABASE IF NOT EXISTS home_work_3;

USE home_work_3;

DROP TABLE IF EXISTS staff;
CREATE TABLE staff
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(45) NOT NULL,
    lastname VARCHAR(45) NOT NULL,
    post VARCHAR(45) NOT NULL,
    seniority INT, 
    salary DECIMAL(8,2), -- 100 000 . 00
    age INT
);
-- 4. Заполнение таблицы данными

INSERT staff (firstname, lastname, post, seniority, salary, age)
VALUES
  ('Вася', 'Петров', 'Начальник', 40, 100000, 60),
  ('Петр', 'Власов', 'Начальник', 8, 70000, 30),
  ('Катя', 'Катина', 'Инженер', 2, 70000, 25),
  ('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
  ('Иван', 'Петров', 'Рабочий', 40, 30000, 59),
  ('Петр', 'Петров', 'Рабочий', 20, 55000, 40),
  ('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
  ('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
  ('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
  ('Максим', 'Петров', 'Рабочий', 2, 11000, 22),
  ('Юрий', 'Петров', 'Рабочий', 3, 12000, 24),
  ('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);

SELECT id, firstname, lastname, post, seniority, salary, age FROM staff;


-- 1. Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания 

SELECT id, firstname, lastname, post, seniority, salary, age FROM staff ORDER BY salary;
SELECT id, firstname, lastname, post, seniority, salary, age FROM staff ORDER BY salary DESC;


-- 2. Выведите 5 максимальных заработных плат (saraly)

SELECT id, firstname, lastname, post, salary FROM staff ORDER BY salary DESC LIMIT 5;


-- 3. Посчитайте суммарную зарплату (salary) по каждой специальности (роst)

SELECT post, SUM(salary) FROM staff GROUP BY post;


-- 4. Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно

SELECT COUNT(*) FROM staff WHERE post = "Рабочий" AND age BETWEEN 24 AND 49;


-- 5. Найдите количество специальностей

SELECT COUNT(DISTINCT post) AS unique_specialties FROM staff;


-- 6. Выведите специальности, у которых средний возраст сотрудников меньше 30 лет 

SELECT post, AVG(age) AS average_age FROM staff GROUP BY post HAVING average_age < 30;




