class Article < ActiveRecord::Base
	belongs_to :category
	has_and_belongs_to_many :quotes
	has_and_belongs_to_many :users

end