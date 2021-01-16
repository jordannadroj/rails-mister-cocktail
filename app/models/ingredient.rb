class Ingredient < ApplicationRecord
  INGREDIENT = %w(lemon ice mint)

  has_many :doses
  validates :name, presence: true, uniqueness: true
end
