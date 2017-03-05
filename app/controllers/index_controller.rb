get '/' do
  @add_user = User.create(name: 'Marlon',
                          lastname: 'Furtado',
                          phone: '519999999999')
  @user = User.all
  erb :index
end
