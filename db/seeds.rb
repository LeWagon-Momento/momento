# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Destroying everyting

puts "Destroying DB"
Country.destroy_all
User.destroy_all
Trip.destroy_all
Post.destroy_all

puts "Seeding..."


# Seeding country
singapore = Country.create(name: "Singapore")
france = Country.create(name: "France ")
ph = Country.create(name: "Philipines")
cb = Country.create(name: "Cambodia")

#Seeding Users
max = User.new(email: "max@gmail.com", password: "123456", name: "Max")
dexter = User.new(email: "dexter@gmail.com", password: "123456", name: "Dexter")
kenn = User.new(email: "kenn@gmail.com", password: "123456", name: "Kenn")

#Association User + country
max.country = france
dexter.country = singapore
kenn.country = singapore
max.save
dexter.save
kenn.save

#Creating first Trip

first_trip = Trip.new(name: "Cambobia 2018",
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

second_post = Post.new(name: "Temple on the second day",
                         description: "Siem Reap a une architecture de style colonial et chinois notamment dans le quartier français et autour du Vieux Marché. En ville on trouve des festivals de danse Apsara, des magasins d'artisans, des fermes séricicoles, des rizières, des villages de pêcheurs et des sanctuaires pour oiseaux près du lac Tonlé Sap.",
                         address: "Siem Reap",
                         date: "3 november 2018",
                         )

third_post = Post.new(name: "Temple on the third day",
                         description: "Superbe journee avec mes amis.",
                         address: "Siem Reap",
                         date: "4 november 2018",
                         )

fourth_post = Post.new(name: "Temple on the fourth day",
                         description: "Siem Reap a une architecture de style colonial et chinois notamment dans le quartier français et autour du Vieux Marché. En ville on trouve des festivals de danse Apsara, des magasins d'artisans, des fermes séricicoles, des rizières, des villages de pêcheurs et des sanctuaires pour oiseaux près du lac Tonlé Sap.",
                         address: "Siem Reap",
                         date: "5 november 2018",
                         )

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
