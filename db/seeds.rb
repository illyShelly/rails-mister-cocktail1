# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'

Cocktail.destroy_all

ing1 = Ingredient.new(name: "lemon")
ing1.save
ing2 = Ingredient.new(name: "ice")
ing2.save
ing3 = Ingredient.new(name: "mint leaves")
ing3.save

ck1 = Cocktail.new(name: "mojito")
ck1.save
ck2 = Cocktail.new(name: "daiquiri")
ck2.save
ck3 = Cocktail.new(name: "margarita")
ck3.save

d1 = Dose.new(description: "mix white rum with rest of ingredients")
d1.ingredient = ing1
d1.cocktail = ck1
d1.save

# I can see when rails db:seed in terminal
# puts d1
puts 'Finished!'

# whatever put rails db:seed

# in rails console
# mojito = Cocktail.all.first
#   Cocktail Load (0.6ms)  SELECT  "cocktails".* FROM "cocktails" ORDER BY "cocktails"."id" ASC LIMIT $1  [["LIMIT", 1]]
# => #<Cocktail id: 1, name: "mojito", created_at: "2018-06-07 10:34:33", updated_at: "2018-06-07 10:34:33">
# irb(main):002:0> mojito.doses
#   Dose Load (0.3ms)  SELECT  "doses".* FROM "doses" WHERE "doses"."cocktail_id" = $1 LIMIT $2  [["cocktail_id", 1], ["LIMIT", 11]]
# => #<ActiveRecord::Associations::CollectionProxy [#<Dose id: 1, description: "very tasty", cocktail_id: 1, ingredient_id: 1, created_at: "2018-06-07 10:44:12", updated_at: "2018-06-07 10:44:12">]>
# irb(main):003:0> mojito.doses.first
#   Dose Load (0.4ms)  SELECT  "doses".* FROM "doses" WHERE "doses"."cocktail_id" = $1 ORDER BY "doses"."id" ASC LIMIT $2  [["cocktail_id", 1], ["LIMIT", 1]]
# => #<Dose id: 1, description: "very tasty", cocktail_id: 1, ingredient_id: 1, created_at: "2018-06-07 10:44:12", updated_at: "2018-06-07 10:44:12">
# irb(main):004:0> dose = mojito.doses.first
#   Dose Load (0.6ms)  SELECT  "doses".* FROM "doses" WHERE "doses"."cocktail_id" = $1 ORDER BY "doses"."id" ASC LIMIT $2  [["cocktail_id", 1], ["LIMIT", 1]]
# => #<Dose id: 1, description: "very tasty", cocktail_id: 1, ingredient_id: 1, created_at: "2018-06-07 10:44:12", updated_at: "2018-06-07 10:44:12">
# irb(main):005:0> dose.ingredient
#   Ingredient Load (0.3ms)  SELECT  "ingredients".* FROM "ingredients" WHERE "ingredients"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
# => #<Ingredient id: 1, name: "lemon", created_at: "2018-06-07 10:33:17", updated_at: "2018-06-07 10:33:17">
# irb(main):006:0>

# Cocktail.all.first.doses
#   Cocktail Load (0.4ms)  SELECT  "cocktails".* FROM "cocktails" ORDER BY "cocktails"."id" ASC LIMIT $1  [["LIMIT", 1]]
#   Dose Load (0.2ms)  SELECT  "doses".* FROM "doses" WHERE "doses"."cocktail_id" = $1 LIMIT $2  [["cocktail_id", 1], ["LIMIT", 11]]
# => #<ActiveRecord::Associations::CollectionProxy [#<Dose id: 1, description: "very tasty", cocktail_id: 1, ingredient_id: 1, created_at: "2018-06-07 10:44:12", updated_at: "2018-06-07 10:44:12">]>
# irb(main):016:0>
