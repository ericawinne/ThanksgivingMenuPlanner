require 'rails_helper'

RSpec.describe Recipe, type: :model do
  #test for db columns
  #test validations and associations 
  describe "schema" do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:user_id).of_type(:integer) }
    it { is_expected.to have_db_column(:created_at).of_type(:integer) }
    it { is_expected.to have_db_column(:updated_at).of_type(:integer) }
    it { is_expected.to have_db_column(:instructions).of_type(:integer) }
    it { is_expected.to have_db_column(:image).of_type(:integer) }
  end

  describe "associations and validations" do 
    it { should belong_to(:user).optional }

    it { should have_many(:shopping_list_items) }

    it { should have_many(:ingredients).through(:shopping_list_items) }

    it { should validate_presence_of(:name) }

    it { should validate_presence_of(:ingredients) }

    it { should validate_presence_of(:instructions) }

    it { should accept_nested_attributes_for(:ingredients) }
  end
end