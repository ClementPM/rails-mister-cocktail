class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :ingredient, presence: true
  validates :description, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail }
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
end
