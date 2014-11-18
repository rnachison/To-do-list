class Item < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }

	belongs_to :list
end