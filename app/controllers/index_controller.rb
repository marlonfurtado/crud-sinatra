get '/' do
  @user = User.all
  @title = "Home | Contact list"
  @header = erb :header

  erb :index
end
