get "/tag/add" do 
  erb :"/tags/add"
end

post "/tag/add" do
  tag = Tag.new(params[:tag])
  if tag.save
    redirect "/"
  else
    erb :"/tag/add"
  end
end
