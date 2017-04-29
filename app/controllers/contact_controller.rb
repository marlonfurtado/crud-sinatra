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

# Update
get '/contact/:id/update' do
  @user = User.find(params[:id])
  @title = "Update | Contact list"
  @header = erb :header

  erb :update_contact
end

# Update
post '/contact/:id/update' do
  User.update(params[:id], params[:contact])

  redirect "/contact/#{params[:id]}"
end

# Delete
post '/contact/:id/delete' do
  @user = User.find(params[:id])
  @user.destroy

  redirect '/'
end
