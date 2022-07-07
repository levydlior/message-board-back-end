puts "🌱 Seeding spices..."

User.create(user_name: "Picklerick", password: "ilovemorty", avatar_url: "https://cdn.vox-cdn.com/thumbor/1RDYZTsDpm0PlRJJqt8uynHSpEg=/0x0:712x423/920x613/filters:focal(385x120:497x232):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/55531035/Screen_Shot_2017_06_30_at_3.17.00_PM.0.png")
User.create(user_name: "Stoney", password: "weed", avatar_url: "https://www.rover.com/blog/wp-content/uploads/2018/11/chihuahua-810789_1920-960x540.jpg")
User.create(user_name: "Peter", password: "griffin", avatar_url: "https://i.pinimg.com/736x/ee/46/33/ee4633caecdaebd4161d677fa8893134--peter-griffin-family-guy.jpg")
User.create(user_name: "Duby", password: "master", avatar_url: "https://i.pinimg.com/originals/9e/46/17/9e4617f9b9db9145341e219c20c0f2e5.png")

Message.create(content: "laba daba dub dub!", user_id: 1)
Message.create(content: "I got the munchees brah!", user_id: 2)
Message.create(content: "Duby can bring master food!", user_id: 4)
Message.create(content: "Hi guys- who wants to go to a bar?!", user_id: 3)
Message.create(content: "Have anyone seen *broughh* Morty?", user_id: 1)

puts "✅ Done seeding!"
