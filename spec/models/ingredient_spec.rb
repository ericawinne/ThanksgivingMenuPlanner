require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  it { should have_many(:shopping_list_items) }
end

RSpec.describe Ingredient, type: :model do
  it { should have_many(:recipes).through(:shopping_list_items) }
end