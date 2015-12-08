require_relative "../config"

class CreateUsers <ActiveRecord::Migration 
	def up 
		create_table :users do |t|
			t.string(:name)
			t.string(:password_digest)
		end
	

		
	end
	def down
		puts "undo"
		drop_table :users
	end 
end

CreateUsers.migrate(ARGV[0])

