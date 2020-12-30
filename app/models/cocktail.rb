class Cocktail < ApplicationRecord
    has_many :doses, dependent: :destroy
    #has_many :ingredients, through: :doses, dependent: :destroy
    has_many :measures, through: :doses, dependent: :destroy
    has_one_attached :photo
    has_many :reviews, dependent: :destroy
    belongs_to :user

    validates :name, uniqueness: true, presence: true
    validates :user, presence: true
end
