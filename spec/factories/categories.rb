FactoryBot.define do
  factory :category do
    sequence(:name) { |n| "Category#{n}" }

    trait :style_category do
      type Category::Style.name
    end
    trait :color_category do
      type Category::Color.name
    end
    trait :brand_category do
      type Category::Brand.name
    end
  end
end
