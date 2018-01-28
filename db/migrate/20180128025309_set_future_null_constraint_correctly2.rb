# frozen_string_literal: true

class SetFutureNullConstraintCorrectly2 < ActiveRecord::Migration[5.1]
  def change
    change_column_null(
      :ingredients,
      :future,
      false,
      false
    )
  end
end
