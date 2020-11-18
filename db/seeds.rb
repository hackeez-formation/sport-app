User.destroy_all
City.destroy_all
Sport.destroy_all
UserToSport.destroy_all

5.times do
  City.create(name: Faker::Nation.capital_city)
end

Sport.create(name: "Skydiving")
Sport.create(name: "Football")
Sport.create(name: "Basketball")
Sport.create(name: "Natation")
Sport.create(name: "Golf")

10.times do 
  u = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, city: City.all.sample)
  u.save 
  u.sports << Sport.all.sample
end

