module App

  class Server < Sinatra::Base
   
   get "/" do 
   	erb :index
   end 

   get "/episodes" do
   	# find everything in article table with a category of one and print the title
   	@path = "episodes"
   	@articles = Article.where(:category_id => 1)
   	erb :list
   end

   get "/episodes/:id" do
   	# print out the title of an episode(which is the title of the article) and then everything from the subtopics table whose article_id corresponds to the article
   	id = params[:id]
   	
   	@article = Article.find(id)
   	# @subtopics = Subtopic.where[:article_id = :id]
   	erb :episode_details
   end

   get "/characters" do
   	@path = "characters"
   	@articles = Article.where(:category_id => 2)
   	erb :list
   end

   get "/characters/:id" do
   	id = params[:id]
   
	@article = Article.find(id)
   	erb :character_details
   end

   get "/demons" do 
   	@articles = Article.where(:category_id => 3)
   	erb :list
   end

   get "/characters/:id" do
   	id = params[:id]
   	@article = Article.find(id)
   	erb :character_details
   end

   # get "/Demons" do
   # 	#find everything in article table with a category of three and print the title
   # end
  
   # get "Apocolypses" do 
   # 	# find everything 
   # end 
  end



end