# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new({
  first_name: "Lisa",
  last_name: "Gentili",
  username: "thegoldnight",
  age: "24",
  address:"Montfaucon city gang",
  description: "J'ai mal au dos à force de porter tout ce swag. Minnie est la merveille de sa famille.",
  habitation_type: "Appartement",
  email: "lisaa-2910@hotmail.fr",
  password: "adrienz"
})

file = File.open(File.join(Rails.root, 'app/assets/images/mini.jpeg'))
user1.photo.attach(io: file, filename: 'mini.jpeg', content_type: 'image/jpg')
user1.save


user2 = User.new({
  first_name: "Pierre",
  last_name: "Orka",
  username: "pirorka",
  age: "31",
  address:"Marseille",
  description: "Je suis Maxime Acciaioli alias ou aka pirorka. Rejoignez-moi sur Twitch où je stream mes défaites tous les soirs après 18h.",
  habitation_type: "Maison",
  email: "maximepirorka@gmail.com",
  password: "123456"
})

user2.save

pet1 = Pet.new({
  category: "Chat",
  name: "Foufou",
  age: "2",
  description: "Foufou est un chat de 2 ans très joueur et sociable qui adore les câlins. Il est un peu bizarre parce qu'il est passé à la machine",
  address: "Saint-géniès-de-comolas, 30150"
  race:

})
puts "created"
