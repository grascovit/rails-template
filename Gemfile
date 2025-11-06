# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.4.5'

gem 'jwt', '~> 3.1.2'
gem 'mailgun-ruby', '~> 1.4.0'
gem 'pg', '~> 1.6.2'
gem 'puma', '~> 7.1.0'
gem 'rails', '~> 8.1.0'
gem 'turbo-rails', '~> 2.0.20'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'vite_rails', '~> 3.0.19'

group :development, :test do
  gem 'dotenv-rails', '~> 3.1.8'
  gem 'factory_bot_rails', '~> 6.5.1'
  gem 'faker', '~> 3.5.2'
  gem 'pry', '~> 0.15.2'
  gem 'rspec-rails', '~> 8.0.2'
end

group :development do
  gem 'foreman', '~> 0.90.0'
  gem 'letter_opener', '~> 1.10.0'
  gem 'rubocop-rails', '~> 2.33.4', require: false
end

group :test do
  gem 'shoulda-matchers', '~> 6.5.0'
end
