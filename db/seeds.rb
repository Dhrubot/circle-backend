# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'dhrubo', email: 'dhrubo@mail.com', password: '12345')
user2 = User.create(username: 'rasel', email: 'rasel@mail.com', password: '12345')
user3 = User.create(username: 'nasir', email: 'nasir@mail.com', password: '12345')
user4 = User.create(username: 'manik', email: 'manik@mail.com', password: '12345')

post1 = Post.create(author: user1, title: 'Hello Cali!', description: 'Had an awesome time in Cali last week', location: 'LA')
post2 = Post.create(author: user2, title: 'Hello NY!', description: 'Had an awesome time in New York last week', location: 'NY')
post3 = Post.create(author: user1, title: 'Hello MA!', description: 'Had an awesome time in MA last week', location: 'MA')
post4 = Post.create(author: user1, title: 'Hello Florida!', description: 'Had an awesome time in Florida last week', location: 'FL')
post5 = Post.create(author: user3, title: 'Hello France!', description: 'Had an awesome time in France last week', location: 'France')
post6 = Post.create(author: user4, title: 'Hello Italy!', description: 'Had an awesome time in Italy last week', location: 'Italy')
post7 = Post.create(author: user2, title: 'Hello Barcelona!', description: 'Had an awesome time in Barcelona last week', location: 'Barcelona')
post8 = Post.create(author: user3, title: 'Hello India!', description: 'Had an awesome time in India last week', location: 'India')
post9 = Post.create(author: user3, title: 'Hello Canada!', description: 'Had an awesome time in Canada last week', location: 'Canada')
post10 = Post.create(author: user2, title: 'Hello Turkey!', description: 'Had an awesome time in Turkey last week', location: 'Turkey')


comment1 = Comment.create(body: "That sounds awesome!", commentor: user2, post: post1) 
comment2 = Comment.create(body: "That looks awesome!", commentor: user3, post: post1)
comment3 = Comment.create(body: "That sounds awesome!", commentor: user1, post: post2)
comment4 = Comment.create(body: "That looks awesome!", commentor: user4, post: post2)
comment5 = Comment.create(body: "How long did you stay?", commentor: user4, post: post1)
comment6 = Comment.create(body: "That looks awesome!", commentor: user2, post: post1)
comment7 = Comment.create(body: "That sounds awesome!", commentor: user1, post: post5)

like1 = Like.create(liker: user2, post: post1)
like2 = Like.create(liker: user3, post: post1)
like3 = Like.create(liker: user4, post: post1)
like4 = Like.create(liker: user1, post: post2)
like5 = Like.create(liker: user2, post: post5)
like6 = Like.create(liker: user3, post: post2)

follower1 = FollowerFollowing.create(follower: user2, following: user1)
follower2 = FollowerFollowing.create(follower: user3, following: user1)
follower3 = FollowerFollowing.create(follower: user4, following: user1)
follower4 = FollowerFollowing.create(follower: user1, following: user2)
follower5 = FollowerFollowing.create(follower: user1, following: user3)
