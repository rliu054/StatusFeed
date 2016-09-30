# Make sample users
User.create!(name: "Example User",
             email: "example@rails.org",
             password: "password",
             password_confirmation: "password",
             admin: true,
             activated: true,
             activated_at: Time.zone.now
)

User.create!(name: "Rui Liu",
             email: "iamliurui@gmail.com",
             password: "password",
             password_confirmation: "password"
)

User.create!(name: "Diao Si",
             email: "ds@gmail.com",
             password: "password",
             password_confirmation: "password"
)

99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@rails.org"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now
  )
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user|
    user.microposts.create!(content: content)
  }
end
