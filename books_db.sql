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



