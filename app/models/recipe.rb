class Recipe < ApplicationRecord
  belongs_to :user, optional: true 
  has_many :shopping_list_items
  has_many :ingredients, through: :shopping_list_items
  has_one_attached :image

  validates :name, presence: true

  accepts_nested_attributes_for :ingredients, reject_if: proc { |attributes| attributes['name'].blank? }
end
