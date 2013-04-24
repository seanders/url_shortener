require 'faker'

Url.create({long: 'http://www.google.com', user_id: 1})
Url.create({long: 'http://www.amazon.com', user_id: 1})
Url.create({long: 'http://www.nytimes.com', user_id: 1})
Url.create({long: 'http://www.cnn.com', user_id: 1})
Url.create({long: 'http://www.facebook.com', user_id: 1})
Url.create({long: 'http://www.yahoo.com', user_id: 1})
Url.create({long: 'http://www.netflix.com', user_id: 2})
Url.create({long: 'http://www.gmail.com', user_id: 2})
Url.create({long: 'http://www.altavista.com', user_id: 2})
Url.create({long: 'http://www.askjeeves.com', user_id: 2})
Url.create({long: 'http://www.geocitiees.com', user_id: 2})
Url.create({long: 'http://www.netscape.com', user_id: 2})


User.create({
  first_name: 'Sean',
  last_name: 'Miller',
  email: 's@miller.com',
  password: 'a'
})

User.create({
  first_name: 'Chris',
  last_name: 'Torstenson',
  email: 'c@torst.com',
  password: 'c'
}) 