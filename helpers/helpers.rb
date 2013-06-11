helpers do
  def form_edit(name, value)
    erb(
      :"partials/form_edit",
      :layout => false,
      :locals => {:name => name, :value => value}
    )
  end
  
  
  def form_add(name, value)
    erb(
      :"partials/form_add",
      :layout => false,
      :locals => {:name => name, :value => value}
    )
  end
end
