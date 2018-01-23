class CategoryDecorator < Draper::Decorator
  delegate_all

  def name_category
    object.type.split("::").last
  end
end
