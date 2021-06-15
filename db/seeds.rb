# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'uri'

DatabaseCleaner.clean_with(:truncation)

Course.create!(category:'Technology',subcategories:['Python','Data Analysis'],platform:'codecademy',title:'Analyse data with Python', url: 'https://www.codecademy.com/learn/paths/analyze-data-with-python', course_length: 60)
Course.create!(category:'Technology',subcategories:['Java'],platform:'codecademy',title:'Learn Java', url: 'https://www.codecademy.com/learn/learn-java', course_length: 25)
Course.create!(category:'Technology',subcategories:['Statistics','R'],platform:'datacamp',title:'Beginning Bayes in R', url: 'https://www.datacamp.com/community/open-courses/beginning-bayes-in-r', course_length: 30)
Course.create!(category:'Technology',subcategories:['Machine Learning'],platform:'coursera',title:'Machine Learning', url: 'https://www.coursera.org/learn/machine-learning', course_length: 25)
Course.create!(category:'Technology',subcategories:['Deep Learning','Tensorflow'],platform:'coursera',title:'Deep Learning', url: 'https://www.coursera.org/specializations/deep-learning', course_length: 55)

cities = %w(London Birmingham Glasgow Liverpool Bristol Manchester)

user = User.create!(email: "boris@lewagon.fr", password: "password", first_name: "Boris", last_name: "Paillard")
file = URI.open("https://miro.medium.com/max/3150/1*RNmxOTK2D49plmMyVynqAw.png") # use cloudinary url
user.photo.attach(io: file, filename: 'boris.jpg', content_type: 'image/png')
  puts "Created user account for #{user.first_name} #{user.last_name}"


user= User.create!(email:"egidio@lewagon.co.uk", password: "password", first_name: "Egidio", last_name: "De-Souza")
file = URI.open("https://avatars.githubusercontent.com/u/71524093?v=4")
user.photo.attach(io:file, filename: "egidio.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "veni@lewagon.co.uk", password: "password", first_name: "Veni", last_name: "Aljo")
file = URI.open("https://avatars.githubusercontent.com/u/81187143?v=4")
user.photo.attach(io:file, filename: "veni.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "marcus@lewagon.co.uk", password: "password", first_name: "Marcus", last_name: "Allen")
file = URI.open("https://avatars.githubusercontent.com/u/71977744?v=4")
user.photo.attach(io:file, filename: "marcus.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "felix@lewagon.co.uk", password: "password", first_name: "Felix", last_name: "Altenburg")
file = URI.open("https://avatars.githubusercontent.com/u/80281479?v=4")
user.photo.attach(io:file, filename: "felix.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "marie@lewagon.fr", password: "password", first_name: "Marie", last_name: "Apolozan")
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618906081/uwglzhbnj7yyqjbhgtst.jpg")
user.photo.attach(io:file, filename: "marie.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "chloe@lewagon.co.uk", password: "password", first_name: "Chloe", last_name: "Avenas")
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618501225/aeew3amojdtvyvmflbfo.jpg")
user.photo.attach(io:file, filename: "chloe.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "cesar@lewagon.co.uk", password: "password", first_name: "Cesar", last_name: "Bouttier")
file = URI.open("https://avatars.githubusercontent.com/u/82714944?v=4")
user.photo.attach(io:file, filename: "cesar.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "emma@lewagon.fr", password: "password", first_name: "Emma", last_name: "Cardon")
file = URI.open("https://avatars.githubusercontent.com/u/80233825?v=4")
user.photo.attach(io:file, filename: "emma.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "jennifer@lewagon.co.uk", password: "password", first_name: "Jennifer", last_name: "Carlyle")
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618827613/c6s4hzx9htdl23idct3x.jpg")
user.photo.attach(io:file, filename: "jennifer.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "beverly@lewagon.co.uk", password: "password", first_name: "Beverly", last_name: "Chan")
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618569271/fwymgf1wbs9p2lefudn5.jpg")
user.photo.attach(io:file, filename: "beverly.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "eduard@lewagon.co.uk", password: "password", first_name: "Eduard", last_name: "Ciugulea")
file = URI.open("https://avatars.githubusercontent.com/u/80752559?v=4")
user.photo.attach(io:file, filename: "eduard.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "nick@lewagon.co.uk", password: "password", first_name: "Nick", last_name: "Dillon")
file = URI.open("https://avatars.githubusercontent.com/u/81957758?v=4")
user.photo.attach(io:file, filename: "nick.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "emily@lewagon.co.uk", password: "password", first_name: "Emily", last_name: "Doswell")
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618826522/iun86a66ulmux0dvdbnh.jpg")
user.photo.attach(io:file, filename: "emily.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "hector@lewagon.co.uk", password: "password", first_name: "Hector", last_name: "Dyer")
file = URI.open("https://avatars.githubusercontent.com/u/79449028?v=4")
user.photo.attach(io:file, filename: "hector.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "robyn@lewagon.co.uk", password: "password", first_name: "Robyn", last_name: "Ellison")
file = URI.open("https://avatars.githubusercontent.com/u/79164134?v=4")
user.photo.attach(io:file, filename: "robyn.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "beatriz@lewagon.co.uk", password: "password", first_name: "Beatriz", last_name: "Galindo")
file = URI.open("https://avatars.githubusercontent.com/u/72728033?v=4")
user.photo.attach(io:file, filename: "hector.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "dean@lewagon.co.uk", password: "password", first_name: "Dean", last_name: "Gilden")
file = URI.open("https://avatars.githubusercontent.com/u/80426606?v=4")
user.photo.attach(io:file, filename: "dean.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "oliver@lewagon.co.uk", password: "password", first_name: "Oliver", last_name: "Kyte")
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618824336/aiwdy46l1dex8bt4ylz6.jpg")
user.photo.attach(io:file, filename: "oliver.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "vera@lewagon.co.uk", password: "password", first_name: "Vera", last_name: "Meanti")
file = URI.open("https://avatars.githubusercontent.com/u/82151764?v=4")
user.photo.attach(io:file, filename: "vera.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "tiana@lewagon.co.uk", password: "password", first_name: "Tiana", last_name: "Milanovich")
file = URI.open("https://avatars.githubusercontent.com/u/63407361?v=4")
user.photo.attach(io:file, filename: "tiana.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "james.m@lewagon.co.uk", password: "password", first_name: "James", last_name: "Moran")
file = URI.open("https://avatars.githubusercontent.com/u/78893700?v=4")
user.photo.attach(io:file, filename: "james.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "james.p@lewagon.co.uk", password: "password", first_name: "James", last_name: "Price")
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618951328/coj12cu8ljrmsmtp4xrs.jpg")
user.photo.attach(io:file, filename: "jamesp.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "borja@lewagon.co.uk", password: "password", first_name: "Borja", last_name: "Requena")
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618506947/w7vtzrxv3qmutakw9k8k.jpg")
user.photo.attach(io:file, filename: "borja.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "yonatan@lewagon.co.uk", password: "password", first_name: "Yonatan", last_name: "Rospigliosi")
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618949586/t9aui1ogepkhozmwcuhs.jpg")
user.photo.attach(io:file, filename: "yonatan.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "natalia@lewagon.co.uk", password: "password", first_name: "Natalia", last_name: "Rossini Lopez")
file = URI.open("https://avatars.githubusercontent.com/u/47406531?v=4")
user.photo.attach(io:file, filename: "natalia.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"

user = User.create!(email: "rob@lewagon.co.uk", password: "password", first_name: "Rob", last_name: "Rowe")
file = URI.open("https://avatars.githubusercontent.com/u/174759?v=4")
user.photo.attach(io:file, filename: "rob.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"


days = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)

city_teams_count = 0
cities.count.times do
  Course.all.each do |course|
    rand(2..5).times do
      puts "Creating team for #{course.title} in #{cities[city_teams_count]}"
      Team.create!(course_id: course.id, day_of_the_week: days.sample, time_of_the_day: rand(0..23), duration: rand(1..4), city: cities[city_teams_count])
      puts "Team created"
    end
  end
  city_teams_count += 1
end

Team.all.each do |team|
  puts "Adding learners to #{team.city}'s #{team.course.title} team"
  city_index = cities.find_index(team.city)
  city_min_index = city_index + 1
  city_max_index = city_index + 30
  city_users_subset = User.where(id: city_min_index..city_max_index)
  users_to_add = city_users_subset.sample(rand(1..4))
  users_to_add_count = 0
  users_to_add.count.times do
    StudentsTeam.create!(team_id: team.id, user_id: users_to_add[users_to_add_count].id)
    puts "Added #{users_to_add[users_to_add_count].first_name} #{users_to_add[users_to_add_count].last_name}"
    users_to_add_count += 1
  end
  puts "Added #{users_to_add_count}"
end
