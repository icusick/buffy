module App

  class Server < Sinatra::Base
   
   get "/" do 
   	erb :index
   end 

   # get "/categories/:id/articles" do
   # 	id = params[:id]
   # 	# @category = Category.find(id)
   # 	@article = Article.where(:category_id => id)
   # 	erb :list
   # end
   
   get "/articles" do
   	@articles = Article.all
   	erb :list
   end
   
   get "/episodes" do
   	# find everything in article table with a category of one and print the title
   	# @path = "articles"
   	@articles = Article.where(:category_id => 1)
   	erb :list
   end

   get "/articles/new" do
   	erb :new
   end

   # maybe it would be better to have four different "new" erbs so that when you went to the new form there wouldn't be all these sections that you aren't going to fill out. right now i have just the one to cut down on the list of gets and posts
   
   post "/articles" do 
   	Article.create({title: params["title"], bio: params["bio"], antagonist: params["antagonist"], special_powers: params["special_powers"], minions: params["minions"], buffy_quarrel: params["buffy_quarrel"], demise: params["demise"], category_id: params["category_id"]})
   	redirect to "/"
   end
   
   get "/articles/:id" do
   	# print out the title of an episode(which is the title of the article) and then everything from the subtopics table whose article_id corresponds to the article
   	id = params[:id]
   	
   	@article = Article.find(id)
   	# @subtopics = Subtopic.where[:article_id = :id]
   	erb :details
   end

   get "/characters" do
   	# @path = "characters"
   	@articles = Article.where(:category_id => 2)
   	erb :list
   end

   
   
   # get "/characters/:id" do
   # 	id = params[:id]
  	# @article = Article.find(id)
   # 	erb :details
   # end

   get "/demons" do 
   	# @path= "demons"
   	@articles = Article.where(:category_id => 3)
   	erb :list
   end

   # get "/demons/:id" do
   # 	id = params[:id]
   # 	@article = Article.find(id)
   # 	erb :details
   # end

   get "/apocolypses" do 
   	# @path = "apocolypses"
   	@articles = Article.where(:category_id => 4)
   	erb :list
   end 

   # get "/apocolypses/:id" do
   # 	id = params[:id]
   # 	@article = Article.find(id)
   # 	erb :details
   # end
  



  end
end