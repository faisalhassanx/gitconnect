source 'https://rubygems.org'
ruby '2.4.1'

gem 'rails', '~> 5.1.0.rc1'
gem 'puma', '~> 3.7'
gem 'normalize-rails'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'sass-rails'
gem 'font-awesome-sass', '~> 4.7.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'hirb', '~> 0.7.3'
gem 'devise', '~> 4.2'
gem 'stripe', '1.48.0'
gem 'figaro', '1.1.1'
gem "paperclip", "~> 5.0.0"

# gem 'redis', '~> 3.0'
# gem 'bcrypt','~> 3.1.7'

# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13.0'
  gem 'selenium-webdriver'
  gem 'sqlite3'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'guard'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
