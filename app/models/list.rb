class List < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }

	has_many :items
	belongs_to :user
end