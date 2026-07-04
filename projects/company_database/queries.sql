USE `sql_tutorial`;

-- View all employees
SELECT *
FROM `employee`;

-- View all clients
SELECT *
FROM `client`;

-- Employees ordered by salary
SELECT *
FROM `employee`
ORDER BY `salary` DESC;

-- Top 3 highest paid employees
SELECT *
FROM `employee`
ORDER BY `salary` DESC
LIMIT 3;

-- Count employees by branch
SELECT `branch`.`branch_name`, COUNT(`employee`.`emp_id`) AS `employee_count`
FROM `employee`
JOIN `branch`
ON `employee`.`branch_id` = `branch`.`branch_id`
GROUP BY `branch`.`branch_name`;

-- Branches with at least 2 employees
SELECT `branch`.`branch_name`, COUNT(`employee`.`emp_id`) AS `employee_count`
FROM `employee`
JOIN `branch`
ON `employee`.`branch_id` = `branch`.`branch_id`
GROUP BY `branch`.`branch_name`
HAVING COUNT(`employee`.`emp_id`) >= 2;

-- Total salary by branch
SELECT `branch`.`branch_name`, SUM(`employee`.`salary`) AS `total_salary`
FROM `employee`
JOIN `branch`
ON `employee`.`branch_id` = `branch`.`branch_id`
GROUP BY `branch`.`branch_name`;

-- Average salary by branch
SELECT `branch`.`branch_name`, AVG(`employee`.`salary`) AS `avg_salary`
FROM `employee`
JOIN `branch`
ON `employee`.`branch_id` = `branch`.`branch_id`
GROUP BY `branch`.`branch_name`;

-- Employees with total sales greater than 50000
SELECT `employee`.`name`, SUM(`works_with`.`total_sales`) AS `total_sales`
FROM `employee`
JOIN `works_with`
ON `employee`.`emp_id` = `works_with`.`emp_id`
GROUP BY `employee`.`name`
HAVING SUM(`works_with`.`total_sales`) > 50000;
