require_relative "../config"

class CreateArticlesQuotes <ActiveRecord::Migration 
	def up 
		create_table :articles_quotes, id: false do |t|
			t.integer(:article_id)
			t.integer(:quote_id)
			
		end
	

		
	end
	def down
		
		drop_table :articles_quotes
	end 
end

CreateArticlesQuotes.migrate(ARGV[0])