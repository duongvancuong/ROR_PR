class BaseQuery::WithMorePriceQuery < BaseQuery
  def initialize price
    @price = price
  end

  def call relation
    relation.where("price > ?", @price)
  end
end
