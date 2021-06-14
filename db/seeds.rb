# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

DatabaseCleaner.clean_with(:truncation)

Course.create!(category:'Technology',subcategories:['Python','Data Analysis'],platform:'codecademy',title:'Analyse data with Python', url: 'https://www.codecademy.com/learn/paths/analyze-data-with-python', course_length: 60)
Course.create!(category:'Technology',subcategories:['Java'],platform:'codecademy',title:'Learn Java', url: 'https://www.codecademy.com/learn/learn-java', course_length: 25)
Course.create!(category:'Technology',subcategories:['Statistics','R'],platform:'datacamp',title:'Beginning Bayes in R', url: 'https://www.datacamp.com/community/open-courses/beginning-bayes-in-r', course_length: 30)
Course.create!(category:'Technology',subcategories:['Machine Learning'],platform:'coursera',title:'Machine Learning', url: 'https://www.coursera.org/learn/machine-learning', course_length: 25)
Course.create!(category:'Technology',subcategories:['Deep Learning','Tensorflow'],platform:'coursera',title:'Deep Learning', url: 'https://www.coursera.org/specializations/deep-learning', course_length: 55)

cities = %w(London Birmingham Glasgow Liverpool Bristol Manchester)

user_count = 0
90.times do
  email = Faker::Internet.email
  password = 'password'
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  puts "Creating user account for #{first_name} #{last_name}"
  new_user = User.create!(email: email, password: password, first_name: first_name, last_name: last_name)
  user_count += 1
  puts "User created"
end

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
