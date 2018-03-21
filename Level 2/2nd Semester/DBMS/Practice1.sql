/* Practice 1 Page 86 */

--3 True
--4 True

--5
/*
1- Multiplication sign
2- Space between ANNUAL SALARY
3- Missing comma after last_name
4- Wrong column name (Sal)
*/

--6
SELECT * FROM DEPARTMENTS;

--7
SELECT EMPLOYEE_ID, LAST_NAME,JOB_ID,HIRE_DATE startdate
FROM EMPLOYEES;

--9
SELECT DISTINCT JOB_ID FROM EMPLOYEES;

--10
SELECT EMPLOYEE_ID "Emp #",
LAST_NAME "Employee",
JOB_ID "Job",
HIRE_DATE "Hire Date"
FROM EMPLOYEES;


--11
SELECT LAST_NAME||', '||
JOB_ID "Employee and Title"
FROM EMPLOYEES;

--12
SELECT FIRST_NAME||','||
LAST_NAME||','||
EMAIL||','||
PHONE_NUMBER||','||
JOB_ID||','||
HIRE_DATE||','||
SALARY||','||
EMPLOYEE_ID "The Output"
FROM EMPLOYEES;