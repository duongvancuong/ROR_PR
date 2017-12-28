class Product < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :product_categories
  has_many :categories, through: :product_categories
end
