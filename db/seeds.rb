# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creation"

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
    user_id: 1,
    address: "34 Rue Nicole Zemmour, 13009 Marseille",
    adopted: true
})

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
    user_id: 2,
    address: "Rue des Champs Elysées 13230 Port-Saint-Louis-du-Rhône",
    adopted: true

})

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
    user_id: 2,
    address: "Rue des Champs Elysées 13230 Port-Saint-Louis-du-Rhône",
    adopted: true

})

pet3.save

puts "created"
