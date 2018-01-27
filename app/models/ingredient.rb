class Ingredient < ApplicationRecord
  belongs_to :user
  validates :name, :unit, :quantity, :user, presence: true
end
