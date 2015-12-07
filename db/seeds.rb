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
	{title: "Prophecy Girl", category_id: 1},
	{title: "Buffy", bio: "Slayer", special_powers: "Super-strength", category_id: 2}, 
	{title: "Willow", bio: "Buffy's best friend and most powerful ally. Former nerd. Current witch.", special_powers: "Witch", category_id: 2}, 
	{title: "Xander", bio: "Buffy's second best friend. Lease powerful ally.", special_powers: "Occasionally pretty funny. Always a dick. Really likes boobs.", category_id: 2},
	{title: "Giles", bio: "Buffy's watcher.", special_powers: "Book guy. Knows everything about mystical shit.", category_id: 2}, 
	{title: "The Gentemen", bio: "Group of demons who travel from town to town to collect hearts. They steal the voices from the entire town so their victims can't scream. They need seven hearts before they can move on.", special_powers: "They float around and get their straight-jacketed minions to do their dirty work.", minions: "Straight-jacketed guys.", category_id: 3},
	{title: "Clem", bio: "Loose-skinned demon. Friend of Buffy's, eats kittens.", special_powers: "None", category_id: 3},
	{title: "Acathla", plot: "A demon sent earth to suck the world into hell. A noble knight froze him. A worthy so and so can open him with his blodd black blah blah", category_id: 4}
]

# fill_quotes = [
# 	{content: "mmmm cookies"; article id (dawn) }, 
# 	{ content: "don't show me beautiful things i can't have"}, 
# 	{"the last time i tortured someone they did't even have chainsaws"},  {content: "some principals want you to think of them as your pals. i'd like you to think of me as your judge jury and executioner." }
# 	{content: "Giles, care? I'm putting my life on the line battling the 
# undead. Look, I broke a nail, okay? I'm wearing a press-on. The least 
# you could do is exhibit some casual interest. You could go, 'hmm'.", article_id: 11 },  
# 	{content: "i fed off a flower person and spent the next six hours looking at my hand"}
# ]

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

# maceda 
# the queller
# lohesh
# separvra demon 


# https://www.youtube.com/watch?v=I-8DIjgIpfI out for a walk wbith



