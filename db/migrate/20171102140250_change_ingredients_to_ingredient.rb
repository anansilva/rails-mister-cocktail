class ChangeIngredientsToIngredient < ActiveRecord::Migration[5.0]
  def change
    rename_column :doses, :ingredients_id, :ingredient_id
  end
end
