class Dose < ApplicationRecord
  # automatically created in terminal: rails g model Dose description: string cocktail: references ingredient: references
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true

  validates :cocktail, uniqueness: { scope: :ingredient }
end
