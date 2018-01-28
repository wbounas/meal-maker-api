class SetFutureNullConstraint < ActiveRecord::Migration[5.1]
  def change
    change_column_null(
      :ingredients,
      :future,
      true
    )
  end
end
