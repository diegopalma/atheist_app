# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
User.delete_all

# :name, :age, :sex, :email, :country, :religion, :password, :password_confirmation

religion = %w(Christianity Christianity Christianity Islam Hinduism Judaism)

20.times do
  User.create(name: Faker::Name.name, age: 25, sex: "Male", email: Faker::Internet.email, country: Faker::Address.country, religion: religion.sample, password: "jajaja", password_confirmation: "jajaja")
end