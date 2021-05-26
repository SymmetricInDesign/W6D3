# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "squid")
user2 = User.create(username: "catto")
user3 = User.create(username: "doggo")

art1 = Artwork.create(title: "cat", image_url: "https://placekitten.com/200/300", artist_id: user2.id)
art2 = Artwork.create(title: "squid", image_url: "https://cdn.discordapp.com/attachments/844698264258215951/847194719620038666/Screen_Shot_2021-05-26_at_1.31.01_PM.png", artist_id: user1.id)
art3 = Artwork.create(title: "dog", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Dog_-_%E0%B4%A8%E0%B4%BE%E0%B4%AF-6.JPG/1280px-Dog_-_%E0%B4%A8%E0%B4%BE%E0%B4%AF-6.JPG", artist_id: user3.id)

share1 = ArtworkShare.create(artwork_id: art1.id, viewer_id: user1.id)
share2 = ArtworkShare.create(artwork_id: art3.id, viewer_id: user2.id)
share3 = ArtworkShare.create(artwork_id: art2.id, viewer_id: user3.id)
share4 = ArtworkShare.create(artwork_id: art2.id, viewer_id: user2.id)