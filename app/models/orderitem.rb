class PencilCase < ApplicationRecord
    belongs_to :orderitem
    has_many :category
end
