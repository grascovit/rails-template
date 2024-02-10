# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.3'

gem 'jwt', '~> 2.7.1'
gem 'pg', '~> 1.5.4'
gem 'puma', '~> 6.4.2'
gem 'rails', '~> 7.1.3'
gem 'redis', '~> 5.1.0'
gem 'turbo-rails', '~> 2.0.2'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'vite_rails', '~> 3.0.17'

group :development, :test do
  gem 'dotenv-rails', '~> 2.8.1'
  gem 'factory_bot_rails', '~> 6.4.3'
  gem 'faker', '~> 3.2.3'
  gem 'pry', '~> 0.14.2'
  gem 'rspec-rails', '~> 6.1.1'
  gem 'shoulda-matchers', '~> 6.1.0'
end

group :development do
  gem 'foreman', '~> 0.87.2'
  gem 'letter_opener', '~> 1.8.1'
  gem 'rubocop-rails', '~> 2.23.1', require: false
end
