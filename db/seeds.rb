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

User.create(name: "Diego", age: 12, sex: "Male", email: "hola@gmail.com", country: "Uruguay", religion: "Catholic", password: "jajaja", password_confirmation: "jajaja")

User.create(name: Faker::Name.name, age: 12, sex: "Male", email: Faker::Internet.email, country: "Uruguay", religion: "Catholic", password: "jajaja", password_confirmation: "jajaja")