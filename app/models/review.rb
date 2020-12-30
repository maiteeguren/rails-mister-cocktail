class Review < ApplicationRecord
  belongs_to :cocktail

  validates :user, uniqueness: { scope: :cocktail }, presence: true
  validates :cocktail, presence: true
  validates :description, presence: true
  validates :rating, presence:true, inclusion: { in: (1..5) }
end
