# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Hangar.destroy_all
Comment.destroy_all
# HangarRental.destroy_all

#USERS
hunter = User.create(
    name: 'Hunter Posey', 
    username: 'ihposey12', 
    password: 'hunter09', 
    email: 'ihposey@crimson.ua.edu'
)

# dillon = User.create(
#     name: 'Dillon Posey', 
#     username: 'dposey12', 
#     password: '1234', 
#     email: 'dposey12@gmail.com'
# )

# nikki = User.create(
#     name: 'Nicole Dix', 
#     username: 'nIkKi23', 
#     password: '1234', 
#     email: 'nikkidix@yahoo.com'
# )

#HANGARS
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
    title: 'Shared hangar(smaller planes preffered.', 
    description: 'Fully air conditioned, brand new hangar. Used as shared space. Smaller planes are preferred. NOTHING ABOVE TURBO PROP. Hangar will be shared one other plane at a time.', 
    airport_codesize: 'BTV', 
    size: '80 x 100', 
    city: 'Burlington', 
    state: 'Vermont', 
    price: 600.00, 
    picture: 'https://3wyeqy4dxigg2xrxyo4c110h-wpengine.netdna-ssl.com/wp-content/uploads/2019/07/hanger-6010-Bright-Blue-Hangar-Texas-01-300x158.jpg'
)

h3 = Hangar.create(
    title: 'Small open hangar(small planes only)', 
    description: 'Small, clean, open door hangar. Great for small cessnas or piper cherokees. I Book up FAST! Airspace is federal so call the aviation office ahead to get cleared to land.', 
    airport_codesize: 'NUQ', 
    size: '30 x 40', 
    city: 'Mountain View', 
    state: 'California', 
    price: 400.00, 
    picture: 'http://steelarchbuildings.com/catalog/images/steel_building_images/s_model/plane-hangar-open-steel-arch-buildings-s-model.jpg'
)

h4 = Hangar.create(
    title: 'Full hangar space || All personal jets welcome', 
    description: 'Very nice and spacious hangar perfect for large airplanes. The hanger will suit one large jet at a time. Small planes are not preferred. This is a brand new hangar and well equipped ensure your aircraft is protected.', 
    airport_codesize: 'TEB', 
    size: '100 x 125', 
    city: 'Teterboro', 
    state: 'New Jersey', 
    price: 1300.00, 
    picture: 'https://www.bifold.com/assets/aircraft-size-chart/better-hydraulic-hangar-door-quote.jpg'
)

h5 = Hangar.create(
    title: 'Small, clean hangar. (Cessna 172 or Lower)', 
    description: 'I have a very small hangar up for rent. It suits most small planes up to cesnna 172. I use it frequently but have lately been to busy to fly, so I parked it at home.', 
    airport_codesize: 'PAO', 
    size: '30 x 40', 
    city: 'Palo Alto', 
    state: 'California', 
    price: 320.00, 
    picture: 'https://greenbuildingelements.com/wp-content/uploads/2019/02/Aircraft-hangars-30x40-hangar-metal-building-rendering-2-1024x576.jpg'
)

h6 = Hangar.create(
    title: 'Good size hangar. Older but very well kept.', 
    description: 'Good size hangar at the posey regional airport in Haleyville. Used to house a small leer jet. Great price', 
    airport_codesize: '1M4', 
    size: '50 x 60', 
    city: 'Haleyville', 
    state: 'Alabama', 
    price: 450.00, 
    picture: 'https://greenbuildingelements.com/wp-content/uploads/2019/02/Aircraft-hangars-80x100-hangar-metal-building-rendering-2-400x400.jpg'
)

h7 = Hangar.create(
    title: 'HUGE HANGAR. Perfect for leer jets of anysize', 
    description: 'Large and luxurious leer jet hangar at the tuscaloosa regional airport. Houses the University of Alabama Football team plane during off season.', 
    airport_codesize: 'TCL', 
    size: '100 x 125', 
    city: 'Tuscaloosa', 
    state: 'Alabama', 
    price: 900.00, 
    picture: 'https://i.pinimg.com/originals/46/96/d0/4696d01f4d9f3c4a147f68006cb0a5c4.jpg'
)

h8 = Hangar.create(
    title: 'Luxury hangar at Aspen Airport', 
    description: 'Dont let your jet sit out in the harsh weather of colorado on your visit to Aspen. Vacation with comfort knowing your aircraft is safe and sound in this incredible private jet hangar.', 
    airport_codesize: 'ASE', 
    size: '100 x 125', 
    city: 'Aspen', 
    state: 'Colorado', 
    price: 1500.00, 
    picture: 'https://storage.googleapis.com/stateless-aeroclassifieds-main/2018/12/01-Lear35A-288.jpg'
)

h9 = Hangar.create(
    title: 'Great little hangar for all hobby pilots on a weekend getaway!', 
    description: 'Small and lovely plane hangar to fit all your needs on your visit to whitefish. This hangar is brand new and spotless. Ready for arrival! Small planes only.', 
    airport_codesize: 'FCA', 
    size: '30 x 40', 
    city: 'Whitefish', 
    state: 'Montana', 
    price: 775.00, 
    picture: 'https://www.farmtek.com/wcsstore/EngineeringServices/allbizunits/prodimages/large/107552Ta.jpg'
)

h10 = Hangar.create(
    title: 'Newly renovated cowboy airplane hangar', 
    description: 'Unique and lovely airplane hangar, customized for that jackson hole feel. Small planes only. The hangar is quite small but will fit most hobbyist aircraft.', 
    airport_codesize: 'JAC', 
    size: '30 x 40', 
    city: 'Jackson Hole', 
    state: 'Wyoming', 
    price: 200.00, 
    picture: 'https://www.bifold.com/assets/photooftheday/polycarbonate-bifold-hangar-doors-14b.jpg'
)
# h11 = Hangar.create(
#     title: 'Perfect hangar for the weekend trip!', 
#     description: 'Mid size hangar available for weekends only in seattle. This hangar is new and very well taken care of. My plane is housed inside at all times. However, there is more than enough room for another midsize plane!', 
#     airport_codesize: 'SEA', 
#     size: '100 x 125', 
#     city: 'Seattle', 
#     state: 'Washington', 
#     price: 1100.00, 
#     picture: 'https://i.pinimg.com/originals/bd/b6/0b/bdb60b767ea848d2d2c55d53f500db86.jpg'
# )

# h12 = Hangar.create(
#     title: 'Get lost in the rockies!', 
#     description: 'On your next visit to the rockies, be sure to check out our new hangar! This hangar is fully equipped to serve all hobbyist planes. Available at all times through reservation. Just hit reserve!!!', 
#     airport_codesize: 'BDU', 
#     size: '50 x 60', 
#     city: 'Boulder', 
#     state: 'Colorado', 
#     price: 800.00, 
#     picture: 'https://www-static.bouldercolorado.gov/docs/banners/1399760724_leasinginformation2.jpg'
# )

# //HANGAR RENTALS
# hr1 = HangarRental.create(
#     startDate: '04/19/2021',
#     endDate: '04/23/2021',
#     user_id: nikki.id,
#     hangar_id: h11.id
# )

# hr2 = HangarRental.create(
#     startDate: '12/25/2021',
#     endDate: '01/03/2022',
#     user_id: dillon.id,
#     hangar_id: h9.id
# )

# hr3 = HangarRental.create(
#     startDate: '06/20/2021',
#     endDate: '06/29/2021',
#     user_id: hunter.id,
#     hangar_id: h1.id
# )

# //COMMENTS
c1 = Comment.create(
    title: 'Amazing!',
    description: 'So much cheaper than the FBO! Will definitately do this again. It was a pleasure doing business with Bob!',
    rating: 5,
    user_id: hunter.id,
    hangar_id: h1.id
)

# c2 = Comment.create(
#     title: 'Good for the price.',
#     description: 'It was a decent hangar for the price. A little messy. ',
#     rating: 3,
#     user_id: dillon.id,
#     hangar_id: h3.id
# )

# c3 = Comment.create(
#     title: 'Perfect',
#     description: 'Awesome place. Good airport. I had to wait an hour to get the keys, other than that, great purchase.',
#     rating: 4,
#     user_id: nikki.id,
#     hangar_id: h5.id
# )
# c4 = Comment.create(
#     title: 'GREAT HANGAR',
#     description: 'Such a pleasure getting to rent this hangar for the weekend. We were able to rest easy knowing the plane was in good shape. And the money saved was so worth it!!',
#     rating: 4,
#     user_id: hunter.id,
#     hangar_id: h7.id
# )

# c5 = Comment.create(
#     title: 'Loved it',
#     description: 'Luxury hangar. So awesome. Looked like something out of iron man!',
#     rating: 5,
#     user_id: dillon.id,
#     hangar_id: h9.id
# )

# c6 = Comment.create(
#     title: 'Dont reserve this...',
#     description: 'Really awful. Does not look at all like the picture. Airport service was awful. Owner was 3 hours late to give me the code.',
#     rating: 2,
#     user_id: nikki.id,
#     hangar_id: h11.id
# )

puts 'seeds loaded!'