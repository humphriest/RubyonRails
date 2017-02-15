class Review < ActiveRecord::Base
	belongs_to :book
	belongs_to :user
	
	def average_rating
		comments.average(:rating)
	end
	
end
