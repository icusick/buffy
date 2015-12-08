require_relative "../config"

class CreateUsers <ActiveRecord::Migration 
	def up 
		create_table :articles do |t|
			t.string(:title)
			t.datetime(:create_date)
			t.datetime(:update_date)
			t.string(:plot)
			t.string(:bio)
			t.string(:antagonist)
			t.string(:special_powers)
			t.string(:minions)
			t.string(:buffy_quarrel)
			t.string(:demise)
			t.integer(:category_id)
		end
	

		
	end
	def down
		puts "undo"
		drop_table :articles
	end 
end

CreateUsers.migrate(:up)



