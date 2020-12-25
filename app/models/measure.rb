class Measure < ApplicationRecord
    has_many :doses

    validates :unit, presence: true
end
