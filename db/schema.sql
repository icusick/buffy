DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS articles;
DROP TABLE IF EXISTS subtopics;
DROP TABLE IF EXISTS subtopics_users;

CREATE TABLE users (
	id INTEGER PRIMARY KEY,
	name VARCHAR
);

CREATE TABLE categories (
	id INTEGER PRIMARY KEY, 
	title VARCHAR, 
	create_date DATE
	-- update_date DATENOW
);

CREATE TABLE articles (
	id INTEGER PRIMARY KEY,
	title VARCHAR,
	create_date DATE,
	update_date DATE,
	plot VARCHAR,
	bio VARCHAR,
	antagonist VARCHAR,
	special_powers VARCHAR,
	buffy_quarrel VARCHAR,
	demise VARCHAR,
	category_id INTEGER REFERENCES categories(id) 
);

CREATE TABLE quotes (
	id INTEGER PRIMARY KEY,
	content VARCHAR,
	article_id INTEGER REFERENCES articles(id) 
);

CREATE TABLE articles_users (
	article_id REFERENCES subtopics(id),
	user_id REFERENCES users(id)
);



