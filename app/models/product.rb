class Product < ApplicationRecord
    belongs_to :orderitem
    has_many :book
end
