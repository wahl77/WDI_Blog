post "/comment/add" do
  comment = Comment.new(params[:comment].merge(:comment_time => Time.now()))
  if comment.save
    redirect "/post/view/#{params[:comment][:post_id]}"
  else
    redirect "/"
  end
end