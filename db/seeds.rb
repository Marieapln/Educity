# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

DatabaseCleaner.clean_with(:truncation)

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

cities = %w(London)

# Birmingham Glasgow Liverpool Bristol Manchester

# user_count = 0
# 12.times do
#   email = Faker::Internet.email
#   password = 'password'
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name
#   puts "Creating user account for #{first_name} #{last_name}"
#   new_user = User.create!(email: email, password: password, first_name: first_name, last_name: last_name)
#   user_count += 1
#   puts "User created"
# end

days = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)

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
