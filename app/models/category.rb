class Category < ApplicationRecord
  has_many :category_maps
  has_many :posts, through: :category_maps
end
