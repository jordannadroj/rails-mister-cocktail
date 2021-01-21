class Review < ApplicationRecord
  belongs_to :cocktail
  validates :content, :rating, presence: true
end
