# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "admin",
             email: "admin@gmail.com",
             password:              "admin123",
             password_confirmation: "admin123",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

             
# Generate a bunch of additional users
99.times do |n|
    name = "Sudo Name #{n+1}"
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    puts {name}.to_s + "is added"
    User.create!(name: name,email: email,password:password,password_confirmation: password,admin: false,activated: true, activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)  
50.times do |i|
    content = "This is content of micropost "+i.to_s
    users.each do |user|
        user.microposts.create!(content:content) 
    end
    puts content+"Done"
    # end
end