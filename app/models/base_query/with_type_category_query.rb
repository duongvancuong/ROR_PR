class BaseQuery::WithTypeCategoryQuery < BaseQuery
  def initialize type
    @type = type
  end

  def call relation
    relation.where(type: @type)
  end
end
