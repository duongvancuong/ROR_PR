require "open-uri"

FactoryBot.define do
  factory :photo do
    product_id 1
    image {File.open("#{Rails.root}/app/assets/images/pic1.jpg")}
  end
end
