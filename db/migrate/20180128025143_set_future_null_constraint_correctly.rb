# frozen_string_literal: true

class SetFutureNullConstraintCorrectly < ActiveRecord::Migration[5.1]
  def change
    # - NOTE -
    # this is a failed migration
    # commented out to skip it over

    # this failed due to having existing records in the ingredients resource
    # that already contained a null value for :future

    # change_column_null(
    #   :ingredients,
    #   :future,
    #   false
    # )
  end
end
