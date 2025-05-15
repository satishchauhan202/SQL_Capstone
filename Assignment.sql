

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
