CREATE TABLE goodreads (
	book_id INT Primary Key,
	title TEXT,
	authors TEXT,
	avg_rating DECIMAL,
	language_code VARCHAR(10),
	ratings_count INT,
	text_reviews_count INT
);

ALTER TABLE goodreads 
DROP COLUMN authors;

ALTER TABLE goodreads
ADD COLUMN authors VARCHAR(250);

DROP TABLE goodreads;



CREATE TABLE all_books (
	book_id INT Primary Key,
	author TEXT,
	rating varchar (40),
	no_of_reviews INT,
	title TEXT );
	
drop table all_books;

select * from all_books



