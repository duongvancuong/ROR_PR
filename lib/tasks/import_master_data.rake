require "csv"

namespace :master_data do
  desc "ReCreate Master Data"
  task import: :environment do
    [Category, Product, ProductCategory].each do |model|
      create_master model
    end
  end
end

def create_master model, folder = "masters"
  puts "== Load #{model}"
  CSV.foreach(Rails.root.join("db", folder, "#{model.table_name}.csv"), headers: true) do |row|
    attrs = row.to_h.symbolize_keys
    instance = model.find_by(attrs[:id] ? {id: attrs[:id]} : attrs) || model.new
    instance.assign_attributes attrs
    instance.save validate: false
  end
end
