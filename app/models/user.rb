class User < ActiveRecord::Base

	has_secure_password

	validates :email, uniqueness: true, length: { maximum: 255 }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
	validates :password, length: 6..20

	has_many :lists
end