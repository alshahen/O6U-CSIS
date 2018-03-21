/* Practice 3 Page 182 */

--1,2
SELECT TO_CHAR(sysdate,'dd-Mon-yy') "Date" from dual;

--3
SELECT EMPLOYEE_ID, LAST_NAME, SALARY, SALARY*1.15 "New Salary" FROM EMPLOYEES;

--4
SELECT EMPLOYEE_ID, LAST_NAME, SALARY,
SALARY*1.15 "New Salary",
(SALARY*1.15) - SALARY "Increase"
FROM EMPLOYEES;

--5
SELECT initcap(LAST_NAME) "Last name",
length(LAST_NAME) "Length"
FROM EMPLOYEES
WHERE substr(LAST_NAME,1,1) IN('A','M','J')
ORDER BY LAST_NAME;

--6
SELECT LAST_NAME,
round(months_between(sysdate,HIRE_DATE),0) Months_Worked
FROM EMPLOYEES
ORDER BY Months_Worked;

--7
SELECT LAST_NAME
|| ' earns ' ||
to_char(SALARY,'$99,999.00')
|| ' monthly but wants ' ||
to_char(SALARY*3,'$99,999.00') "Dreams Salaries"
FROM EMPLOYEES;

--8
SELECT LAST_NAME,
lpad(SALARY,15,'$')
FROM EMPLOYEES;

--9
SELECT LAST_NAME,HIRE_DATE,
TO_CHAR(NEXT_DAY(ADD_MONTHS(HIRE_DATE,6),'MONDAY'),'Day, "The" Ddspth "of" Month, YYYY') "Review"
FROM EMPLOYEES;

--10
SELECT LAST_NAME,HIRE_DATE,
to_char(HIRE_DATE,'DAY') "Day"
FROM EMPLOYEES;

--11
SELECT LAST_NAME,
DECODE(COMMISSION_PCT,
       NULL,'No Commission',
       COMMISSION_PCT) COMM
FROM EMPLOYEES;

--12
SELECT RPAD(LAST_NAME,TRUNC(SALARY/1000,0) + length(LAST_NAME),'*') "Employees and their salaries"
FROM EMPLOYEES;

--13
SELECT JOB_ID,
DECODE(JOB_ID,
       'AD_PRES','A',
       'ST_MAN','B',
       'IT_PROG','C',
       'SA_REP','D',
       'ST_CLERK','E',
       0) G
FROM EMPLOYEES;