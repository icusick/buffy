require_relative "../config"

class CreateArticlesUsers <ActiveRecord::Migration 
	def up 
		create_table :articles_users, id: false do |t|
			t.integer(:article_id)
			t.integer(:user_id)
			t.datetime(:created_at)
		end
	

		
	end
	def down
		
		drop_table :visits
	end 
end

CreateArticlesUsers.migrate(:up)