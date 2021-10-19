class Recipe < ApplicationRecord
  belongs_to :user
  has_many :shopping_list_items
  has_many :ingredients, through: :shopping_list_items

  validates :name, presence: true

  accepts_nested_attributes_for :ingredients, :shopping_list_items
end
