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

      Listing.create!(title:  "Example",
             description: "This is sample text",
             price:  50,
             created_by: 1,
           )