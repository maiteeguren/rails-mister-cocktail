class Review < ApplicationRecord
  belongs_to :cocktail

  validates :user, uniqueness: true, presence: true
  validates :cocktail, presence: true
  validates :description, presence: true
  validates :rating, uniqueness: true, inclusion: { in: (1..5) }
end
