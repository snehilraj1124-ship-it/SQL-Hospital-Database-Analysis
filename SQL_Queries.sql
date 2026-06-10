/* =========================================================
   SQL Hospital Database Analysis
   ========================================================= */

/* Question 1:
   Show first name, last name and gender of male patients.
*/
SELECT first_name, last_name, gender
FROM patients
WHERE gender = 'M';

/* Question 2:
   Show first name and last name of patients who do not have allergies.
*/
SELECT first_name, last_name
FROM patients
WHERE allergies IS NULL;

/* Question 3:
   Show first name of patients whose name starts with 'C'.
*/
SELECT first_name
FROM patients
WHERE first_name LIKE 'C%';

/* Question 4:
   Show first name and last name of patients whose weight is between 100 and 120.
*/
SELECT first_name, last_name
FROM patients
WHERE weight BETWEEN 100 AND 120;

/* Question 5:
   Count total number of patients.
*/
SELECT COUNT(*) AS total_patients
FROM patients;

/* Question 6:
   Count total male patients.
*/
SELECT COUNT(*) AS male_patients
FROM patients
WHERE gender = 'M';

/* Question 7:
   Count total female patients.
*/
SELECT COUNT(*) AS female_patients
FROM patients
WHERE gender = 'F';

/* Question 8:
   Find average patient weight.
*/
SELECT AVG(weight) AS average_weight
FROM patients;

/* Question 9:
   Find maximum patient weight.
*/
SELECT MAX(weight) AS highest_weight
FROM patients;

/* Question 10:
   Find minimum patient weight.
*/
SELECT MIN(weight) AS lowest_weight
FROM patients;

/* Question 11:
   Display patients ordered by last name.
*/
SELECT *
FROM patients
ORDER BY last_name;

/* Question 12:
   Display patients ordered by first name descending.
*/
SELECT *
FROM patients
ORDER BY first_name DESC;

/* Question 13:
   Show patients weighing more than 150.
*/
SELECT *
FROM patients
WHERE weight > 150;

/* Question 14:
   Show patients born after 2000.
*/
SELECT *
FROM patients
WHERE birth_date > '2000-01-01';

/* Question 15:
   Show patients whose first name contains letter 'a'.
*/
SELECT *
FROM patients
WHERE first_name LIKE '%a%';

/* Question 16:
   Replace NULL allergies with NKA.
*/
UPDATE patients
SET allergies = 'NKA'
WHERE allergies IS NULL;

/* Question 17:
   Show patients whose first name starts with 'B'.
*/
SELECT first_name, last_name
FROM patients
WHERE first_name LIKE 'B%';

/* Question 18:
   Show patients whose first name ends with 'n'.
*/
SELECT first_name, last_name
FROM patients
WHERE first_name LIKE '%n';

/* Question 19:
   Show patients whose weight is greater than 140.
*/
SELECT first_name, last_name, weight
FROM patients
WHERE weight > 140;

/* Question 20:
   Show patients whose weight is less than 100.
*/
SELECT first_name, last_name, weight
FROM patients
WHERE weight < 100;

/* Question 21:
   Display the top 10 heaviest patients.
*/
SELECT *
FROM patients
ORDER BY weight DESC
LIMIT 10;

/* Question 22:
   Display the top 10 lightest patients.
*/
SELECT *
FROM patients
ORDER BY weight ASC
LIMIT 10;

/* Question 23:
   Count the number of patients with allergies.
*/
SELECT COUNT(*) AS patients_with_allergies
FROM patients
WHERE allergies IS NOT NULL;

/* Question 24:
   Show distinct allergy types.
*/
SELECT DISTINCT allergies
FROM patients
WHERE allergies IS NOT NULL;

/* Question 25:
   Find the average weight of male patients.
*/
SELECT AVG(weight) AS average_male_weight
FROM patients
WHERE gender = 'M';
