module App

  class Server < Sinatra::Base
   
   get "/" do 
   	erb :index
   end 

   get "/episodes" do
   	# find everything in article table with a category of one and print the title
   	@episodes = Article.where(:category_id => 1)
   	erb :episodes
   end

   get "/episodes/:id" do
   	# print out the title of an episode(which is the title of the article) and then everything from the subtopics table whose article_id corresponds to the article
   	params[:id]
   	@articles = Article.find[params[:id]]
   	# @subtopics = Subtopic.where[:article_id = :id]
   	erb :episodes_details
   end

   # get "/characters" do
   # 	#find everything in article table with a category of two and print the title
   # end

   # get "/Demons" do
   # 	#find everything in article table with a category of three and print the title
   # end
  
   # get "Apocolypses" do 
   # 	# find everything 
   # end 
  end



end