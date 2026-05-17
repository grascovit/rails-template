# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.4.8'

gem 'dotenv-rails', '~> 3.2.0'
gem 'jwt', '~> 3.2.0'
gem 'mailgun-ruby', '~> 1.4.3'
gem 'pg', '~> 1.6.3'
gem 'puma', '~> 8.0.1'
gem 'rails', '~> 8.1.3'
gem 'turbo-rails', '~> 2.0.23'
gem 'tzinfo-data', '~> 1.2026.2', platforms: %i[mingw mswin x64_mingw jruby]
gem 'vite_rails', '~> 3.11.0'

group :development, :test do
  gem 'factory_bot_rails', '~> 6.5.1'
  gem 'faker', '~> 3.8.0'
  gem 'pry', '~> 0.16.0'
  gem 'rspec-rails', '~> 8.0.4'
end

group :development do
  gem 'foreman', '~> 0.90.0'
  gem 'letter_opener', '~> 1.10.0'
  gem 'rubocop-rails', '~> 2.35.1', require: false
end

group :test do
  gem 'shoulda-matchers', '~> 7.0.1'
end
