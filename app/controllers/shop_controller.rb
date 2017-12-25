class ShopController < ApplicationController
  def index
    @search = Product.all.ransack params[:q]
    @products = @search.result.page(params[:page]).per(params[:limit] || Settings.show_limit.limit)
    @products_sliced = @products.each_slice(3).to_a
  end
end
