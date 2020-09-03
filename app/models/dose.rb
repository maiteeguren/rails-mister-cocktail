class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  
  validates :cocktail, uniqueness: { scope: :ingredient }
  validates :ingredient, uniqueness: { scope: :cocktail }
  validates :description, presence: true
end
