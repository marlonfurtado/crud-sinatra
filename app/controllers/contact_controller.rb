get '/contact/:id' do
  @user = User.find(params[:id])
  @title = "Information | Contact list"
  @header = erb :header

  erb :contact
end
