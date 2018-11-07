SELECT e.last_name AS name,
 e.commission_pct comm,
 e.salary * 12 "Annual Salary"
FROM scott.employees AS e
left join (select CR_name name,CR_EMAIL from CR_STUDENT_LIST)
CR_STUDENT on CR_STUDENT.name=e.last_name
and CR_STUDENT.CR_EMAIL=e.EMAIL
WHERE e.salary > 1000
and e.last_name like 'A%'
ORDER BY
 e.first_name,
 e.last_name;
