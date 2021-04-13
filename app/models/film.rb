class Film < ApplicationRecord
    validates :title, uniqueness: { case_sensitive: true}
    validates :title, :genre, :directed_by, presence: true
    validates :rating, inclusion: { in: %w(1 2 3 4 5)}
    has_many :castings, dependent: :destroy
    has_many :characters, through: :castings

end
