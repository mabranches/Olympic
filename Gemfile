source 'https://rubygems.org'

ruby '2.3.1'

gem 'rails', '4.2.6'
gem 'rails-api'
gem 'sqlite3'
#gem 'jsonapi-resources', path: '/home/manoel/projects/jsonapi-resources'
gem 'jsonapi-resources', git: 'git@github.com:cerebris/jsonapi-resources.git', ref: 'ce94ced08c3f8db1b2b3ffd7f67925fd50f4cf81'
gem 'swagger_rails'
group :development, :test do
  gem 'byebug'
 gem 'seed_dump'
end

group :test do
  gem 'db-query-matchers'
  gem 'simplecov', require: false
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
end
