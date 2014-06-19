# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

2.times do
  Teacher.create(
    name: Faker::Name.name,
    email: Faker::Internet.email)
end

5.times do
  Student.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    teacher_id: 1)
end

5.times do
  Student.create(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  teacher_id: 2
  )
end
