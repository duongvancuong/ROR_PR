class BaseQuery::WithLessPriceQuery < BaseQuery
  def initialize price
    @price = price
  end

  def call relation
    relation.where("price < ?", @price)
  end
end
