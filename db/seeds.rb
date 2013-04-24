require 'faker'


10.times do
  Url.create({
    long: Faker::Internet.url
  })
end
Url.create({long: 'http://www.google.com'})
Url.create({long: 'http://www.amazon.com'})
Url.create({long: 'http://www.nytimes.com'})