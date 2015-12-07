require_relative "../config"

class CreateCategories <ActiveRecord::Migration 
	def up 
		create_table :categories do |t|
			t.string(:title)
			t.datetime(:create_date)
		end
	

		
	end
	def down
		puts "undo"
		drop_table :users
	end 
end

CreateUsers.migrate(:up)
