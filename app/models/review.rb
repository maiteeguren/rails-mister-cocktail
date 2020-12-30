class Review < ApplicationRecord
  belongs_to :cocktail
  belongs_to :user

  validates :user, uniqueness: { scope: :cocktail }, presence: true
  validates :cocktail, presence: true
  validates :content, presence: true
  validates :rating, presence:true, inclusion: { in: (1..5) }
end
