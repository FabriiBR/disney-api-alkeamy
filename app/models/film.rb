class Film < ApplicationRecord
    has_many :characters, through: :castings
    validates :title, uniqueness: { case_sensitive: true}
    validates :title, :genre, :directed_by, presence: true
end
