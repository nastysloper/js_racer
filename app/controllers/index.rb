get '/' do
  # Look in app/views/index.erb
  erb :index, layout: false
end

post '/create' do

  @user = User.new(params[:user])
  @user.password = params[:password]
  @user.save!

end

post '/login' do
 @user = User.find_by_email(params[:email])
  if @user.password == params[:password]
    session[id] = @user.id
  else
    redirect '/'
  end
end

get '/start' do
  erb :game
end
