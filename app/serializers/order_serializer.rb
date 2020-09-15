class OrderSerializer < ActiveModel::Serializer
  attributes :id, :paid, :total
end
