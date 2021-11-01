require "rails_helper"

##need to add sign in part to this test. after a user is signed in, then all this.. 

describe "when a user visits the index page" do

    it "they can create a new recipe by clicking the add new recipe button" do
      create :ingredient

      visit recipes_path

      # click_on "Add New Recipe"

      # fill_in "recipe_name", with: "Donuts"
      # attach_file("Choose File", Rails.root + "spec/fixtures/cranberry-sauce.jpeg")
      # page.check "flower"

      # Select from popular ingredients "something", with: "how???"
      # fill_in "Add a new ingredient:", with: "apples"
      # fill_in "Add instruction notes:", with: "cook in the oven for a long time"

      click_on "Create Recipe"


      expect(page).to be false
    end
end



    