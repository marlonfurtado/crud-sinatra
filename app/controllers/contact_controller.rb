# Create
post '/contact' do
  @contact = User.create(params[:contact])

  redirect '/'
end

# Read
get '/contact/:id' do
  @user = User.find(params[:id])
  @title = "Information | Contact list"
  @header = erb :header

  erb :contact
end

# Delete
post '/contact/delete/:id' do
  @user = User.find(params[:id])
  @user.destroy

  redirect '/'
end
