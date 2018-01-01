source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", ">= 5.1.1"
gem "mysql2"
gem "config"
gem "puma", "~> 3.0"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "jquery-rails"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
# gem "angular-rails-templates"
gem "grape"
gem "active_model_serializers"
gem "grape-active_model_serializers"
gem "sinatra", require: false
gem "kaminari"
gem "bootstrap-kaminari-views"
gem "carrierwave"
gem "mini_magick"
gem "ransack"
gem "config"
gem "draper"

group :development, :test do
  gem "byebug", platform: :mri
  gem "pry"
  gem "factory_bot"
  gem "factory_bot_rails"
  gem "rspec"
  gem "rspec-rails"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "spring-commands-rspec"
  gem "guard"
  gem "figaro"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
