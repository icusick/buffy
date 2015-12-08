require_relative "../config"

class CreateQuotes <ActiveRecord::Migration 
	def up 
		create_table :quotes do |t|
			t.string(:content)
			
		end
	

		
	end
	def down
		puts "undo"
		drop_table :quotes
	end 
end

CreateQuotes.migrate(ARGV[0])