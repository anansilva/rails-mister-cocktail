class ChangeCocktailsToCocktail < ActiveRecord::Migration[5.0]
  def change
    rename_column :doses, :cocktails_id, :cocktail_id
  end
end
