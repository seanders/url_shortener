get '/create_user' do
  erb :create_user
end

post '/create_user' do
  @new_user = User.create(params)
  @all_the_urls = Url.all
  erb :index
end

get '/user_page' do
  @the_user = User.find(session[:user_id])
  @user_urls = @the_user.urls
  puts @user_urls
  erb :user_page
end