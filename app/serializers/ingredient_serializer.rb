class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :unit, :quantity, :notes, :future
end
