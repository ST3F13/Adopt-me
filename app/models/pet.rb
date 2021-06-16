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
  # validates :months, numericality: { only_integer: true }
  # validates :years, numericality: { only_integer: true }
  validates :description, presence: true, length: { minimum: 50 }
  validates :address, presence: true
  validates :race, presence: true
  validates :size, presence: true, inclusion: { in: SIZE }
  validates :hair, presence: true, inclusion: { in: HAIR }
  validates :personality, presence: true, inclusion: { in: PERSONALITY }
  validates :gender, presence: true, inclusion: { in: GENDER }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  after_validation :set_pet_age

  private

  def set_pet_age
    @pet = self
    if @pet.years.nil?
      @pet.years = 0
    end
    if @pet.months.nil?
      @pet.months = 0
    end
    if @pet.months >= 12
      set_months = (@pet.months % 12)
      set_years = (@pet.months / 12).floor
      @pet.months = set_months
      @pet.years += set_years
    end
    if @pet.months.positive?
      if @pet.years.positive?
        if @pet.years == 1
          @pet.age_description = "#{@pet.years} an et #{@pet.months} mois"
        else
          @pet.age_description = "#{@pet.years} ans et #{@pet.months} mois"
        end
      else
        @pet.age_description = "#{@pet.months} mois"
      end
    elsif @pet.years.positive?
      if @pet.years == 1
        @pet.age_description = "#{@pet.years} an"
      else
        @pet.age_description = "#{@pet.years} ans"
      end
    else
      @pet.age_description = "Non renseigné"
    end
  end
end
