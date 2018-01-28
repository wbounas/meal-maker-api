class ChangeFutureToFalse < ActiveRecord::Migration[5.1]
  def change
    change_column_default :ingredients, :future, false
  end
end
