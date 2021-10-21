# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(username: 'Erica')
# User.create(username: 'Benny')
# User.create(username: 'Walle')

Ingredient.create(name: 'Butter')
Ingredient.create(name: 'Salt')
Ingredient.create(name: 'Pepper')
Ingredient.create(name: 'Milk')
Ingredient.create(name: 'Bread Crumbs')
Ingredient.create(name: 'Garlic')

Recipe.create(name: 'Turkey', user_id: 1)
Recipe.create(name: 'Stuffing', user_id: 1)
Recipe.create(name: 'Corn', user_id: 1)
Recipe.create(name: 'Green Bean Casserole', user_id: 1)





