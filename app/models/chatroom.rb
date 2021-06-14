class Chatroom < ApplicationRecord
  belongs_to :adoption
  has_many :messages
end
