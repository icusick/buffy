module App

  class Server < Sinatra::Base
   set :method_override, true
   enable :sessions
   $markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)

   get "/" do 
   	erb :index
   end 

   get "/login" do
   	erb :login
   end
 
   post "/sessions" do
      user = User.find_by({name: params[:name]}).try(:authenticate, params[:password])
      if user
        session[:user_id] = user.id
        redirect to "/"
      else
        redirect to "/login"
      end
    end
   
   get "/users" do 
   	@users = User.all
   	erb :users
   end
   
   get "/users/new" do 
   	erb :new_user
   end

   	post "/users" do
      @user = User.create({
    	name: params["name"],
    	password: params["password"],
    	password_confirmation: params["password_confirmation"]
    	})
      redirect to "/"
    end
   
   get "/articles" do
   	@user = User.find(session[:user_id]) if session[:user_id]
   	@articles = Article.all
   	erb :list
   end
   
   get "/episodes" do
 	@user = User.find(session[:user_id]) if session[:user_id]
   	@articles = Article.where(:category_id => 1)
   	erb :list
   end

   get "/articles/new" do
   	erb :new
   end

   # maybe it would be better to have four different "new" erbs so that when you went to the new form there wouldn't be all these sections that you aren't going to fill out. right now i have just the one to cut down on the list of gets and posts
   
   post "/articles" do 
   	newArticle = Article.create({title: params["title"], create_date: DateTime.now, plot: params["plot"], bio: params["bio"], antagonist: params["antagonist"], special_powers: params["special_powers"], minions: params["minions"], buffy_quarrel: params["buffy_quarrel"], demise: params["demise"], category_id: params["category_id"]})
   	newArticle.users.push(User.find(session[:user_id]))
   	redirect to "/"
   end
   
   get "/articles/:id" do
   	id = params[:id]
   	@article = Article.find(id)
   	
   	erb :details
   end

   get "/articles/:id/edit" do 
   	@article = Article.find(params[:id])
   	erb :edit
   end

   patch "/articles/:id" do 
    article = Article.find(params[:id])
    article.update({title: params["title"], update_date: DateTime.now, plot: params["plot"], bio: params["bio"], antagonist: params["antagonist"], special_powers: params["special_powers"], minions: params["minions"], buffy_quarrel: params["buffy_quarrel"], demise: params["demise"], category_id: params["category_id"]})
    article.users.push(User.find(session[:user_id]))
    redirect to "/"
   end
   
   get "/characters" do
   	@user = User.find(session[:user_id]) if session[:user_id]
   	@articles = Article.where(:category_id => 2)
   	erb :list
   end

   get "/demons" do 
  	@user = User.find(session[:user_id]) if session[:user_id]
   	@articles = Article.where(:category_id => 3)
   	erb :list
   end

   get "/apocolypses" do 
   	# @path = "apocolypses"
   	@user = User.find(session[:user_id]) if session[:user_id]
   	@articles = Article.where(:category_id => 4)
   	erb :list
   end 

 
  end
end