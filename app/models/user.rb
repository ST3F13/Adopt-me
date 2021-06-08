class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo
  has_many :pets
  has_many :adoptions
  has_many :messages

  validates :first_name, presence: true, length: { minimum: 3 }
  validates :last_name, presence: true, length: { minimum: 3 }
  validates :username, presence: true, uniqueness: true, length: { minimum: 6 }
  validates :age, presence: true, numericality: { only_integer: true }
  validates :address, presence: true
  validates :description, presence: true, length: { minimum: 50 }
  validates :habitation_type, presence: true, inclusion: { in: ["Maison", "Appartement", "Loft", "Studio"] }
  validates :garden, presence: true
  validates :animals, presence: true
  validates :children, presence: true
end
