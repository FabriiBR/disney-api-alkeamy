class Character < ApplicationRecord
    has_many :castings
    has_many :films, through: :castings
    validates :name, uniqueness: true
    validates :name, :age, :history, presence: true
end
