class Post < ActiveRecord::Base
	belongs_to :author
	has_many :comments
	has_and_belongs_to_many :tags

	validates :author, :presence=>true
	validates :content, :presence=>true

	def get_tags
		self.tags.map{|tag| tag.name}.join(", ")
	end
end
