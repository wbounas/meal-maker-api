# frozen_string_literal: true

class Ingredient < ApplicationRecord
  belongs_to :user
  validates :name, :unit, :quantity, :user, presence: true, on: :create
end
