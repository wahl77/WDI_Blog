class Comment < ActiveRecord::Base
	belongs_to :author
	belongs_to :post

	validates :content, :presence => true
	validates :author, :presence => true
end
