class Orderproduct < ApplicationRecord
    belongs_to :order
    has_many :product
end
