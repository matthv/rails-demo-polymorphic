class Order < ApplicationRecord
  has_and_belongs_to_many :products
  has_one :address, as: :addressable
end
