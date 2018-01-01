class ShopController < ApplicationController
  before_action :load_categories

  def index
    @search = Product.all.ransack params[:q]
    @products = @search.result.page(params[:page]).per(params[:limit] || Settings.show_limit.limit).decorate
    @products_sliced = @products.each_slice(3).to_a
  end

  private
  def load_categories
    categories_product = Category.select("categories.*, count(products.id) AS product_count").joins("LEFT OUTER JOIN shoes_shop.product_categories ON shoes_shop.categories.id = shoes_shop.product_categories.category_id LEFT OUTER JOIN shoes_shop.products ON shoes_shop.products.id = shoes_shop.product_categories.product_id").group("categories.id")
    @categories ||= categories_product.group_by(&:type)
  end
end
