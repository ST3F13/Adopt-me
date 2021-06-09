# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying..."

Pet.destroy_all
User.destroy_all

puts "destroyed !"

puts "users creation..."

user1 = User.new({
    first_name: "Maxime", 
    last_name: "Acciaioli", 
    username: "SayeehLive", 
    age: 24, 
    address: "34E Rue Nicole Zemmour, 13009 Marseille", 
    description: "Jeune étudiant en couple, j'ai grandi entouré d'animaux en tout genre (chiens, chats, chevaux, perroquet, NAC).", 
    habitation_type: "Appartement",
    email: "AcciaioliMaxime@gmail.com",
    password: "123456"
})

file = File.open(File.join(Rails.root,'app/assets/images/MaxPP.jpg'))
user1.photo.attach(io: file, filename: 'MaxPP.jpg', content_type: 'image/jpg')
user1.save

user2 = User.new({
    first_name: "Jean", 
    last_name: "Tilight", 
    username: "LitZaa", 
    age: 58, 
    address: "137 Rue Paradis, 13006 Marseille", 
    description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum.", 
    habitation_type: "Maison",
    email: "LitZaJeanTilight@gmail.com",
    password: "123456"
})

user2.save

user3 = User.new({
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
user3.photo.attach(io: file, filename: 'mini.jpeg', content_type: 'image/jpg')
user3.save


user4 = User.new({
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

user4.save

puts "users created !"

puts "pets creation..."

pet1 = Pet.new({
    category: "Chien",
    name: "Medor",
    age: 5,
    description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum.",
    race: "Labrador",
    size: "Grand",
    hair: "Court",
    personality: "Sociable",
    gender: "Mâle",
    address: "34 Rue Nicole Zemmour, 13009 Marseille",
    adopted: true
})
pet1.user = user1
pet1.save

pet2 = Pet.new({
    category: "Chat",
    name: "Minnie",
    age: 2,
    description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum.",
    race: "Autre",
    size: "Petit",
    hair: "Long",
    personality: "Fort caractère",
    gender: "Femelle",
    address: "Rue des Champs Elysées 13230 Port-Saint-Louis-du-Rhône",
    adopted: true

})
pet2.user = user2
pet2.save

pet3 = Pet.new({
    category: "Chat",
    name: "Puce",
    age: 10,
    description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum.",
    race: "Siamois",
    size: "Petit",
    hair: "Court",
    personality: "Calme",
    gender: "Femelle",
    address: "Rue des Champs Elysées 13230 Port-Saint-Louis-du-Rhône",
    adopted: true

})
pet3.user = user2
pet3.save

pet4 = Pet.new({
  category: "Chat",
  name: "Foufou",
  age: "2",
  description: "Foufou est un chat de 2 ans très joueur et sociable qui adore les câlins. Il est un peu bizarre parce qu'il est passé à la machine",
  address: "Saint-géniès-de-comolas, 30150",
  race: "Autre",
  size: "Moyen",
  hair: "Long",
  personality: "Sociable",
  gender: "Mâle",
  adopted: false
})

pet4.user = user4
pet4.save

pet5 = Pet.new({
  category: "Chien",
  name: "Poulette",
  age: "1",
  description: "Poulette est une magnifique chienne très calme. Elle a 1 an, adore les humains et surtout les enfants.",
  address: "Saint-géniès-de-comolas, 30150",
  race: "Chien-Loup",
  size: "Grand",
  hair: "Long",
  personality: "Calme",
  gender: "Femelle",
  adopted: false
})

pet5.user = user3
pet5.save

puts "pets created !"
