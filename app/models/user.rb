class User < ApplicationRecord
  has_many :recipes

  validates :username, presence: true
end
