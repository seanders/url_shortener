enable :sessions

post '/login' do
 @the_user = User.authenticate(params[:email], params[:password])
  if @the_user
    session[:user_id] = @the_user.id
    @user_urls = @the_user.urls
    erb :user_page
  else
    @all_the_urls = Url.all
    erb :index
  end
end

post '/logout' do
  p session[:user_id]
  session[:user_id] = nil
  p session[:user_id]
  @all_the_urls = Url.all
  erb :index
end