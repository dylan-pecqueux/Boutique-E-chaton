class Product < ApplicationRecord
    has_one_attached :image 
    has_many :line_items
    has_many :carts, through: :line_items
end
