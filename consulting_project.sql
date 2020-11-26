CREATE DATABASE consulting_project;

ALTER TABLE consulting_project.comments_cleaned
ADD PRIMARY KEY (student_id);

ALTER TABLE consulting_project.country_wages
ADD PRIMARY KEY (average_wages);

ALTER TABLE consulting_project.courses_cleaned
ADD PRIMARY KEY (course_id); 

ALTER TABLE consulting_project.locations_cleaned
ADD PRIMARY KEY (country_index);

ALTER TABLE consulting_project.schools_success
ADD PRIMARY KEY (school_id);

SELECT *
FROM consulting_project.country_wages
INNER JOIN consulting_project.locations_cleaned
ON country_wages.country_name = locations_cleaned.country_name
INNER JOIN consulting_project.courses_cleaned
ON courses_cleaned.school = locations_cleaned.school;


