# Include Sinatra and ActiveRecord functionality.
require "bundler"
Bundler.require

require_relative "helpers/helpers"

require_relative "controllers/posts.rb"
require_relative "controllers/tags.rb"
require_relative "controllers/authors.rb"
require_relative "controllers/comments.rb"
require_relative "models/post.rb"
require_relative "models/tag.rb"
require_relative "models/author.rb"
require_relative "models/comment.rb"

# 1. Establish a connection to the specific database we're using.
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :username => 'franklinwahl', # Change the username to yours.
  :password => '',
  :database => 'blog', # Make sure your new DB name matches.
  :encoding => 'utf8'
)

get "/" do 
  @posts = Post.order("post_time DESC")
	erb :index
end


post "/search" do 
  @posts = []
  @posts << Author.where(:name => params[:search_text]).map { |author| author.posts }
  @posts << Tag.where(:name => params[:search_text]).map { |tag| tag.posts }
  
  @posts.flatten!
  erb :index
end
