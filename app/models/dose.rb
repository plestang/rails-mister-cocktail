class Dose < ApplicationRecord
  # associations
  belongs_to :cocktail
  belongs_to :ingredient
  #validations
  validates :description, presence: true
  validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]
end
