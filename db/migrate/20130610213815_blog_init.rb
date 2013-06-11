class BlogInit < ActiveRecord::Migration
	def change
		create_table :posts do |t|
			t.string :title
			t.text :content 
			t.integer :author_id
			t.timestamp :post_time
		end

		create_table :tags do |t|
			t.string :name
		end

		create_table :authors do |t|
			t.string :name
		end
		
		create_table :comments do |t|
			t.integer :author_id
			t.integer :post_id
			t.text :content
		end
		
		create_table :posts_tags do |t|
		  t.integer :post_id
		  t.integer :tag_id
		end
		
	end
end
