get '/' do
  # let user create new short URL, display a list of shortened URLs
  @all_the_urls = Url.all
  erb :index
end

