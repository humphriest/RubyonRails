class Book < ActiveRecord::Base
	belongs_to :genre
	has_many :reviews, dependent: :destroy
	
	validates :title, :release_date, presence: true
	
	def average_rating
		comments.average(:rating)
	end
	
	def self.search(search)
		where("title LIKE?", "%#{query}%")
		where("author LIKE?", "%#{query}%")
	
	
end

