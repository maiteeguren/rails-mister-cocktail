class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :measure

  
  #validates :cocktail, uniqueness: { scope: :ingredient }
  #validates :ingredient, uniqueness: { scope: :cocktail }, presence: true
  validates :amount, presence: true
  validates :measure, presence: true
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail }
end
