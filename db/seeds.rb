# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

#Destroying everyting

puts "Destroying DB"
City.destroy_all
User.destroy_all
Trip.destroy_all
Post.destroy_all

puts "Seeding..."


# Seeding country
singapore = City.create(name: "Singapore")
france = City.create(name: "France ")
ph = City.create(name: "Philipines")
cb = City.create(name: "Cambodia")

#Seeding Users
max = User.create(email: "max@gmail.com", password: "123456", name: "Max")
dexter = User.create(email: "dexter@gmail.com", password: "123456", name: "Dexter")
kenn = User.create(email: "kenn@gmail.com", password: "123456", name: "Kenn")

#Association User + country
max.city = france
dexter.city = singapore
kenn.city = singapore
max.save
dexter.save
kenn.save

#Creating first Trip

first_trip = Trip.new(name: "Cambobia",
                          description: "Siem Reap, Temple with Franck and Olivia",
                          start_date: "2 november 2018",
                          end_date: "10 november 2018",
                          )


first_trip.user = max
first_trip.save

# Post Creation

first_post = Post.new(name: "Temple on the first day",
                         description: "Siem Reap a une architecture de style colonial et chinois notamment dans le quartier français et autour du Vieux Marché. En ville on trouve des festivals de danse Apsara, des magasins d'artisans, des fermes séricicoles, des rizières, des villages de pêcheurs et des sanctuaires pour oiseaux près du lac Tonlé Sap.",
                         address: "Siem Reap",
                         date: "2 november 2018",
                         )
file = URI.open('https://www.overseasattractions.com/wp-content/uploads/2019/04/best-temples-siem-reap.jpg')
first_post.photos.attach(io: file, filename: 'photo1.jpg', content_type: 'image/jpg')

second_post = Post.new(name: "Temple on the second day",
                         description: "Siem Reap a une architecture de style colonial et chinois notamment dans le quartier français et autour du Vieux Marché. En ville on trouve des festivals de danse Apsara, des magasins d'artisans, des fermes séricicoles, des rizières, des villages de pêcheurs et des sanctuaires pour oiseaux près du lac Tonlé Sap.",
                         address: "Siem Reap",
                         date: "3 november 2018",
                         )
file = URI.open('https://focusasiatravel.com/wp-content/uploads/2018/07/siem-reap-temple-cambodia.png')
second_post.photos.attach(io: file, filename: 'photo2.png', content_type: 'image/png')

third_post = Post.new(name: "Temple on the third day",
                         description: "Superbe journee avec mes amis.",
                         address: "Siem Reap",
                         date: "4 november 2018",
                         )
file = URI.open('https://www.mumpacktravel.com/wp-content/uploads/2019/03/IMG_8943-1080x810.jpg')
third_post.photos.attach(io: file, filename: 'photo3.jpg', content_type: 'image/jpg')

fourth_post = Post.new(name: "Temple on the fourth day",
                         description: "Siem Reap a une architecture de style colonial et chinois notamment dans le quartier français et autour du Vieux Marché. En ville on trouve des festivals de danse Apsara, des magasins d'artisans, des fermes séricicoles, des rizières, des villages de pêcheurs et des sanctuaires pour oiseaux près du lac Tonlé Sap.",
                         address: "Siem Reap",
                         date: "5 november 2018",
                         )
file = URI.open('https://i0.wp.com/handluggageonly.co.uk/wp-content/uploads/2017/11/iStock-528898081.jpg?resize=1000%2C664&ssl=1')
fourth_post.photos.attach(io: file, filename: 'photo4.jpg', content_type: 'image/jpg')

# associating first trip with user and post with trip.

first_post.trip = first_trip
first_post.save
second_post.trip = first_trip
second_post.save
third_post.trip = first_trip
third_post.save
fourth_post.trip = first_trip
fourth_post.save

puts "seed OK"
