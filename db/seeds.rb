require 'uri'

DatabaseCleaner.clean_with(:truncation)

days = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)

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

Course.create!(category: "Data Science",platform: "Coursera",title: "Machine Learning",url: "https://www.coursera.org/learn/machine-learning",course_length: 60,subcategories: ["Machine Learning", "Logistic Regression", "Artificial Neural Network", "Machine Learning (ML) Algorithms", "Machine Learning"])

Course.create!(category: "Data Science",
platform: "Coursera",
title: "Data Science Specialization",
url: "https://www.coursera.org/specializations/jhu-data-science",
course_length: 77,
subcategories:
["Data Analysis",
  "Github",
  "Machine Learning",
  "R Programming",
  "Regression Analysis",
  "Data Science",
  "Rstudio",
  "Data Analysis",
  "Debugging",
  "Data Manipulation",
  "Regular Expression (REGEX)",
  "Data Cleansing",
  "Cluster Analysis"])

Course.create!(category: "Data Science",
platform: "Coursera",
title: "Deep Learning Specialization",
url: "https://www.coursera.org/specializations/deep-learning",
course_length: 35,
  subcategories:
  ["Machine Learning",
  "Artificial Neural Network",
  "Convolutional Neural Network",
  "Tensorflow",
  "Recurrent Neural Network",
  "Transformers",
  "Deep Learning",
  "Backpropagation",
  "Python Programming",
  "Neural Network Architecture",
  "Mathematical Optimization",
  "hyperparameter tuning",
  "Inductive Transfer"])

Course.create!(category: "Data Science",
platform: "Coursera",
title: "Data Science: Foundations using R Specialization",
url: "https://www.coursera.org/specializations/data-science-foundations-r",
course_length: 40,
  subcategories:
  ["Data Analysis",
  "Data Science",
  "Machine Learning",
  "Github",
  "R Programming",
  "Exploratory Data Analysis",
  "Rstudio",
  "Data Analysis",
  "Debugging",
  "Data Manipulation",
  "Regular Expression (REGEX)",
  "Data Cleansing",
  "Cluster Analysis"])

Course.create!(category: "Language Learning",
platform: "Coursera",
title: "Improve Your English Communication Skills Specialization",
url: "https://www.coursera.org/specializations/improve-english",
course_length: 15,
  subcategories: ["Learning English", "Professional", "Email Writing", "Presentation", "Writing", "Communication", "Stress", "Public Speaking", "Speech"])

Course.create!(category: "Business",
platform: "Coursera",
title: "Career Success Specialization",
url: "https://www.coursera.org/specializations/career-success",
course_length: 22,
  subcategories:
  ["Business Essentials",
  "Project Management",
  "Information Technology (IT) Management",
  "Communication",
  "Negotiation",
  "Leadership",
  "Team Management",
  "Task Management",
  "Management",
  "Planning",
  "Plan",
  "Accounting",
  "Financial Ratio"])

Course.create!(category: "Business",
platform: "Coursera",
title: "Successful Negotiation: Essential Strategies and Skills",
url: "https://www.coursera.org/learn/negotiation-skills",
course_length: 17,
  subcategories: ["Business Essentials", "Strategic Negotiations", "Communication", "Negotiation", "Decision Tree"])

Course.create!(category: "IT & Software",
platform: "Udemy",
title: "Learn Ethical Hacking From Scratch",
url: "https://www.udemy.com/course/learn-ethical-hacking-from-scratch/",
course_length: 15,
  subcategories: ["Network & Security", "Ethical Hacking"])

Course.create!(category: "Arts and Humanities",
platform: "Coursera",
title: "Graphic Design Specialization",
url: "https://www.coursera.org/specializations/graphic-design",
course_length: 18,
  subcategories:
  ["Music and Art",
  "Visual Communication",
  "Branding Communication",
  "Graphic Design",
  "Art History",
  "Typography",
  "Creativity",
  "Graphics",
  "Design Theory",
  "Color Theory",
  "Adobe Illustrator",
  "History",
  "Adobe Indesign"])

Course.create!(category: "Arts and Humanities",
platform: "Coursera",
title: "Indigenous Canada",
url: "https://www.coursera.org/learn/indigenous-canada",
course_length: 21,
  subcategories: ["History", "Art History", "Art", "History", "Mythology"])

Course.create!(category: "Arts and Humanities",
platform: "Coursera",
title: "Creative Writing Specialization",
url: "https://www.coursera.org/specializations/creative-writing",
course_length: 6,
  subcategories: ["Music and Art", "Short Story Writing", "Fiction Writing", "Creativity", "Copy Editing"])

Course.create!(category: "Arts and Humanities",
platform: "Coursera",
title: "Indigenous Canada",
url: "https://www.coursera.org/learn/indigenous-canada",
course_length: 21,
  subcategories: ["History", "Art History", "Art", "History", "Mythology"])

Course.create!(category: "Physical Science and Engineering",
platform: "Coursera",
title: "An Introduction to Programming the Internet of Things (IOT) Specialization",
url: "https://www.coursera.org/specializations/iot",
course_length: 18,
  subcategories:
  ["Electrical Engineering",
  "Arduino",
  "Python Programming",
  "Internet Of Things (IOT)",
  "Raspberry Pi",
  "Microcontroller",
  "Embedded System Design",
  "Wireshark",
  "C Programming",
  "Debugging",
  "Computer Programming",
  "Application Programming Interfaces (API)"])

Course.create!(category: "How It Works",
platform: "Coursera",
title: "Modern and Contemporary Art and Design Specialization",
url: "https://www.coursera.org/specializations/modern-contemporary-art-design",
course_length: 21,
  subcategories: ["Courses", "Photography", "Design", "Art", "History", "Museums", "Creativity", "Art History", "Art Direction"])

city_teams_count = 0
cities.count.times do
  Course.all.each do |course|
    rand(1..2).times do
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
