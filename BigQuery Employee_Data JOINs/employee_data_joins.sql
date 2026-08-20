SELECT
   employee.name AS employee_name,
   employee.role AS employee_role,
   departments.name AS department_name
FROM
   `project-07f78a79-bb55-4d4e-b12.employee_data.employee` AS employee
INNER JOIN
   `project-07f78a79-bb55-4d4e-b12.employee_data.departments` AS departments
  ON employee.department_id = departments.department_id


SELECT
   employee.name AS employee_name,
   employee.role AS employee_role,
   departments.name AS department_name
FROM
   `project-07f78a79-bb55-4d4e-b12.employee_data.employee` AS employee
LEFT JOIN
   `project-07f78a79-bb55-4d4e-b12.employee_data.departments` AS departments
  ON employee.department_id = departments.department_id


SELECT
   employee.name AS employee_name,
   employee.role AS employee_role,
   departments.name AS department_name
FROM
   `project-07f78a79-bb55-4d4e-b12.employee_data.employee` AS employee
RIGHT JOIN
   `project-07f78a79-bb55-4d4e-b12.employee_data.departments` AS departments
  ON employee.department_id = departments.department_id


  SELECT
   employee.name AS employee_name,
   employee.role AS employee_role,
   departments.name AS department_name
FROM
   `project-07f78a79-bb55-4d4e-b12.employee_data.employee` AS employee
FULL OUTER JOIN
   `project-07f78a79-bb55-4d4e-b12.employee_data.departments` AS departments
  ON employee.department_id = departments.department_id
