class Post < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged 

	belongs_to :category
	validates :title, presence: true
	validates :posts_category_id, presence: true
	validates :content, presence: true
end

