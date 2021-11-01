require 'rails_helper'

RSpec.describe ShoppingListItem, type: :model do
  it { should belong_to(:recipe) }
end

RSpec.describe ShoppingListItem, type: :model do
  it { should belong_to(:ingredient) }
end