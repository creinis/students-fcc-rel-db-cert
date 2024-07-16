## Database Query Scripts - Students

##### Technologies Used

<p align="center">
   <img src="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/skills/postgresql-colored.svg" width="75" height="75" alt="PostgreSQL" style="margin: 10px 15px 0 15px;" />
  <img src="https://img.icons8.com/color/75/000000/console.png" width="75" height="75" alt="Bash" style="margin: 10px 15px 0 15px;" />
</p>

### Overview

This project consists of Bash scripts designed to extract specific information from a PostgreSQL database (`students`). The scripts utilize `psql` to connect to the database and execute SQL queries, retrieving various data sets related to students, courses, and majors.


### Usage

These scripts can be used to extract meaningful data insights from the `students` database, providing valuable information related to student performance, course enrollment, and major statistics.

### Installation

To use these scripts, ensure you have `psql` installed and configured to connect to the `students` database. Adjust database credentials (`--username`, `--dbname`, etc.) in the `PSQL` variable within each script as per your environment.

---

#### This project is part of FreeCodeCamp's Back End Development and APIs Projects Certification
<p align="center">
<img src="https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg" width="250" height="75" alt="freeCodeCamp" style="margin: 0 15px; opacity: 0.6" />
</p>

---

### Scripts

The project includes several Bash scripts, each executing a specific SQL query against the `students` database. Below are summaries of each script along with its purpose:

#### 1. Students with GPA 4.0

```bash
#!/bin/bash

echo -e "\nFirst name, last name, and GPA of students with a 4.0 GPA:"
echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE gpa = 4.0")"
```

- Retrieves first name, last name, and GPA of students with a GPA of 4.0.

#### 2. Courses Before 'D'

```bash
#!/bin/bash

echo -e "\nAll course names whose first letter is before 'D' in the alphabet:"
echo "$($PSQL "SELECT course FROM courses WHERE course < 'D'")"
```

- Lists course names whose first letter is alphabetically before 'D'.

#### 3. Students with Specific Criteria

```bash
#!/bin/bash

echo -e "\nFirst name, last name, and GPA of students whose last name begins with 'R' or later and have a GPA > 3.8 or < 2.0:"
echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE last_name >= 'R' AND (gpa > 3.8 OR gpa < 2.0)")"
```

- Retrieves students' details based on specified criteria (last name and GPA).

#### 4. Specific Last Names

```bash
#!/bin/bash

echo -e "\nLast name of students whose last name contains 'sa' (case insensitive) or have 'r' as the second to last letter:"
echo "$($PSQL "SELECT last_name FROM students WHERE last_name ILIKE '%sa%' OR last_name ILIKE '%r_'")"
```

- Lists last names of students matching certain patterns in their last name.

#### 5. Students without Major

```bash
#!/bin/bash

echo -e "\nFirst name, last name, and GPA of students who have not selected a major and either their first name begins with 'D' or they have a GPA > 3.0:"
echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE major_id IS NULL AND (first_name LIKE 'D%' OR gpa > 3.0)")"
```

- Retrieves details of students who have not chosen a major and meet additional criteria.

#### 6. Course Names Criteria

```bash
#!/bin/bash

echo -e "\nCourse name of the first five courses, in reverse alphabetical order, that have 'e' as the second letter or end with 's':"
echo "$($PSQL "SELECT course FROM courses WHERE course LIKE '_e%' OR course LIKE '%s' ORDER BY course DESC LIMIT 5")"
```

- Lists course names based on specified criteria and limits.

#### 7. Average GPA

```bash
#!/bin/bash

echo -e "\nAverage GPA of all students rounded to two decimal places:"
echo "$($PSQL "SELECT ROUND(AVG(gpa), 2) FROM students")"
```

- Calculates the average GPA of all students rounded to two decimal places.

#### 8. Major Information

```bash
#!/bin/bash

echo -e "\nMajor ID, total number of students, and average GPA for each major with more than one student:"
echo "$($PSQL "SELECT major_id, COUNT(*) AS number_of_students, ROUND(AVG(gpa), 2) AS average_gpa FROM students GROUP BY major_id HAVING COUNT(*) > 1")"
```

- Retrieves major information including student count and average GPA for majors with more than one student.

#### 9. Majors List

```bash
#!/bin/bash

echo -e "\nList of majors in alphabetical order that either have no students or have students whose first name contains 'ma' (case insensitive):"
echo "$($PSQL "SELECT major FROM students FULL JOIN majors ON students.major_id = majors.major_id WHERE major IS NOT NULL AND (student_id IS NULL OR first_name ILIKE '%ma%') ORDER BY major")"
```

- Lists majors meeting specific conditions in alphabetical order.

#### 10. Unique Courses

```bash
#!/bin/bash

echo -e "\nList of unique courses in reverse alphabetical order that no student or 'Obie Hilpert' is taking:"
echo "$($PSQL "SELECT DISTINCT(course) FROM students RIGHT JOIN majors_courses USING(major_id) INNER JOIN courses USING(course_id) WHERE (first_name = 'Obie' AND last_name = 'Hilpert') OR student_id IS NULL ORDER BY course DESC")"
```

- Lists unique courses meeting specific conditions in reverse alphabetical order.

#### 11. Courses with Single Student

```bash
#!/bin/bash

echo -e "\nList of courses in alphabetical order with only one student enrolled:"
echo "$($PSQL "SELECT course FROM students INNER JOIN majors_courses USING(major_id) INNER JOIN courses USING(course_id) GROUP BY course HAVING COUNT(student_id) = 1 ORDER BY course")"
```

- Lists courses with only one student enrolled in alphabetical order.
