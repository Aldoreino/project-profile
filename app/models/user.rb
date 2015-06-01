class User < ActiveRecord::Base
	has_many :profiles
	validates :name, presence: true
	validates :password, presence: true #throws errors
	has_secure_password
end
