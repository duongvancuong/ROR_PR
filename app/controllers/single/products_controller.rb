class Single::ProductsController < ApplicationController
  before_action :load_categories, :load_product

  def show
    @search = Product.all.ransack params[:q]
  end

  private
  def load_product
    @product ||= Product.find_by(id: params[:id])
  end

  def load_categories
    categories_product = Category.select("categories.*, count(products.id) AS product_count").joins("LEFT OUTER JOIN shoes_shop.product_categories ON shoes_shop.categories.id = shoes_shop.product_categories.category_id LEFT OUTER JOIN shoes_shop.products ON shoes_shop.products.id = shoes_shop.product_categories.product_id").group("categories.id")
    @categories ||= categories_product.group_by(&:type)
  end
end
