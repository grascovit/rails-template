# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.3.6'

gem 'mailgun-ruby', '~> 1.2.15'
gem 'pg', '~> 1.5.9'
gem 'puma', '~> 6.4.3'
gem 'rails', '~> 8.0.0'
gem 'turbo-rails', '~> 2.0.6'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'vite_rails', '~> 3.0.19'

group :development, :test do
  gem 'dotenv-rails', '~> 3.1.4'
  gem 'factory_bot_rails', '~> 6.4.4'
  gem 'faker', '~> 3.5.1'
  gem 'pry', '~> 0.14.2'
  gem 'rspec-rails', '~> 7.1.0'
end

group :development do
  gem 'foreman', '~> 0.88.1'
  gem 'letter_opener', '~> 1.10.0'
  gem 'rubocop-rails', '~> 2.27.0', require: false
end

group :test do
  gem 'shoulda-matchers', '~> 6.4.0'
end
