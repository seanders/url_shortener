get '/' do
  # let user create new short URL, display a list of shortened URLs
  @all_the_urls = Url.all
  erb :index
end

post '/urls' do
  # create a new Url
  @new_url = Url.create({long: params[:new_url]}) 
  @new_url.valid?
  if @new_url.errors[:long].any?
    @new_url = false
    @all_the_urls = Url.all
    erb :index
  else
    redirect to('/')
  end
end

# e.g., /q6bda
get '/:short_url' do
  # redirect to appropriate "long" URL
  the_url_object = Url.where(short: params[:short_url]).first
  the_url_object.update_attribute(:click_count, the_url_object.click_count.to_i + 1)
  the_url_object.save
  redirect to(the_url_object.long)
end