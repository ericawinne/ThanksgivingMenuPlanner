class Ingredient < ApplicationRecord
  has_many :shopping_list_items
  has_many :recipes, through: :shopping_list_items

  validates :name, presence: true
end
