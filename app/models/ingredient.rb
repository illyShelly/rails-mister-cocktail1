class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses

  validates :name, uniqueness: true, presence: true

end

# Without has_many :doses

# Ingredient.doses
# NoMethodError: undefined method `doses' for #<Class:0x00007fad6fa7d158>
#   from (irb):5
# irb(main):006:0> Ingredient.errors
# NoMethodError: undefined method `errors' for #<Class:0x00007fad6fa7d158>
#   from (irb):6
# irb(main):007:0>
