# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Hangar.destroy_all

# Users
hunter = User.create(
    name: 'Hunter Posey', 
    username: 'ihposey12', 
    password: 'hunter09', 
    email: 'ihposey@crimson.ua.edu'
)

#Hangars
h1 = Hangar.create(
    title: 'Entire Hangar ~ Perfect for large planes!', 
    description: 'Large, empty hangar at the Bangor Regional Airport. Perfect for large jets. Very Clean. Small planes not preferred but welcome', 
    airport_codesize: 'BGR', 
    size: '100 x 125', 
    city: 'Bangor', 
    state: 'Maine', 
    price: 1000.00, 
    picture: 'https://www.hurricanesteelbuildings.com/images/aircraft-hangars-metal-buidings.jpg'
)

h2 = Hangar.create(
    title: 'Entire Hangar ~ Perfect for large planes!', 
    description: 'Large, empty hangar at the Bangor Regional Airport. Perfect for large jets. Very Clean. Small planes not preferred but welcome', 
    airport_codesize: 'BGR', 
    size: '100 x 125', 
    city: 'Bangor', 
    state: 'Maine', 
    price: 1000.00, 
    picture: 'https://www.hurricanesteelbuildings.com/images/aircraft-hangars-metal-buidings.jpg'
)

h3 = Hangar.create(
    title: 'Entire Hangar ~ Perfect for large planes!', 
    description: 'Large, empty hangar at the Bangor Regional Airport. Perfect for large jets. Very Clean. Small planes not preferred but welcome', 
    airport_codesize: 'BGR', 
    size: '100 x 125', 
    city: 'Bangor', 
    state: 'Maine', 
    price: 1000.00, 
    picture: 'https://www.hurricanesteelbuildings.com/images/aircraft-hangars-metal-buidings.jpg'
)

h4 = Hangar.create(
    title: 'Entire Hangar ~ Perfect for large planes!', 
    description: 'Large, empty hangar at the Bangor Regional Airport. Perfect for large jets. Very Clean. Small planes not preferred but welcome', 
    airport_codesize: 'BGR', 
    size: '100 x 125', 
    city: 'Bangor', 
    state: 'Maine', 
    price: 1000.00, 
    picture: 'https://www.hurricanesteelbuildings.com/images/aircraft-hangars-metal-buidings.jpg'
)

h5 = Hangar.create(
    title: 'Entire Hangar ~ Perfect for large planes!', 
    description: 'Large, empty hangar at the Bangor Regional Airport. Perfect for large jets. Very Clean. Small planes not preferred but welcome', 
    airport_codesize: 'BGR', 
    size: '100 x 125', 
    city: 'Bangor', 
    state: 'Maine', 
    price: 1000.00, 
    picture: 'https://www.hurricanesteelbuildings.com/images/aircraft-hangars-metal-buidings.jpg'
)

h6 = Hangar.create(
    title: 'Entire Hangar ~ Perfect for large planes!', 
    description: 'Large, empty hangar at the Bangor Regional Airport. Perfect for large jets. Very Clean. Small planes not preferred but welcome', 
    airport_codesize: 'BGR', 
    size: '100 x 125', 
    city: 'Bangor', 
    state: 'Maine', 
    price: 1000.00, 
    picture: 'https://www.hurricanesteelbuildings.com/images/aircraft-hangars-metal-buidings.jpg'
)

h7 = Hangar.create(
    title: 'Entire Hangar ~ Perfect for large planes!', 
    description: 'Large, empty hangar at the Bangor Regional Airport. Perfect for large jets. Very Clean. Small planes not preferred but welcome', 
    airport_codesize: 'BGR', 
    size: '100 x 125', 
    city: 'Bangor', 
    state: 'Maine', 
    price: 1000.00, 
    picture: 'https://www.hurricanesteelbuildings.com/images/aircraft-hangars-metal-buidings.jpg'
)

h8 = Hangar.create(
    title: 'Entire Hangar ~ Perfect for large planes!', 
    description: 'Large, empty hangar at the Bangor Regional Airport. Perfect for large jets. Very Clean. Small planes not preferred but welcome', 
    airport_codesize: 'BGR', 
    size: '100 x 125', 
    city: 'Bangor', 
    state: 'Maine', 
    price: 1000.00, 
    picture: 'https://www.hurricanesteelbuildings.com/images/aircraft-hangars-metal-buidings.jpg'
)

h9 = Hangar.create(
    title: 'Entire Hangar ~ Perfect for large planes!', 
    description: 'Large, empty hangar at the Bangor Regional Airport. Perfect for large jets. Very Clean. Small planes not preferred but welcome', 
    airport_codesize: 'BGR', 
    size: '100 x 125', 
    city: 'Bangor', 
    state: 'Maine', 
    price: 1000.00, 
    picture: 'https://www.hurricanesteelbuildings.com/images/aircraft-hangars-metal-buidings.jpg'
)

h10 = Hangar.create(
    title: 'Entire Hangar ~ Perfect for large planes!', 
    description: 'Large, empty hangar at the Bangor Regional Airport. Perfect for large jets. Very Clean. Small planes not preferred but welcome', 
    airport_codesize: 'BGR', 
    size: '100 x 125', 
    city: 'Bangor', 
    state: 'Maine', 
    price: 1000.00, 
    picture: 'https://www.hurricanesteelbuildings.com/images/aircraft-hangars-metal-buidings.jpg'
)



puts 'seeds loaded!'