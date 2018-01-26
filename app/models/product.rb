class Product < ApplicationRecord
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :photos

  accepts_nested_attributes_for :photos
end
