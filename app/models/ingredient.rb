class Ingredient < ApplicationRecord
  belongs_to :user
  validates :name, :unit, :quantity, :future, :user, presence: true
end
