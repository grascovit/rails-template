# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.4.5'

gem 'mailgun-ruby', '~> 1.3.9'
gem 'pg', '~> 1.6.1'
gem 'puma', '~> 6.6.1'
gem 'rails', '~> 8.0.2'
gem 'turbo-rails', '~> 2.0.16'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'vite_rails', '~> 3.0.19'

group :development, :test do
  gem 'dotenv-rails', '~> 3.1.8'
  gem 'factory_bot_rails', '~> 6.5.0'
  gem 'faker', '~> 3.5.2'
  gem 'pry', '~> 0.15.2'
  gem 'rspec-rails', '~> 8.0.1'
end

group :development do
  gem 'foreman', '~> 0.90.0'
  gem 'letter_opener', '~> 1.10.0'
  gem 'rubocop-rails', '~> 2.32.0', require: false
end

group :test do
  gem 'shoulda-matchers', '~> 6.5.0'
end
