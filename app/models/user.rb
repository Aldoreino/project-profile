class User < ActiveRecord::Base
	has_many :profiles
	validates :name, presence: true
	validates :password, presence: true #throws errors
end
