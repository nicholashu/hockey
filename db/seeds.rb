# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  User.create!(name:  "Example User",
             email: "example@example.com",
             password:              "iamsmart",
             password_confirmation: "iamsmart",
             admin: true,
           )

    User.create!(name:  "test User",
             email: "test@example.com",
             password:              "iamsmart",
             password_confirmation: "iamsmart",
             admin: false,
           )
        User.create!(name:  "Nick Hu",
             email: "nick@nickhu.info",
             password:              "iamsmart",
             password_confirmation: "iamsmart",
             admin: false,
           )

      Listing.create!(venue:  "UWA Field #2",
             gamedate: "2015-05-21",
             gametime:  "2015-05-21 19:00:00",
             created_by: 1,
           )

        Listing.create!(venue:  "UWA Field #1",
             gamedate: "2015-03-21",
             gametime:  "2015-02-21 9:00:00",
             created_by: 2,
           )