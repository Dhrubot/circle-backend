# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'dhrubo', email: 'dhrubo@mail.com', password: 'password')
user2 = User.create(username: 'rasel', email: 'rasel@mail.com', password: 'password')
user3 = User.create(username: 'nasir', email: 'nasir@mail.com', password: 'password')
user4 = User.create(username: 'manik', email: 'manik@mail.com', password: 'password')

post1 = Post.create(author: user1, title: 'Hello Cali!', description: 'Had an awesome time in Cali last week', location: 'LA')
post1 = Post.create(author: user2, title: 'Hello NY!', description: 'Had an awesome time in New York last week', location: 'NY')
post1 = Post.create(author: user1, title: 'Hello MA!', description: 'Had an awesome time in MA last week', location: 'MA')
post1 = Post.create(author: user1, title: 'Hello Florida!', description: 'Had an awesome time in Florida last week', location: 'FL')
post1 = Post.create(author: user3, title: 'Hello France!', description: 'Had an awesome time in France last week', location: 'France')
post1 = Post.create(author: user4, title: 'Hello Italy!', description: 'Had an awesome time in Italy last week', location: 'Italy')
post1 = Post.create(author: user2, title: 'Hello Barcelona!', description: 'Had an awesome time in Barcelona last week', location: 'Barcelona')
post1 = Post.create(author: user3, title: 'Hello India!', description: 'Had an awesome time in India last week', location: 'India')
post1 = Post.create(author: user3, title: 'Hello Canada!', description: 'Had an awesome time in Canada last week', location: 'Canada')
post1 = Post.create(author: user2, title: 'Hello Turkey!', description: 'Had an awesome time in Turkey last week', location: 'Turkey')
