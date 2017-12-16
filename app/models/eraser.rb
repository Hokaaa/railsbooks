class Eraser < ApplicationRecord
    has_many :category
    belongs_to :orderitem
end
