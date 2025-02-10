# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.3.7'

gem 'mailgun-ruby', '~> 1.3.1'
gem 'pg', '~> 1.5.9'
gem 'puma', '~> 6.5.0'
gem 'rails', '~> 8.0.1'
gem 'turbo-rails', '~> 2.0.11'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'vite_rails', '~> 3.0.19'

group :development, :test do
  gem 'dotenv-rails', '~> 3.1.7'
  gem 'factory_bot_rails', '~> 6.4.4'
  gem 'faker', '~> 3.5.1'
  gem 'pry', '~> 0.15.2'
  gem 'rspec-rails', '~> 7.1.1'
end

group :development do
  gem 'foreman', '~> 0.88.1'
  gem 'letter_opener', '~> 1.10.0'
  gem 'rubocop-rails', '~> 2.29.1', require: false
end

group :test do
  gem 'shoulda-matchers', '~> 6.4.0'
end
