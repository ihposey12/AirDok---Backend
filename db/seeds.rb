# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

hunter = User.create(name: 'Hunter Posey', username: 'ihposey12', password: 'hunter09', email: 'ihposey@crimson.ua.edu')

puts 'seeds loaded!'