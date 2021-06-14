class Pet < ApplicationRecord
  belongs_to :user
  has_many :adoptions
  has_many_attached :photos

  TYPES = ["Chien", "Chat"]
  SIZE = ["Petit", "Moyen", "Grand"]
  HAIR = ["Court", "Long"]
  PERSONALITY = ["Sociable", "Joueur", "Calme", "Energique", "Fort caractère"]
  GENDER = ["Mâle", "Femelle"]

  validates :category, presence: true, inclusion: { in: TYPES }
  validates :name, presence: true
  validates :months, presence: true, numericality: { only_integer: true }
  validates :years, presence: true, numericality: { only_integer: true }
  validates :description, presence: true, length: { minimum: 50 }
  validates :address, presence: true
  validates :race, presence: true
  validates :size, presence: true, inclusion: { in: SIZE }
  validates :hair, presence: true, inclusion: { in: HAIR }
  validates :personality, presence: true, inclusion: { in: PERSONALITY }
  validates :gender, presence: true, inclusion: { in: GENDER }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
