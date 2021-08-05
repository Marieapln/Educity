DatabaseCleaner.clean_with(:truncation)

days = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)
m = Date.today
start = [m, m+1, m+2, m+3, m+4, m+5, m+6]

cities = %w(London)

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

Course.create!(category: "Arts and Humanities",platform: "Udemy",title: "RUNdamentals: The Essential Modern Piano Runs Guide",url: "https://www.udemy.com/course/rundamentals/",course_length: 1,subcategories: ["Music", "Music Techniques", "Piano"])
Course.create!(category: "Arts and Humanities",platform: "Udemy",title: "Jazz for the Curious Guitarist",url: "https://www.udemy.com/course/jazz-for-the-curious-guitarist/",course_length: 13,subcategories: ["Music", "Instruments", "Guitar"])
Course.create!(category: "Arts and Humanities",platform: "Coursera",title: "Music as Biology: What We Like to Hear and Why",url: "https://www.coursera.org/learn/music-as-biology",course_length: 17,subcategories: ["Music", "Biology"])
Course.create!(category: "Development",platform: "Coursera",title: "Applied Data Science with Python Specialization",url: "https://www.coursera.org/specializations/data-science-python",course_length: 35,subcategories: ["Python", "Programming Languages"])
Course.create!(category: "Development",platform: "Udemy",title: "Ruby Metaprogramming - Complete Course",url: "https://www.udemy.com/course/ruby-metaprogramming/",course_length: 4,subcategories: ["Programming Languages", "Ruby"])
Course.create!(category: "Arts and Humanities",platform: "Udemy",title: "Ultimate Black Metal Guitar!",url: "https://www.udemy.com/course/ultimate-black-metal-guitar/",course_length: 5,subcategories: ["Music", "Music Techniques", "Guitar"])
Course.create!(category: "Development",platform: "Udemy",title: "Complete JAVASCRIPT with HTML5,CSS3 from zero to Expert-2021",url: "https://www.udemy.com/course/build-responsive-website-using-html5-css3-js-and-bootstrap-p/",course_length: 17,subcategories: ["Programming Languages", "JavaScript"])
Course.create!(category: "Development",platform: "Codecademy",title: "Learn jQuery",url: "https://www.codecademy.com/learn/learn-jquery",course_length: 9,subcategories: ["JavaScript", "Programming Languages"])
Course.create!(category: "Arts and Humanities",platform: "Udemy",title: "Piano for Singer/Songwriters | Write Songs and Perform Live!",url: "https://www.udemy.com/course/pianoforsingersongwriters/",course_length: 3,subcategories: ["Music", "Instruments", "Piano"])
Course.create!(category: "Arts and Humanities",platform: "Udemy",title: "Mastering the Art of Macramé",url: "https://www.udemy.com/course/mastering-the-art-of-macrame/",course_length: 17,subcategories: ["Arts & Crafts", "Crafting"])
Course.create!(category: "Arts and Humanities",platform: "Udemy",title: "Watercolor Painting Beginner Next Level Techniques & Effects",url: "https://www.udemy.com/course/watercolor-painting-next-level-techniques-effects/",course_length: 4,subcategories: ["Arts & Crafts", "Watercolor Painting"])
Course.create!(category: "Development",platform: "Coursera",title: "Programming for Everybody (Getting Started with Python)",url: "https://www.coursera.org/learn/python",course_length: 1,subcategories: ["Python", "Programming Languages"])
Course.create!(category: "Development",platform: "Udemy",title: "Complete Guide to TensorFlow for Deep Learning with Python",url: "https://www.udemy.com/course/complete-guide-to-tensorflow-for-deep-learning-with-python/",course_length: 14,subcategories: ["Python", "Deep Learning"])
Course.create!(category: "Arts and Humanities",platform: "Udemy",title: "The Secrets to Drawing",url: "https://www.udemy.com/course/the-secrets-to-drawing/",course_length: 5,subcategories: ["Arts & Crafts", "Drawing"])
Course.create!(category: "Development",platform: "Codecademy",title: "Learn the Basics of Blockchain with Python",url: "https://www.codecademy.com/learn/introduction-to-blockchain",course_length: 2,subcategories: ["Python", "Programming Languages"])
Course.create!(category: "Arts and Humanities",platform: "Udemy",title: "Learn to Make a Basic Stained Glass Window",url: "https://www.udemy.com/course/basic-leaded-stained-glass/",course_length: 2,subcategories: ["Arts & Crafts", "Crafting"])
Course.create!(category: "Arts and Humanities",platform: "Coursera",title: "The Blues: Understanding and Performing an American Art Form",url: "https://www.coursera.org/learn/the-blues",course_length: 11,subcategories: ["Music", "Guitar"])
Course.create!(category: "Development",platform: "Udemy",title: "NLP - Natural Language Processing with Python",url: "https://www.udemy.com/course/nlp-natural-language-processing-with-python/",course_length: 11,subcategories: ["Python", "Natural Language Processing"])
Course.create!(category: "Arts and Humanities",platform: "Coursera",title: "How to Play Guitar Specialization",url: "https://www.coursera.org/specializations/play-guitar",course_length: 15,subcategories: ["Music", "Guitar", "Instruments"])
Course.create!(category: "Development",platform: "Codecademy",title: "Learn Game Development with Phaser.js",url: "https://www.codecademy.com/learn/learn-phaser",course_length: 9,subcategories: ["JavaScript", "Programming Languages"])

n = User.all.count
users = Array(1..n)

Team.all.each do |team|
  rand(2..3).times do
    StudentsTeam.create!(team_id: team.id, user_id: rand(1..n))
  end
end
city_teams_count = 0
cities.count.times do
  Course.all.each do |course|
    rand(1..2).times do
      puts "Creating team for #{course.title} in #{cities[city_teams_count]}"
      day = days.sample
      time = rand(6..20)
      start_date = start[days.index(day)] + time.hours
      Team.create!(course_id: course.id, day_of_the_week: day, start_date: start_date, time_of_the_day: time, duration: rand(1..4), city: cities[city_teams_count])
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

user = User.create!(email: "marie@lewagon.fr", password: "password", first_name: "Marie", last_name: "Apolozan")
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618906081/uwglzhbnj7yyqjbhgtst.jpg")
user.photo.attach(io:file, filename: "marie.png")
  puts "Created user account for #{user.first_name} #{user.last_name}"
