class Order < ApplicationRecord
    has_many :orderitem
    belongs_to :customer
end
