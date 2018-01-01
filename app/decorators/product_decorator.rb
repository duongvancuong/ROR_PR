class ProductDecorator < Draper::Decorator
  delegate_all

  def desc_product
    object.description
  end

  def cate_product
  end
end
