# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.create!(category:'Python',platform:'codecademy',title:'Analyse data with Python', url: 'https://www.codecademy.com/learn/paths/analyze-data-with-python', course_length: 60)
Course.create!(category:'Java',platform:'codecademy',title:'Learn Java', url: 'https://www.codecademy.com/learn/learn-java', course_length: 25)
Course.create!(category:'Statistics',platform:'datacamp',title:'Beginning Bayes in R', url: 'https://www.datacamp.com/community/open-courses/beginning-bayes-in-r', course_length: 30)
Course.create!(category:'Machine Learning',platform:'coursera',title:'Machine Learning', url: 'https://www.coursera.org/learn/machine-learning', course_length: 25)
Course.create!(category:'Deep Learning',platform:'coursera',title:'Deep Learning', url: 'https://www.coursera.org/specializations/deep-learning', course_length: 55)


40.times do
  email = Faker::Internet.email
  password = 'password'
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  puts "Creating user account for #{first_name} #{last_name}"
  new_user = User.create!(email: email, password: password, first_name: first_name, last_name: last_name)
  puts "User created"
end

days = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)

Course.all.each do |course|
  9.times do
    Team.create!(course_id: course.id, day_of_the_week: days.sample, time_of_the_day: rand(0..23), duration: rand(1..4) )
    puts "Creating team for #{course.title}"
  end
end

Team.all.each do |team|
  4.times do
    StudentsTeam.create!(team_id: team.id, user_id: rand(1..40))
  end
end

