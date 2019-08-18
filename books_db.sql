DROP TABLE goodreads;
CREATE TABLE goodreads (
	book_id INT Primary Key,
	title TEXT,
	authors TEXT,
	avg_rating DECIMAL,
	language_code VARCHAR(10),
	ratings_count INT,
	text_reviews_count INT
);

DROP TABLE amazon;
CREATE TABLE amazon (
	book_id INT Primary Key,
    title TEXT,
	authors TEXT,
	avg_rating DECIMAL,
	ratings_count INT
	);


SELECT * FROM amazon;

SELECT * FROM goodreads;



