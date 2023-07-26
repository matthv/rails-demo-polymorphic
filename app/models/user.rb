class User < ApplicationRecord
  has_many :addresses, as: :addressable
end
