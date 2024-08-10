51) Display the name of the employee who earns highest salary. 
    
	select first_name from employees where salary=(select max(salary) from employees)

52) Display the employee number and name for employee working as clerk and earning highest salary among clerks. 

    select employee_id, first_name from employees where department='clerk' and salary=(select max(salary) from employees where department='cleark' )

53) Display the names of salesman who earns a salary more than the highest  salary of any clerk.

    select first_name from employees where department='salesman' and salary>(select max(salary) from employees where department='clerk' )
	
54) Display the names of clerks who earn a salary more than the lowest Salary  of any salesman. 
 
    select first_name from employees where department_id=9 and salary<(select max(salary) from employees where department_id=7 )

55)Display the names of employees who earn a salary more than that of  Jones or that of salary grether than   that of scott. 

   select first_name from employees where salary> (select max(salary) from employees where first_name='Alexander')
                                         or salary>(select max(salary) from employees where first_name='Shelli');
										 
55) Display the names of the employees who earn highest salary in their respective departments. 

   select * from(
select first_name, dense_rank() over(partition by department_id order by salary desc) as rnk from employees) where rnk=1;

56) Display the names of the employees who earn highest salaries in their respective job groups.  

   select * from(
select first_name, dense_rank() over(partition by job_id order by salary desc) as rnk from employees) where rnk=1;

57) Display the employee names who are working in accounting department. 

   select first_name from employees where designation='accounts';
   
58) Display the employee names who are working in Chicago. 

   select first_name from emploees where address='Chicago';
 
59) Display the Job groups having total salary greater than the maximum  salary for managers.  

    select job_id, sum(salary) from employees group by job_id having sum(salary)> (select max(salary) from employees where department_id=5) 

60) Display the names of employees from department number 10 with salary  grether than that of any employee working in other department. 
 
    select first_name from employees where department_id=10 and salary> (select max (salary) from employees where department_id=9)

61) Display the names of the employees from department number 10 with  salary greater than that of all employee working in other departments. 

    select first_name from employees where department_id=10 and salary>(select max(salary) from employees where department_id <>10)
	
62) Display the names of the employees in Uppercase. 

    select upper(first_name) from employees
	
63) Display the names of the employees in Lowecase. 

     select lower(first_name) from employees
	 
64) Display the names of the employees in Propercase. 

     select initcap(first_name) from employees
	 
65) Display the length of Your name using appropriate function.

    select length('burujupurushothamreddy') from dual;

66) Display the length of all the employee names. 

    select length(first_name) as LN from employees 

67) select name of the employee concatenate with employee number. 

   select employee_id || ',' || first_name from employees

68) User appropriate function and extract 3 characters starting from 2  characters from the following  string 'Oracle'. i.e the out put should be 'ac'.    

    select substr(first_name,1,2) from employees
	
69) Find the First occurance of character 'a' from the following string i.e 'Computer Maintenance Corporation'. 

    select charindex('a', 'Computer Maintenance Corporation') from dual
	
70) Replace every occurance of alphabhet A with B in the string Allens(use  translate function) 

      select translate(first_name,'A','B') from employees 

71) Display the informaction from emp table.Where job manager is found it  should be displayed as boos(Use replace function). 	

   select replace(first_name, 'manager','boos') from employees  

72) Display empno,ename,deptno from emp table.Instead of display department numbers display the related department name(Use decode function).

  select employee_id, first_name, department_id,decode(department_id,9, '99', 10 ,'100' , 'na') as dept_no from employees

73) Display your age in days. 
  
   SELECT DATEDIFF(DAY, to_date ('31-12-1999','dd-mm-yyyy'), sysdate()) AS AgeInDays;
   
74) Display your age in months. 

   SELECT DATEDIFF(month, to_date ('31-12-1999','dd-mm-yyyy'), sysdate()) AS AgeInmonths;

75) Display the current date as 15thAugest Friday Nineteen Ninety Saven. 
 
  SELECT CAST('1997-08-15' AS DATE) AS current_date;


 
  