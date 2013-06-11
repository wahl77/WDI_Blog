get "/author/add" do
  erb :"/authors/add"
end

post "/author/add" do
  author = Author.new(params[:author])
  if author.save
    redirect "/"
  else 
    erb :"/author/add"
  end
end