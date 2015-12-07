require_relative "config"

Category.destroy_all();
Article.destroy_all();
Quote.destroy_all();

fill_categories = [
	{title: "Episodes"},
	{title: "Characters"},
	{title: "Demons"},
	{title: "Apocolypses"}
]

fill_articles = [
	{title: "Welcome to the Hellmouth Part 1", plot: "Buffy has her first day of school at Sunnydale high, makes new friends, kills some vampires, hears a rumor about someone called the Master. Episode ends with Buffy getting choked in a coffin.", antagonist: "Luke", category_id: 1},
	{title: "Welcome to the Hellmouth Part 2", plot: "Buffy defeats Luke, meets the master, does not save that tool Jesse, bonds with new friends Willow and Xander.", antagonist: "Luke and the Master", category_id: 1},
	{title: "Witch", plot: "Buffy's friend Amy is subjected to a body swap by her coniving witch of a mother who's trying to relive her cheerleading glory days", antagonist: "Amy's Mom", category_id: 1},
	{title: "Teachers Pet", plot: "The substitute bio teacher turns out to be a big praying mantis", antagonist: "bio substitute", category_id: 1},
	{title: "Never Kill A Boy On The First Date", plot: "Buffy goes on a date with Owen, brooding, Dickensen-toting oaf", antagonist: "this big burly vampire they think might be the 'anointed one'", category_id: 1},
	{title: "The Pack", plot: "Xander and some mean kids get turned into hyenas and eat the principal.", antagonist: "guy at the zoo who works the hyena mojo", category_id: 1},
	{title: "Angel", plot: "Buffy makes out with Angel and finds out he's a vampire.", antagonist: "The Three: a group of vampire mercenaries hired by the Master to take out Buffy.", category_id: 1},
	{title: "I Robot...You, Jane", plot: "Willow meets a guy in a chatroom who turns out to be an internet-demon", antagonist: "Moloch the Corrupter", category_id: 1},
	{title: "Out of Mind, Out of Sight", category_id: 1},
	{title: "Prophecy Girl", category_id: 1},
	{title: "School Hard", category_id: 1},
	{title: "Anya", bio: "Former vengenance demon. Gets marooned in Sunnydale as a human teenage girl after she loses her powersource. Eventually starts dating Xander. Best character.", category_id: 2},
	{title: "Buffy", bio: "Slayer", special_powers: "Super-strength", category_id: 2}, 
	{title: "Willow", bio: "Buffy's best friend and most powerful ally. Former nerd. Current witch.", special_powers: "Witch", category_id: 2}, 
	{title: "Xander", bio: "Buffy's second best friend. Lease powerful ally.", special_powers: "Occasionally pretty funny. Always a dick. Really likes boobs.", category_id: 2},
	{title: "Giles", bio: "Buffy's watcher.", special_powers: "Book guy. Knows everything about mystical shit.", category_id: 2}, 
	{title: "Dawn", bio: "Buffy's fake little sister. Some magic monks "},
	{title: "Angel", bio: "Vampire cursed by gypsies with a soul so that he could feel the guilt from centuries of inflicting torture. After a few decades of eating rats in an alley-way, crippled by guilt and covered in his own filth, he get his act together to embark on a journey of redemption. In so doing he meets the Slayer, Buffy, they fall in love, and when they finally do it he loses his soul, tries to end the world, fails, and gets sucked into hell (see 'Acathla' in the Apocolypses category). Apparently there was a loophole in the soul-curse which mandated that if Angel were to experience one moment of true happiness, he would lose his soul again. Sex with Buffy = pure happiness.", category_id: 2},
	{title: "Principal Schneider", bio: "Buffy's principal. Has it out for her.", category_id: 2},
	{title: "Spike", bio: "Nickname: William the Bloody. Super bad-ass vampire. Hilarious, attractive despite his diminutive size and platinum blonde hair. Appears for the first time in Season 2 as the big bad but that role is taken by Angel after he loses his soul. Winds up being a grudging ally of Buffy to thwart Angel's proposterous plans to end the world.", category_id: 2},
	{title: "The Gentemen", bio: "Group of demons who travel from town to town to collect hearts. They steal the voices from the entire town so their victims can't scream. They need seven hearts before they can move on.", special_powers: "They float around and get their straight-jacketed minions to do their dirty work.", minions: "Straight-jacketed guys.", category_id: 3},
	{title: "Clem", bio: "Loose-skinned demon. Friend of Buffy's, eats kittens.", special_powers: "None", category_id: 3},
	{title: "Acathla", plot: "A demon sent earth to suck the world into hell. A noble knight froze him. A worthy so and so can open him with his blodd black blah blah", category_id: 4}
]

q1 = {content: "mmm'shastic. like 'mmmm cookies'"} 
q2 = {content: "can i trade in the children for more money?"} 
q3 = {content: "the last time i tortured someone they did't even have chainsaws"}
q4 =  {content: "some principals want you to think of them as your pals. i'd like you to think of me as your judge jury and executioner."}
q5 = {content: "Giles, care? I'm putting my life on the line battling the 
undead. Look, I broke a nail, okay? I'm wearing a press-on. The least 
you could do is exhibit some casual interest. You could go, 'hmm'."}  
q6 = {content: "I fed off a flower person and spent the next six hours looking at my hand."}
q7 = {content: "men are evil and i have nothing contempt for the whole libidinous lot of them."}



Category.create(fill_categories)
Article.create(fill_articles)
q11 = Quote.create(q1)
q22 = Quote.create(q2)
q33 = Quote.create(q3)
q44 = Quote.create(q4)
q55 = Quote.create(q5)
q66 = Quote.create(q6)
q77 = Quote.create(q7)
a1 = Article.find(15)
a1.quotes.push(q11)
a1.quotes.push(q77)
a2 = Article.find(11)
a2.quotes.push(q22)
a3 = Article.find(16)
a3.quotes.push(q33)
a4 = Article.find(17)
a5 = Article.find(10)
a4.quotes.push(q44)
a5.quotes.push(q44)
a6 = Article.find(12)
a6.quotes.push(q55)
a7 = Article.find(18)
a7.quotes.push(q66)



# maceda 
# the queller
# lohesh
# separvra demon 


# https://www.youtube.com/watch?v=I-8DIjgIpfI out for a walk wbith



