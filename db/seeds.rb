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

user1.save

user2 = User.new({
    first_name: "Lisa",
    last_name: "Gentili",
    username: "TheGoldNight",
    age: 26,
    address: "60 Boulevard Léopold Coren, 13300 Salon-de-Provence",
    description: "Amoureuse des animaux, je leur donne toute l'affection dont ils ont besoin et je fais tout pour leur bien-être.",
    habitation_type: "Appartement",
    email: "LisaGentili@gmail.com",
    password: "123456"
})

user2.save

user3 = User.new({
  first_name: "Olivier",
  last_name: "Gil",
  username: "MotoLover974",
  age: 38,
  address:"Le Bruisset, 04260 Allos",
  description: "Originaire de l'ile de la Réunion, j'ai déménagé en France il y a 10 ans. J'aime beaucoup marcher dans la nature avec ma famille et mon chien.",
  habitation_type: "Maison",
  email: "OlivierGil@gmail.com",
  password: "123456"
})

user3.save

user4 = User.new({
  first_name: "Michaël",
  last_name: "Gastal",
  username: "MathémaCode",
  age: 30,
  address:"11B Route de la Gare, 13570 Barbentane",
  description: "J'aime les chiffres, le théatre, le piment d'espelette et les animaux",
  habitation_type: "Maison",
  email: "MichaelGastal@gmail.com",
  password: "123456"
})

user4.save # -> A UTILISER LE JOUR DE LA DEMO, NE RIEN FAIRE DESSUS

user5 = User.new({
  first_name: "Laure",
  last_name: "Giordano",
  username: "LauDu13",
  age: 45,
  address:"3 Rue Boris Vian, 13730 Saint-Victoret",
  description: "Hôtesse de l'air, indépendante, maman d'un petit garçon de 8 ans.",
  habitation_type: "Maison",
  email: "LaureGiordano@gmail.com",
  password: "123456"
})

user5.save # -> GrandParents/Parents partent en maison de retraite

user6 = User.new({
  first_name: "Paul",
  last_name: "Enta",
  username: "GastronoGeek",
  age: 54,
  address:"23 Rue Adolphe Thiers, 13001 Marseille",
  description: "Chef étoilé dans un restaurant gastronomique de Marseille, je pars bientôt au Canada ouvrir un nouveau restaurant",
  habitation_type: "Appartement",
  email: "PaulEnta@gmail.com",
  password: "123456"
})

user6.save # -> Doit partir à l'étranger pour son travail

user7 = User.new({
  first_name: "Jean",
  last_name: "Neymar",
  username: "Footix2000",
  age: 37,
  address:"9 Avenue Cyrnos, 13009 Marseille",
  description: "J'aime le foot, la pétanque, la mer et le rap #LeJcestLeS.",
  habitation_type: "Maison",
  email: "JeanNeymar@gmail.com",
  password: "123456"
})

user7.save # -> Son animal est revenu après s'être enfuit, quelques semaines plus tard, il apprend qu'elle est enceinte

user8 = User.new({
  first_name: "Julien",
  last_name: "Chnédaire",
  username: "JCH",
  age: 34,
  address:"Avenue Domrémy, 13400 Aubagne",
  description: "J'aime les animaux, les belles voitures et les films de gangster.",
  habitation_type: "Maison",
  email: "contactJCH@gmail.com",
  password: "123456"
})

user8.save # -> Recueille les animaux abandonnés qu'elle trouve, mais en a bcp et ne peux pas s'en occuper correctement

user9 = User.new({
  first_name: "Pauline",
  last_name: "Florence",
  username: "SPAforLife",
  age: 48,
  address:"Route de la Tour d'Arbois, 13290 Aix-en-Provence",
  description: "Depuis toute petite, j'admire les personnes travaillant à la SPA. Aujourd'hui, je leur prête main forte dès que faire ce peut.",
  habitation_type: "Maison",
  email: "contactSPA@gmail.com",
  password: "123456"
})

user9.save # -> Travaille pour la SPA

user10 = User.new({
  first_name: "Emma",
  last_name: "Cenni",
  username: "4PatPatrouille",
  age: 52,
  address:"Quartier Tuilière et Clarisse, 62 Chemin du Bout de Nice, 13530 Trets",
  description: "Je représente l'association 4Pat' Pour 2 Mains située a Trets, nous receuillons les animaux abandonnés pour leur donner une seconde vie.",
  habitation_type: "Maison",
  email: "4patpour2mains@gmail.com",
  password: "123456"
})

user10.save # -> Gère une association locale pour les animaux

puts "users created !"

# puts "pets creation..."

# pet1 = Pet.new({
#     category: "Chien",
#     name: "Medor",
#     years: 5,
#     description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum.",
#     race: "Labrador",
#     size: "Grand",
#     hair: "Court",
#     personality: "Sociable",
#     gender: "Mâle",
#     address: "34 Rue Nicole Zemmour, 13009 Marseille",
#     adopted: true,
#     age_description: ""
# })
# pet1.user = user1
# pet1.save

# pet2 = Pet.new({
#     category: "Chat",
#     name: "Minnie",
#     years: 2,
#     description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum.",
#     race: "Autre",
#     size: "Petit",
#     hair: "Long",
#     personality: "Fort caractère",
#     gender: "Femelle",
#     address: "Rue des Champs Elysées 13230 Port-Saint-Louis-du-Rhône",
#     adopted: true,
#     age_description: ""
# })
# pet2.user = user2
# pet2.save

# pet3 = Pet.new({
#     category: "Chat",
#     name: "Puce",
#     months: 10,
#     description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum.",
#     race: "Siamois",
#     size: "Petit",
#     hair: "Court",
#     personality: "Calme",
#     gender: "Femelle",
#     address: "Rue des Champs Elysées 13230 Port-Saint-Louis-du-Rhône",
#     adopted: true,
#     age_description: ""
# })
# pet3.user = user2
# pet3.save

# pet4 = Pet.new({
#   category: "Chat",
#   name: "Foufou",
#   years: 2,
#   months: 6,
#   description: "Foufou est un chat de 2 ans et demi très joueur et sociable qui adore les câlins. Il est un peu bizarre parce qu'il est passé à la machine",
#   address: "Saint-géniès-de-comolas, 30150",
#   race: "Autre",
#   size: "Moyen",
#   hair: "Long",
#   personality: "Sociable",
#   gender: "Mâle",
#   adopted: false,
#   age_description: ""
# })

# pet4.user = user4
# pet4.save

# pet5 = Pet.new({
#   category: "Chien",
#   name: "Poulette",
#   years: 1,
#   months: 6,
#   description: "Poulette est une magnifique chienne très calme. Elle a 1 an et demi, adore les humains et surtout les enfants.",
#   address: "Saint-géniès-de-comolas, 30150",
#   race: "Chien-Loup",
#   size: "Grand",
#   hair: "Long",
#   personality: "Calme",
#   gender: "Femelle",
#   adopted: false,
#   age_description: ""
# })

# pet5.user = user3
# pet5.save

# puts "pets created !"
