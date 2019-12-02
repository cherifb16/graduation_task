source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
ruby '2.6.3'

gem 'rails'

gem 'puma'
gem 'pg'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails', '~> 5.0'
gem 'turbolinks'
gem 'jbuilder'
gem 'redis'
gem 'bcrypt'

gem 'bootstrap-sass'
gem 'rails-controller-testing'
gem 'jquery-rails'
gem 'better_errors', '~> 2.5', '>= 2.5.1'
gem 'will_paginate'
gem 'bootstrap-will_paginate'
gem 'ransack'
gem 'sidekiq'
gem 'resque'
gem 'resque-scheduler'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'spring-commands-rspec'
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :production do
  end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
