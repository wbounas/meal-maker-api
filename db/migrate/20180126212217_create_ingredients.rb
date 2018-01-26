class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :unit
      t.integer :quantity
      t.string :notes
      t.boolean :future

      t.timestamps
    end
  end
end
