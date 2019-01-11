# SECTION:5




# SELECT WHERE Challenge #1
SELECT email
FROM customer
WHERE first_name = 'Nancy'

# SELECT WHERE Challenge #2
SELECT description
FROM film
WHERE title = 'Outlaw Hanky';

# SELECT WHERE Challenge #3
SELECT phone
FROM address
WHERE address = '259 Ipoh Drive';

# COUNT example
SELECT COUNT (DISTINCT(amount))
FROM payment;

# LIMIT example
SELECT * FROM customer
LIMIT 5;

# ORDER BY example
SELECT first_name, last_name FROM customer
ORDER BY first_name ASC;

# ORDER BY example 2 - multiple columns
SELECT first_name, last_name FROM customer
ORDER BY first_name ASC, last_name DESC;

# ORDER BY Challenge #1
SELECT customer_id, amount FROM payment
ORDER BY amount DESC
LIMIT 10;

# ORDER BY Challenge #2
SELECT film_id, title FROM film
ORDER BY film_id ASC
LIMIT 5;

# BETWEEN example
SELECT customer_id, amount FROM payment
WHERE amount BETWEEN 8 AND 9;

# NOT BETWEEN example
SELECT customer_id, amount FROM payment
WHERE amount NOT BETWEEN 8 AND 9;

# BETWEEN example using timestamp
SELECT payment_date FROM payment
WHERE payment_date BETWEEN '2007-02-07' AND '2007=02-15';

# IN example
SELECT customer_id, rental_id, return_date
FROM rental
WHERE customer_id IN (7,13,10)
ORDER BY return_date DESC;

# LIKE example
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'Jen%'; # ILIKE instead of LIKE is case insensitive

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '%y';

# General Challenge 1 #1
SELECT COUNT(amount) FROM payment
WHERE amount > 5;

# General Challenge 1 #2
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

# General Challenge 1 #3
SELECT COUNT(DISTINCT district)
FROM address;

# General Challenge 1 #4
SELECT DISTINCT district
FROM address;

# General Challenge 1 #5
SELECT COUNT(*) FROM film
WHERE rating = 'R'
AND replacement_cost BETWEEN 5 AND 15;

# General Challenge 1 #6
SELECT COUNT(*) FROM film
WHERE title LIKE '%Truman%';




# SECTION:6




# AVE, ROUND example
SELECT ROUND(AVG(amount),2) FROM payment; # Round up to 2 decimal points.

# MIN/MAX example
SELECT MAX(amount) FROM payment;

# SUM example
SELECT SUM(amount) FROM payment;

# GROUP BY example
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id;

SELECT rating, COUNT(*)
FROM film
GROUP BY rating;

SELECT rating, ROUND(AVG(rental_rate),2)
FROM film
GROUP BY rating;

# GROUP BY challenge #1
SELECT staff_id, COUNT(amount), SUM(amount)
FROM payment
GROUP BY staff_id;

# GROUP BY challenge #2
SELECT rating, AVG(replacement_cost)
FROM film
GROUP BY rating;

# GROUP BY challenge #3
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id 
ORDER BY SUM(amount) DESC
LIMIT 5;

# HAVING example - Work like WHERE but it functions in conjunction with GROUP BY clause
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id 
HAVING SUM(amount) > 200;

SELECT store_id, COUNT(customer_id)
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300;

# WHERE vs. HAVING
# WHERE is the condition before GROUP BY filtering
# HAVING is the condition after GROUP BY filtering
SELECT rating, AVG(rental_rate)
FROM film
WHERE rating in ('R','G','PG')
GROUP BY rating
HAVING AVG(rental_rate) < 3;

# HAVING challenge #1
SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
HAVING COUNT(amount) >= 40;

# HAVING challenge #2
SELECT rating, AVG(rental_duration)
FROM film
GROUP BY rating
HAVING AVG(rental_duration) > 5;




# SECTION:7 Assessment Test 1




# 1. Return the customer IDs of customers who have spent at least $110 with 
# the staff member who has an ID of 2.
SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) >= 110;

# 2. How many films begin with the letter J?
SELECT COUNT(film_id)
FROM film
WHERE title LIKE 'J%';

# 3. What customer has the highest customer ID number whose name starts 
# with an 'E' and has an address ID lower than 500?
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'E%'
AND address_id < 500
ORDER BY customer_id DESC
LIMIT 1;




# SECTION: 8




# AS example
SELECT customer_id, SUM(amount) AS total_spent # rename column
FROM payment
GROUP BY customer_id;

# INNER JOIN example

# Table_name. could be omitted if the column name appears in only one table
SELECT customer.customer_id, first_name, last_name, email, amount, payment_date
FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id
WHERE first_name LIKE 'A%'
ORDER BY customer.customer_id;

SELECT payment_id, amount, first_name, last_name
FROM payment
JOIN staff ON payment.staff_id = staff.staff_id; # Join implicitly means INNER JOIN

SELECT title, COUNT(title) AS copies_at_store1 FROM inventory
INNER JOIN film ON inventory.film_id = film.film_id
WHERE store_id = 1
GROUP BY title
ORDER BY title;

SELECT film.title, name movie_language FROM film # AS could be omitted to rename
JOIN language AS lan ON lan.language_id = film.language_id; # Table name can be also renamed

# OUTER JOIN example
SELECT film.film_id, film.title, inventory.inventory_id
FROM film
LEFT OUTER JOIN inventory ON inventory.film_id = film.film_id;

SELECT film.film_id, film.title, inventory.inventory_id
FROM film
LEFT JOIN inventory ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL;




# SECTION: 9 [See documentation for more functions]



 
# Timestamps and Extract example
SELECT SUM(amount) AS total, extract(month from payment_date) AS month FROM payment
GROUP BY month
ORDER BY SUM(amount) DESC;

# Mathematical Functions example
SELECT customer_id + rental_id AS new_id
FROM payment;

# String Functions example
SELECT first_name || ' ' || last_name AS full_name
FROM customer;

SELECT first_name, char_length(first_name)
FROM customer;

SELECT upper(first_name)
FROM customer;

# SubQuery example
SELECT film_id, title, rental_rate
FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);

SELECT film_id, title FROM film
WHERE film_id IN
(SELECT inventory.film_id 
FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-31');

# Self-Join example
SELECT a.customer_id, a.first_name, a.last_name, b.customer_id, b.first_name, b.last_name
FROM customer AS a, customer AS b
WHERE a.first_name = b.last_name;




# SECTION: 10 Assessment Test 2




# 1. How can you retrieve all the information from the cd.facilities table?
SELECT * FROM cd.facilities;


# 2. You want to print out a list of all of the facilities and their cost to members. 
#How would you retrieve a list of only facility names and costs?
SELECT name, membercost FROM cd.facilities;

# 3. How can you produce a list of facilities that charge a fee to members?
SELECT name FROM cd.facilities
WHERE membercost > 0;

# 4. How can you produce a list of facilities that charge a fee to members, 
# and that fee is less than 1/50th of the monthly maintenance cost? Return the facid, 
# facility name, member cost, and monthly maintenance of the facilities in question.
SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE membercost > 0 AND membercost < monthlymaintenance / 50;

# 5. How can you produce a list of all facilities with the word 'Tennis' in their name?
SELECT name FROM cd.facilities
WHERE name LIKE '%Tennis%';

# 6. How can you retrieve the details of facilities with ID 1 and 5? Try to do it without using the OR operator.
SELECT * FROM cd.facilities
WHERE facid IN (1,5);

# 7. How can you produce a list of members who joined after the start of September 2012? 
# Return the memid, surname, firstname, and joindate of the members in question. 
SELECT memid, surname, firstname, joindate FROM cd.members
WHERE joindate >= '2012-09-01';

# 8. How can you produce an ordered list of the first 10 surnames in the members table? 
# The list must not contain duplicates.

SELECT DISTINCT surname FROM cd.members
ORDER BY surname
LIMIT 10;

# 9. You'd like to get the signup date of your last member. How can you retrieve this information?
SELECT MAX(joindate) FROM cd.members;

# 10. Produce a count of the number of facilities that have a cost to guests of 10 or more.
SELECT COUNT(*) FROM cd.facilities
WHERE guestcost >= 10;

# 11. Skip this one, no question for #11.

# 12. Produce a list of the total number of slots booked per facility in the month of September 2012.
# Produce an output table consisting of facility id and slots, sorted by the number of slots.
SELECT facid, SUM(slots) AS total_slots_in_september FROM cd.bookings
WHERE starttime BETWEEN '2012-09-01' AND '2012-10-01'
GROUP BY facid
ORDER BY SUM(slots) DESC;

# 13. Produce a list of facilities with more than 1000 slots booked.
# Produce an output table consisting of facility id and total slots, sorted by facility id.
SELECT facid, SUM(slots) AS total_slots FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY facid;

# 14. How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'?
# Return a list of start time and facility name pairings, ordered by the time.
SELECT cd.bookings.starttime, cd.bookings.facid, cd.facilities.name
FROM cd.bookings
INNER JOIN cd.facilities ON cd.bookings.facid = cd.facilities.facid
WHERE name LIKE 'Tennis Court%' AND (starttime BETWEEN '2012-09-21' AND '2012-09-22')
ORDER BY starttime;

# 15. How can you produce a list of the start times for bookings by members named 'David Farrell'?
SELECT cd.bookings.starttime, cd.members.firstname || ' ' || cd.members.surname AS full_name
FROM cd.bookings
INNER JOIN cd.members ON cd.members.memid = cd.bookings.memid
WHERE cd.members.firstname || ' ' || cd.members.surname = 'David Farrell';

# To use alias for full_name, use the following subquary because SELECT including alias is applied after WHERE clause

SELECT * FROM
(
SELECT cd.bookings.starttime, cd.members.firstname || ' ' || cd.members.surname AS full_name
FROM cd.bookings
INNER JOIN cd.members ON cd.members.memid = cd.bookings.memid
) AS innerTable
WHERE full_name = 'David Farrell';




# SECTION: 11




# CREATE TABLE example
CREATE TABLE account(
user_id serial PRIMARY KEY,
username VARCHAR(50) UNIQUE NOT NULL,
password VARCHAR(50) NOT NULL,
email VARCHAR(355) UNIQUE NOT NULL,
created_on TIMESTAMP NOT NULL,
last_login TIMESTAMP);

CREATE TABLE role(
role_id serial PRIMARY KEY,
role_name VARCHAR(255) UNIQUE NOT NULL);

CREATE TABLE account_role(
 user_id integer NOT NULL,
 role_id integer NOT NULL,
 grant_date timestamp without time zone,
 PRIMARY KEY (user_id, role_id),
	
 CONSTRAINT account_role_role_id_fkey FOREIGN KEY (role_id)
 		REFERENCES role (role_id) MATCH SIMPLE
 		ON UPDATE NO ACTION ON DELETE NO ACTION,
 CONSTRAINT account_role_user_id_fkey FOREIGN KEY (user_id)
 		REFERENCES account (user_id) MATCH SIMPLE 
		ON UPDATE NO ACTION ON DELETE NO ACTION
);

# CREATE TABLE Challenge
CREATE TABLE customer(
customer_id serial PRIMARY KEY NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
signup_date TIMESTAMP NOT NULL,
time_spent integer NOT NULL
);

# INSERT INTO example
CREATE TABLE link(
ID serial PRIMARY KEY,
url VARCHAR(255) NOT NULL,
name VARCHAR(255) NOT NULL,
description VARCHAR(255),
rel VARCHAR(50)
);

INSERT INTO link(url, name)
VALUES
('www.google.com','Google');

INSERT INTO link(url, name)
VALUES
('www.yahoo.com','Yahoo');

# inserting multiple rows
INSERT INTO link(url,name)
VALUES
('www.bing.com','Bing'),
('www.amazon.com','Amazon');

# creating a new table with the same schema
CREATE TABLE link_copy (LIKE link);

# inserting data from an existing table
INSERT INTO link_copy
SELECT * FROM link
WHERE name = 'Bing';

# UPDATE example
UPDATE link
SET description = 'Empty Description';

UPDATE link
SET description = 'Name starts with an A'
WHERE name LIKE 'A%';

UPDATE link
SET description = name;

# RETURNING example with UPDATE
UPDATE link
SET description = 'New description'
WHERE id = 1
RETURNING id, url, name, description;

# DELETE example

DELETE FROM link
WHERE name = 'B';

# ALTER example
CREATE TABLE link(
link_id serial PRIMARY KEY,
title VARCHAR(512) NOT NULL,
url VARCHAR(1024) NOT NULL UNIQUE);

ALTER TABLE link ADD COLUMN active boolean;

ALTER TABLE link DROP COLUMN active;

ALTER TABLE link RENAME COLUMN title TO new_title_name;

ALTER TABLE link RENAME TO url_table;

# DROP example

DROP TABLE IF EXISTS link;

DROP TABLE link RESTRICT # Refuse to drop the table if any objects depend on it. This is the default.

# CHECK Constraint example

CREATE TABLE new_users(
id serial PRIMARY KEY,
first_name VARCHAR(50),
birth_date DATE CHECK(birth_date > '1900-01-01'),
join_date DATE CHECK(join_date > birth_date),
salary integer CHECK(salary>0));

CREATE TABLE checktest(
sales integer CONSTRAINT positive_sales CHECK(sales>0)); # Can manually name the CONSTRAINT name

# NOT NULL Constraint example
CREATE TABLE learn_null(
first_name VARCHAR(50),
sales integer NOT NULL);

# UNIQUE Constraint example
CREATE TABLE people(
id serial PRIMARY KEY,
first_name VARCHAR(50),
email VARCHAR(100) UNIQUE);

# VIEW example
CREATE VIEW customer_info AS
SELECT first_name, last_name, email, address, phone
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;

ALTER VIEW customer_info RENAME TO customer_master_list;

DROP VIEW customer_master_list;




# SECTION: 12 Assessment Test 3




CREATE TABLE teachers(
teacher_id serial PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
homeroom_number integer NOT NULL,
department VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE,
phone VARCHAR(50) UNIQUE
);

CREATE TABLE students(
student_id serial PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
homeroom_number integer NOT NULL,
graduation_year VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE,
phone VARCHAR(50) UNIQUE
);

INSERT INTO students(first_name, last_name, phone, graduation_year, homeroom_number)
VALUES ('Mark','Watney','777-555-1234','2035',5);

INSERT INTO teachers(first_name, last_name, department, phone, email, homeroom_number)
VALUES ('Jonas','Salk', 'Biology','777-555-1234','jsalk@school.org',5);
