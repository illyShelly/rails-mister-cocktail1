class Cocktail < ApplicationRecord
  # added manually when playing in rails c to see Cocktail.dose
  # dependent: destroy - in seeds.rb to clean first whole database, then seed it
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  has_many :reviews

  validates :name, uniqueness: true, presence: true
end
