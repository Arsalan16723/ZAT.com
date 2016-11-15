class Post < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged 
	validates :title, presence: true
	validates :pcategory_id, presence: true
	validates :content, presence: true
	belongs_to :pcategory
end

