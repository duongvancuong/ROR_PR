FactoryBot.define do
  factory :product_category do
    association :product

    trait :product_category_brand do
      association :category, :brand_category
    end
    trait :product_category_color do
      association :category, :color_category
    end
    trait :product_category_style do
      association :category, :style_category
    end
  end
end
