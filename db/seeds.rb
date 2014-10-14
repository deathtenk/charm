
30.times do
  a = Author.create(first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                username: Faker::Name.first_name,
                email: Faker::Internet.email)

  Profile.create(author: a, title: Faker::Name.title, description: Faker::Lorem.paragraph,
                linkedin_url: Faker::Internet.url, facebook_url: Faker::Internet.url)
end
