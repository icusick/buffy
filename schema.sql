CREATE TABLE users (
	id INTEGER PRIMARY KEY,
	name VARCHAR
);

CREATE TABLE users (
	id INTEGER PRIMARY KEY, 
	name VARCHAR 

)
CREATE TABLE epidodes (
	id INTEGER PRIMARY KEY, 
	name VARCHAR,
	plot VARCHAR,
	small_bad VARCHAR, #or demon_id?
	season_id INTEGER REFERENCES seasons(id);
	apocolypse_id INTEGER REFERENCES apocolypses(id)
);

CREATE TABLE seasons (
	id INTEGER PRIMARY KEY,
	overview VARCHAR,
	big_bad VARCHAR
);

CREATE TABLE characters (
	id INTEGER PRIMARY KEY,
	name VARCHAR,
	bio VARCHAR,
	buffy_relation VARCHAR,
	is_dead VARCHAR
);

CREATE TABLE demons ( #join with episodes, also with seasons- do in one table?
	id INTEGER PRIMARY KEY,
	overview VARCHAR,
	buffy_quarrel VARCHAR,
	quirks VARCHAR,
	minions VARCHAR,
	origin VARCHAR,
	quotes VARCHAR, #need?
	is_dead VARCHAR, #need?
	death VARCHAR
);

CREATE TABLE apocolypses ( #join with season? 
	id INTEGER PRIMARY KEY,
	overview VARCHAR 

);

CREATE TABLE deaths ( #join with characters, join with demons
	id INTEGER PRIMARY KEY,
	explaination VARCHAR,
	episode_id INTEGER PRIMARY KEY,
	season_id INTEGER PRIMARY KEY
);

CREATE TABLE randomShit ( #join with characters, demons, episodes
	id INTEGER PRIMARY KEY,
	name VARCHAR
);







