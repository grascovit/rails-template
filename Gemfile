# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.3'

gem 'jwt', '~> 2.8.1'
gem 'mailgun-ruby', '~> 1.2.14'
gem 'pg', '~> 1.5.6'
gem 'puma', '~> 6.4.2'
gem 'rails', '~> 7.1.3.2'
gem 'redis', '~> 5.2.0'
gem 'turbo-rails', '~> 2.0.5'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'vite_rails', '~> 3.0.17'

group :development, :test do
  gem 'dotenv-rails', '~> 3.1.2'
  gem 'factory_bot_rails', '~> 6.4.3'
  gem 'faker', '~> 3.3.1'
  gem 'pry', '~> 0.14.2'
  gem 'rspec-rails', '~> 6.1.2'
end

group :development do
  gem 'foreman', '~> 0.88.1'
  gem 'letter_opener', '~> 1.10.0'
  gem 'rubocop-rails', '~> 2.24.1', require: false
end

group :test do
  gem 'shoulda-matchers', '~> 6.2.0'
end
