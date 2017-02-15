class User < ActiveRecord::Base
	has_many :reviews, dependent: :destroy
	has_secure_password
	validates_uniqueness_of :email
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}

		SEX = %w(M F)
		validaters :sex, inclusion: {in:SEX}
end
