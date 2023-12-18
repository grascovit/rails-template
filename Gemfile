# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

gem 'pg', '~> 1.5.4'
gem 'puma', '~> 6.4.0'
gem 'rails', '~> 7.1.2'
gem 'redis', '~> 5.0.8'
gem 'turbo-rails', '~> 1.5.0'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'vite_rails', '~> 3.0.17'

group :development, :test do
  gem 'dotenv-rails', '~> 2.8.1'
  gem 'pry', '~> 0.14.2'
  gem 'rspec-rails', '~> 6.1.0'
end

group :development do
  gem 'foreman', '~> 0.87.2'
  gem 'rubocop-rails', '~> 2.23.0', require: false
end
