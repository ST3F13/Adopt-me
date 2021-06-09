class Pet < ApplicationRecord
  belongs_to :user
  has_many :adoptions
  has_many_attached :photos

  TYPES = ["Chien", "Chat"]
  validates :category, presence: true, inclusion: { in: TYPES }
  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :description, presence: true, length: { minimum: 50 }
  validates :address, presence: true
  validates :race, presence: true
  validates :size, presence: true, inclusion: { in: ["Petit", "Moyen", "Grand"] }
  validates :hair, presence: true, inclusion: { in: ["Court", "Long"] }
  validates :personality, presence: true, inclusion: { in: ["Sociable", "Joueur", "Calme", "Energique", "Fort caractère"] }
  validates :gender, presence: true, inclusion: { in: ["Mâle", "Femelle"] }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
