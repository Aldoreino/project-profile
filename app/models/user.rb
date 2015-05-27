class User < ActiveRecord::Base
	has_many :profiles
	validates :name, presence: true
end
