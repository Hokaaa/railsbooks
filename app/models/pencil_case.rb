class PencilCase < ApplicationRecord
    belongs_to :orderitem
    has_many :category #change to type, add level
end