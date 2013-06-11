get "/post/add" do
  @authors = Author.all
  erb :"posts/add"
end

post "/post/add" do
  post = Post.new(params[:post].merge(:post_time => Time.now()))
  if post.save
    redirect "/"
  else
    erb :"posts/add"
  end 
end

get "/post/view/:id" do
  @post = Post.find(params[:id])
  @post.update_attributes(:num_views => @post.num_views+1)
  erb :"posts/view"
end
