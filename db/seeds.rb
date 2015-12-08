require_relative "config"

Category.destroy_all();
Article.destroy_all();
Quote.destroy_all();
User.destroy_all();


fill_categories = [
	{title: "Episodes"},
	{title: "Characters"},
	{title: "Demons"},
	{title: "Apocolypses"}
]

fill_articles = [
	{title: "Welcome to the Hellmouth Part 1", create_date: DateTime.now, plot: "Buffy has her first day of school at Sunnydale high, makes new friends, kills some vampires, hears a rumor about someone called the Master. Episode ends with Buffy getting choked in a coffin.", antagonist: "Luke", category_id: 1},
	{title: "Welcome to the Hellmouth Part 2", create_date: DateTime.now, plot: "Buffy defeats Luke, meets the master, does not save that tool Jesse, bonds with new friends Willow and Xander.", antagonist: "Luke and the Master", category_id: 1},
	{title: "Witch", create_date: DateTime.now, plot: "Buffy's friend Amy is subjected to a body swap by her coniving witch of a mother who's trying to relive her cheerleading glory days", antagonist: "Amy's Mom", category_id: 1},
	{title: "Teachers Pet", create_date: DateTime.now, plot: "The substitute bio teacher turns out to be a big praying mantis", antagonist: "bio substitute", category_id: 1},
	{title: "Never Kill A Boy On The First Date", create_date: DateTime.now, plot: "Buffy goes on a date with Owen, brooding, Dickensen-toting oaf", antagonist: "this big burly vampire they think might be the 'anointed one'", category_id: 1},
	{title: "The Pack", create_date: DateTime.now, plot: "Xander and some mean kids get turned into hyenas and eat the principal.", antagonist: "guy at the zoo who works the hyena mojo", category_id: 1},
	{title: "Angel", create_date: DateTime.now, plot: "Buffy makes out with Angel and finds out he's a vampire.", antagonist: "The Three: a group of vampire mercenaries hired by the Master to take out Buffy.", category_id: 1},
	{title: "I Robot...You, Jane", create_date: DateTime.now, plot: "Willow meets a guy in a chatroom who turns out to be an internet-demon", antagonist: "Moloch the Corrupter", category_id: 1},
	{title: "Out of Mind, Out of Sight", create_date: DateTime.now, plot: "girl becomes invisible after being ignored by her teachers and classmates. on the hellmouth, fears become reality.", antagonist: "georgia, the invisible girl, but also everyone, kind of, for driving her to this point.", category_id: 1},
	{title: "Prophecy Girl", create_date: DateTime.now, plot: "Buffy fights the master, dying in the process, and then, in usual buffy-form, flips the prophecy on its head, comes back to life, defeats the master, activates a SECOND slayer, an unprecedented occurrance in slayer history.", antagonist: "the Master", category_id: 1},
	{title: "School Hard", create_date: DateTime.now, plot: "Spike comes to town. All you need to know.", antagonist: "Spike", category_id: 1},
	{title: "Anya", create_date: DateTime.now, bio: "Former vengenance demon. Gets marooned in Sunnydale as a human teenage girl after she loses her powersource. Eventually starts dating Xander. Best character.", special_powers: "Hilarity. She also used to wield the power of the Wish but that was before she became immportal.", category_id: 2},
	{title: "Buffy", create_date: DateTime.now, bio: "Slayer", special_powers: "Super-strength", category_id: 2}, 
	{title: "Willow", create_date: DateTime.now, bio: "Buffy's best friend and most powerful ally. Former nerd. Current witch.", special_powers: "Witch", category_id: 2}, 
	{title: "Xander", create_date: DateTime.now, bio: "Buffy's second best friend. Lease powerful ally.", special_powers: "Occasionally pretty funny. Always a dick. Really likes boobs.", category_id: 2},
	{title: "Giles", create_date: DateTime.now, bio: "Buffy's watcher.", special_powers: "Book guy. Knows everything about mystical shit.", category_id: 2}, 
	{title: "Dawn", create_date: DateTime.now, bio: "Buffy's fake little sister. There was this ball of energy called the 'key' which had to be hidden from this hell god who, trapped on earth in a mortal body, wanted to use it to open the doors between the dimensions so she could get home. Some magic monks who didn't want to let untold hell to be released on earth transformed the key into a little girl and gave her to the Slayer as a little sister who she would give her life to protect (they gave the Slayer and her friends fake memories so they'd think Dawn had been around the whole time. Buffy figured it out, of course.) Dawn ranks among the worst characters, right up there with Riley who is an abomination. He doesn't even get a page. He doesn't deserve it.", special_powers: "Being fucking annoying.", category_id: 2},
	{title: "Angel", create_date: DateTime.now, bio: "Vampire cursed by gypsies with a soul so that he could feel the guilt from centuries of inflicting torture. After a few decades of eating rats in an alley-way, crippled by guilt and covered in his own filth, he get his act together to embark on a journey of redemption. In so doing he meets the Slayer, Buffy, they fall in love, and when they finally do it he loses his soul, tries to end the world, fails, and gets sucked into hell (see 'Acathla' in the Apocolypses category). Apparently there was a loophole in the soul-curse which mandated that if Angel were to experience one moment of true happiness, he would lose his soul again. Sex with Buffy = pure happiness.", special_powers: "He's a pretty badass fighter and he loves Buffy forever. Although, he's really kind of annoying and his face looks like it was carved out of a potatoe.", category_id: 2},
	{title: "Principal Schneider", create_date: DateTime.now, bio: "Buffy's principal. Has it out for her.", special_powers: "None.", category_id: 2},
	{title: "Spike", create_date: DateTime.now, bio: "Nickname: William the Bloody. Super bad-ass vampire. Hilarious, attractive despite his diminutive size and platinum blonde hair. Appears for the first time in Season 2 as the big bad but that role is taken by Angel after he loses his soul. Winds up being a grudging ally of a grudging Buffy in her mission to thwart Angel's proposterous plans to end the world.", special_powers: "He's a vampire so he has the super-strength working for him. He's also a particularly vicious vampire. He's killed two Slayers in his time.", category_id: 2},
	{title: "The Gentemen", create_date: DateTime.now, bio: "Group of demons who travel from town to town to collect hearts. They steal the voices from the entire town so their victims can't scream. They need seven hearts before they can move on.", special_powers: "They float around and get their straight-jacketed minions to do their dirty work.", minions: "Straight-jacketed guys.", buffy_quarrel: "they want to cut out people's hearts", demise: "buffy crushes a box, as per the fairy tale, get her voice back and screams which for whatever reasons makes them explode", category_id: 3},
	{title: "Clem", create_date: DateTime.now, bio: "Loose-skinned demon. Friend of Buffy's, eats kittens.", special_powers: "None", buffy_quarrel: "None. They're pals.", demise: "still kickin", category_id: 3},
	{title: "Season 1", create_date: DateTime.now, plot: "This really old vampire, the Master, kills Buffy and, insodoing, is released from the subterranean prison he'd been mystically locked in for I'm not sure how long. She was only dead for a few seconds and when she comes back she kills him. It's a very low-key season considering the emotional rollercoasters that follow it.", antagonist: "The Master", category_id: 4},
	{title: "Season 2: Angelus and the Acathla", create_date: DateTime.now, plot: "Earlier in the season, Buffy and Angel had sex, causing him to lose his soul (see the Angel page for more details). Angelus- that's evil Angel's alias- has 'a real passion for destruction,' as Spike puts it. He wants to reawaken the demon Acathla, this demon who long ago had been sent to swallow the world into hell but was unsuccessful due to some virtuous knight. His plans are foiled by the unlikely duo Buffy and Spike, who didn't want to see the world get sucked into hell because he likes the world, particularly all the people in it that he gets to eat. Buffy doesn't make it in time to stop Angel before he opens the Acathla and the only way to close it is to kill Angel (you will find, with Buffy, that blood is always important), which is particularly difficult for her because, at the last minute, Willow's re-ensouling spell works, and Buffy has to kill the love of her life.", antagonist: "Angelus", category_id: 4}, 
	{title: "Season 3", create_date: DateTime.now, plot: "The mayor of Sunnydale plans an 'ascension', a ceremony in which he ascends into a demon in it's true form, i.e., he becomes a really big snake.", antagonist: "The Mayor", category_id: 4}, 
	{title: "Season 4", create_date: DateTime.now, plot: "The leader of a US military monster and demon hunting squad cooks up a fucking stupid plan to get a bunch of demons and humans to fight each other so she can use bits of their carcasses to build an army of demon-human hybrids. Unclear what the end goal was here. Maggie- that was her name, Maggie Walsh- builds her proto-soldier, a guy named Adam who, understandably, sticks his demon-pokey-cyborg-arm-thing through her heart after which he goes on a bit of a killing spree before deciding to follow through on her ludicrous plans. Buffy and the Scoobies have to call upon the first slayer for help defeating him.", antagonist: "Maddie Walsh and Adam", category_id: 4}, 
	{title: "Season 5", create_date: DateTime.now, plot: "This one is a doozy. Buffy and the gang are up against their biggest and baddest big-bad yet: Glory. Glory, otherwise known as Glorificus, or, alternatively, the Beast, is a god from a hell dimension from which she was cast out for being TOO bad. She is super strong, much stronger than Buffy, and she's fucking nuts as well. She has to eat human minds to stay sane, and when she's done with her victims they are off to the laughing-house. She's poking around Sunnydale because she knows Buffy has the key, though, fortunately, she doesn't know Dawn is the key. Eventually Glory gets her hands on Dawn and uses her to open the hell-gates, which involves bleeding her out on the top of this tower her victims-turned-acolytes built for the ceremony. The ritual isn't over until Dawn's done bleeding out. Buffy realizes that, because Dawn was made out of Buffy's own blood, it's up to Buffy to save Dawn. The moment she realizes this she gives Dawn a hug, turns around, and leaps to her death. She doesn't miss a beat. Just spins around and jumps. It's amazing. I'm crying just writing about it.", antagonist: "Glory", category_id: 4},
	{title: "Season 6", create_date: DateTime.now, plot: "The Scoobies bring Buffy back from the dead, at great danger to themselves and Buffy. They assume she'd been suffering infite pain in one of the many hell dimensions that populate the BuffyVerse, but as it turns out, she'd been in heaven. Not a Godly sort of heaven; just a place where she was without form, or time, or doubt- anything bad really. Now she's back and she's fucking miserable. Which is hard to watch but at least she finally has sex with Spike. Anyway, these three nerds from her High School, Warren, Jonathan, and Andrew, are basically bored so they decide to fuck with Buffy all season. It appears, at first, that they're shaping up to be a really lackluster big bad but then Warren shoots Buffy and accidentally kills Willow's girlfriend Tara. Willow, who's had trouble controlling herself around magic in the past, turns seriously darkside, FLAYS Warren, and then nearly destroys the entire world. So Dark Willow turned out to be kind of the big bad of season 6. Xander saves the world by getting in her way and reminding her of who she was. Which is really lame.", antagonist: "Warren and Willow depending on what kind of person you are.", category_id: 4},
	{title: "Season 7", create_date: DateTime.now, plot: "The First Evil has decided it's sick of being in harmony with goodness so it decides to end the world, first by killing all the potential slayers so that the slayer line would be ended, and second by opening up the Hellmouth and releasing this gigantic army of primordial vampires who are very hard to kill. Definitely not the best season- the potentials are very annoying and they, along with the Scoobies, pull some UNBELIEVABLE SHIT towards the end when they kick her out of her own fucking house because she made a mistake. Like she hasn't put her life on the line each and every one of them over and over again. Eventually they realize the error of her ways and let her back into her home just in time for her to come up with an awesome plan to defeat the unstoppable: she comes up with a spell to turn every potential slayer into an actual Slayer. Since the beginning of Slayer history there has only been one girl:, 'one girl in all the world, a chosen one. She alone will wield the strength and skill to fight the vampires, demons, and the forces of darkness; to stop the spread of their evil and the swell of their number. She is the Slayer.' In season 2 Buffy became the first Slayer to come back from the dead, thereby initiating a second slayer and upsetting the Slayer paradigm. In season 7, Buffy turns the entire Slayer mythology on its head. Thousands of years ago a couple of men decided the safety of the world would rest upon one girl...'Nay!', says Buffy. 'We decide our own fate.' (Not an actual quote.) It's awesome.", antagonist: "The First", category_id: 1}
	
]

q1 = {content: "mmm'shastic. like 'mmmm cookies"} 
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

u1 = User.create({name: "Isabel", password: "08cusicki"})

allAtOnceNow = Article.all()
allAtOnceNow.each do |article|
	article.users.push(u1)
end




# maceda 
# the queller
# lohesh
# separvra demon 


# https://www.youtube.com/watch?v=I-8DIjgIpfI out for a walk wbith



