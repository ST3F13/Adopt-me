class Pet < ApplicationRecord
  belongs_to :user
  has_many :adoptions
  has_many_attached :photos

  validates :type, presence: true, inclusion: { in: ["Chien", "Chat"] }
  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :description, presence: true, length: { minimum: 50 }
  validates :race, presence: true
  validates :size, presence: true, inclusion: { in: ["Petit", "Moyen", "Grand"] }
  validates :hair, presence: true, inclusion: { in: ["Court", "Long"] }
  validates :personality, presence: true, inclusion: { in: ["Sociable", "Joueur", "Calme", "Energique", "Fort caractère"] }
  validates :gender, presence: true, inclusion: { in: ["Mâle", "Femelle"] }
  validates :child_compatibility, presence: true
  validates :garden_need, presence: true
  validates :sterilized, presence: true
  validates :puced, presence: true
  validates :tattooed, presence: true
  validates :vaccination, presence: true
end
