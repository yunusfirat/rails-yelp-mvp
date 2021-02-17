class Review < ApplicationRecord
    validates :content, :rating, presence: true
    belongs_to :restaurant
    validates :rating, numericality: { only_integer: true}
    # A review’s rating must be a number between 0 and 5.
    validates :rating, inclusion: 0..5
end
