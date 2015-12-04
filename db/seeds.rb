require_relative "config"

Category.destroy_all();
Article.destroy_all();

fill_categories = [
	{title: "Episodes"},
	{title: "Characters"},
	{title: "Demons"},
	{title: "Apocolypses"}
]

fill_articles = [
	{title: "Welcome to the Hellmouth Part 1", plot: "Buffy has her first day of school at Sunnydale high, makes new friends, kills some vampires, hears a rumor about someone called the Master. Episode ends with Buffy getting choked in a coffin.", antagonist: "Luke", category_id: 1},
	{title: "Welcome to the Hellmouth Part 2", category_id: 1},
	{title: "Witch", category_id: 1},
	{title: "Teachers Pet", category_id: 1},
	{title: "Never Kill A Boy On The First", category_id: 1},
	{title: "The Pack", category_id: 1},
	{title: "Angel", category_id: 1},
	{title: "I Robot...You, Jane", category_id: 1},
	{title: "Out of Mind, Out of Sight", category_id: 1},
	{title: "Prophecy Girl", category_id: 1}
]

# articles (
# 	id INTEGER PRIMARY KEY,
# 	title VARCHAR,
# 	create_date DATE,
# 	update_date DATE,
# 	plot VARCHAR,
# 	bio VARCHAR,
# 	antagonist VARCHAR,
# 	special_powers VARCHAR,
# 	buffy_quarrel VARCHAR,
# 	demise VARCHAR,
# 	category_id INTEGER REFERENCES categories(id) 
# );

# fill_subtopics = [
# 	# {title: "Overview", content: "Write a description", create_date: "1/15/90", update_date: "1/30/90", article_id: 1}, 
# 	{title: "Plot", content: "Buffy has her first day of school at Sunnydale high, makes new friends, kills some vampires, hears a rumor about someone called the Master. Episode ends with Buffy getting choked in a coffin.", create_date: "1/15/90", update_date: "1/30/90", article_id: 1},
# 	{title: "Antagonist", content: "Luke", create_date: "1/15/90", update_date: "1/30/90", article_id: 1},
# 	{title: "Quotes", content: "Xander: What's the sitch? What do you know about her? Jesse: New girl.Xander: Well, you're certainly a fount of nothing.", create_date: "1/15/90", update_date: "1/30/90", article_id: 1}
# ]	

Category.create(fill_categories)
Article.create(fill_articles)
# Subtopic.create(fill_subtopics)




