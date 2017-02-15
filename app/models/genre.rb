class Genre < ActiveRecord::Base
	has_many :books, dependent: :destroy
	
	validates :name, uniqueness: true
end
