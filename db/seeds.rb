# Make sample users
User.create!(name: "Example User",
             email: "example@rails.org",
             password: "password",
             password_confirmation: "password",
             admin: true
)

User.create!(name: "Rui Liu",
             email: "iamliurui@gmail.com",
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
               password_confirmation: password
  )
end