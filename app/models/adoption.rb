class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :pet
  has_one :chatroom

  validates :adoption_message, presence: true, length: { minimum: 20 }
end
