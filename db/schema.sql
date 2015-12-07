DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS articles;
DROP TABLE IF EXISTS quotes;
DROP TABLE IF EXISTS articles_users;
DROP TABLE IF EXISTS articles_quotes;

CREATE TABLE users (
	id INTEGER PRIMARY KEY,
	password_digest VARCHAR,
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
	create_date DATETIME,
	update_date DATETIME,
	plot VARCHAR,
	bio VARCHAR,
	antagonist VARCHAR,
	special_powers VARCHAR,
	minions VARCHAR,
	buffy_quarrel VARCHAR,
	demise VARCHAR,
	category_id INTEGER REFERENCES categories(id) 
);

CREATE TABLE quotes (
	id INTEGER PRIMARY KEY,
	content VARCHAR
);

CREATE TABLE articles_quotes (
	article_id REFERENCES articles(id),
	quote_id REFERENCES quotes(id)
);

CREATE TABLE articles_users (
	article_id REFERENCES articles(id),
	user_id REFERENCES users(id)
);



