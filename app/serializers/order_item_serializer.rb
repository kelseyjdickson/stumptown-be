class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :qty
  has_one :order
  has_one :item
end
