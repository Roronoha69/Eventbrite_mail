# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


User.create(email: "jojo@yopmail.com", first_name: "Jojo", last_name: "Prout", description: "test1 test1")
User.create(email: "dingo@yopmail.com", first_name: "dingo", last_name: "Pet", description: "test2 test2")
User.create(email: "arno@yopmail.com", first_name: "Arno", last_name: "Oder", description: "test3 test3")


Event.create!(start_date: 2022-02-02, duration: 10, title: "twerk party", location: "lala", description: "lololol", price: 60) 




nb_user = 100
nb_events = 50
nb_guests = 100


nb_user.times do |x|
  User.create(
      email: Faker::Name.first_name+'@yopmail.com',
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      description: Faker::Lorem.paragraph_by_chars(number: 200, supplemental: false))
  puts "Seeding of User nb #{x}"
end

#for the random startdate
t1 = Time.now
t2 = Time.parse("2022-01-01 00:00:00")

nb_events.times do |x|
  Event.create(
    start_date: rand(t1..t2),
    duration: rand(5..100)*5,
    description: "lolololololololololoeoeeherhehrhrthjozrzefef",
    location: Faker::Address.city,
    price: rand(1..1000),
    title: Faker::Book.title)
  puts "Seeding of Event nb #{x}"
end

nb_guests.times do |x|
  Attendance.create(
    user_id: User.all.sample.id,
    event_id: Event.all.sample.id)
  puts "Seeding of Guest nb #{x}"
end

