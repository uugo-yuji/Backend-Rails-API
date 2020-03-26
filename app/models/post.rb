class Post < ApplicationRecord
  has_many :category_maps
  has_many :categorys, through: :category_maps

  has_many :comments
end
