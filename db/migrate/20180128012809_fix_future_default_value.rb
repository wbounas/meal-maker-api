# frozen_string_literal: true

class FixFutureDefaultValue < ActiveRecord::Migration[5.1]
  def change
    change_column :ingredients, :future, :boolean, default: false
  end
end
