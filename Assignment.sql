

ASSIGNMENT – 01 

Data: tutorial.crunchbase_companies 

1.	Find the list of unique country codes in the data. 

select DISTINCT country_code
from tutorial.crunchbase_companies;

2.	Find the list of all the companies funded on or after 2009.

select *
from tutorial.crunchbase_companies
where founded_year >=2009;

3.	Find the list of all the companies founded before 2015 and have received funding of at least 1 Mn USD or after 2009. 

select *
from tutorial.crunchbase_companies
where founded_year <2015 and funding_total_usd >= 1000000 or founded_year >2009 ;

4.	Find the list of all the companies that has funding between 3 to 6 rounds.

Select *
from tutorial.crunchbase_companies
where funding_rounds BETWEEN 3 and 6;

5.	Find the list of all the companies founded in India(IN), the USA(USA), and the Great Britain(GBR).

Select *
from tutorial.crunchbase_companies
where country_code IN ('IND', 'USA', 'GBR');


6.	Find the list of all the companies which are either acquired or operating. 

select *
from tutorial.crunchbase_companies
where status IN ('operating', 'acquired');


7.	Find the list of all the companies starting with the letter S.

select *
from tutorial.crunchbase_companies
where name LIKE 's%';

8.	Find the list of all the companies founded in the city containing word ‘Park’.

select *
from tutorial.crunchbase_companies
where city LIKE '%Park%';

9.	Find the list of all the companies which are operated outside the USA(USA), Australia(AUS), and Argentina(ARG).

select *
from tutorial.crunchbase_companies
where country_code NOT IN ('USA','AUS','ARG')

10.	Find the list of all the companies founded after 2015 or have received funding of at least 1 Mn USD.

select *
from tutorial.crunchbase_companies
where founded_year >2015 and funding_total_usd >= 1000000;

11.	Find the list of unique country codes in the data excluding the null values.

select DISTINCT country_code
from tutorial.crunchbase_companies
where country_code is not NULL;



ASSIGNMENT – 02

Data: tutorial.sat_scores 

1.	Find the minimum marks in sat_verbal in the dataset.

select MIN(sat_verbal)
from tutorial.sat_scores;

2.	Find the maximum marks in sat_writing in the dataset.

select Max(sat_writing)
from tutorial.sat_scores;

3.	Find the count of students in the dataset.

select COUNT(*)
from tutorial.sat_scores;

4.	Find the average marks in sat_math in the dataset.

select AVG(sat_math)
from tutorial.sat_scores;

5.	Find the sum of hrs_studied in the dataset.

select SUM(hrs_studied)
from tutorial.sat_scores;

6.	Find the list of unique school in the data using Group by clause.

select school
from tutorial.sat_scores
group by school;

7.	Find the list of unique school and teachers in the data using Group by clause.

select school, teacher
from tutorial.sat_scores
group by 1,2;

8.	Find the total number of hours studied per school.

select school, SUM(hrs_studied)
from tutorial.sat_scores
group by school;

9.	Find the number of students in each school.

select school, COUNT(student_id)
from tutorial.sat_scores
group by school;

10.	Find the average marks scored in sat_writing per teacher for the school 'Petersville HS’.

select teacher,AVG(sat_writing)
from tutorial.sat_scores
where school = 'Petersville HS'
group by teacher;

11.	Find the maximum marks scored in sat_math per teacher for the school ‘Washington HS’.

select teacher,MAX(sat_math)
from tutorial.sat_scores
where school = 'Washington HS'
group by teacher;
  
12.	Find the list of unique school and teachers in the data using Group by clause and sort it by ascending order for school and descending order for teacher name.

select school,teacher
from tutorial.sat_scores
group by 1,2
order by school, teacher desc;

13.	Find the list of all the teachers along with the minimum marks scored by their students in sat_verbal. Only consider those teachers where minimum marks is more than 220. Sort the output in ascending order.

select teacher,Min(sat_verbal)
from tutorial.sat_scores
where sat_verbal >220
group by teacher
order by MIN(sat_verbal);

14.	Find the first 5 rows of the data.

select *
from tutorial.sat_scores
limit 5;

