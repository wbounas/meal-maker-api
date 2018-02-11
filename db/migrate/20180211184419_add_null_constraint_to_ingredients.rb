class AddNullConstraintToIngredients < ActiveRecord::Migration[5.1]
  def change
    change_column_null(:ingredients, :name, false)
    change_column_null(:ingredients, :unit, false)
    change_column_null(:ingredients, :quantity, false)
  end
end
