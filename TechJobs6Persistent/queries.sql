-- Capture your answer here for each "Test It With SQL" section of this assignment
    -- write each as comments
     

--Part 1: List the columns and their data types in the Jobs table.

    
    Id int AI PK
    Name longtext 
    EmployerId int


--Part 2: Write a query to list the names of the employers in St. Louis City.
 SELECT name
    FROM techjobs.employers
    WHERE location = "St Louis";


--Part 3: Write a query to return a list of the names and descriptions of all skills that are attached to jobs in alphabetical order.
    --If a skill does not have a job listed, it should not be included in the results of this query.


    
    SELECT employers.name, jobs.name, skillname
    FROM techjobs.jobskills
    JOIN techjobs.jobs ON techjobs.jobskills.jobsid = techjobs.jobs.id
    JOIN techjobs.employers ON techjobs.jobs.employerid = techjobs.employers.id
    JOIN techjobs.skills ON techjobs.jobskills.skillsid = techjobs.skills.id
    ORDER BY techjobs.employers.name asc, techjobs.jobs.name asc, techjobs.skills.skillname asc;