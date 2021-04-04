# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Reader.create([{ username: 'DeniseReads', email: 'denisereadsexample@gmail.com', password: 'password' }, {username: 'sallyreads', email: 'sallyreadsexample@gmail.com', password: 'password'  }, { username: 'CharlieReads', email: 'charliereadsexample@gmail.com', password: 'password'  }])

Goal.create([{reader_id: 1, description: "I want to learn more about gardening", completion_date: "2021-09-25"}, {reader_id: 2, description: "I want to learn start my own business", completion_date: "2021-07-25"}, {reader_id: 3, description: "I want to be more romantic towards my spouse", completion_date: "2021-04-25"}])


Plot.create([{description: "Get all of your gardeninghacks here!", goal_id: 1, book_id: 1}, {description: "Where business minded people learn the keys to success", goal_id: 2, book_id: 2}, {description: "Modern day romeo and juliet", goal_id: 3, book_id: 3}])

Book.create([{title: "Gardening 101", author: "Misses Greenthumb"}, {title: "Self-Made 101", author: "Johhny Joe"}, {title: "Romance 101", author: "Dr. Love"}])