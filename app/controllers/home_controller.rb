class HomeController < ApplicationController
  def index
    @search = Product.all.ransack params[:q]
    @products = @search.result.page(params[:page]).per(params[:limit] || Settings.show_limit.limit)
    @products_box1, @products_box2 = @products.each_slice(3).to_a
  end
end
