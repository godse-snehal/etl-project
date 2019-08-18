# etl-project
This project is done using Splinter, Beautiful Soup, Pandas and PostgresSQL


Goal: The goal of this project is to obtain data on books and save it into a database. We have extracted data from two major book              recommendation websites: Goodreads and Amazon. The data stored includes book title, authors, ratings, number of reviews and              language code. It can be used to analyze and compare the most reveiwed books and their ratings.


Extract: 

    Data has been extracted from 2 data sources in a form of CSV file from Kaggle and Web Scraping books from Amazon.com.
    Amazon.com has lot of data available but we only scraped required data as part of this project like book title, author, ratings and review count. Data is scraped from number of Amazon pages using click function on Next button of Splinter Browser. Ratings are extracted from the ratings text string using String split function.


Transform:
    
    We use Pandas to read, clean and transform the CSV file. Data cleaning is done by copying the required columns into a new dataframe,renaming the columns and setting the index as needed. Regular Expression is used to remove non-numeric data from the column. Performed null checks on books which did not have reviews/ratings while scraping Amazon webpages and is replaced with “N/A”. 

Load:

    The transformed data is loaded into RDBMS PostgresSQL. We chose relational database since the data we gathered is structured and has same columns. 

    books_db.sql

    CREATE DATABASE books_db;

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

