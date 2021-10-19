class CreateShoppingListItems < ActiveRecord::Migration[6.1]
  def change
    create_table :shopping_list_items do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.string :quanity_notes

      t.timestamps
    end
  end
end
