# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.1.2'

gem 'bootsnap', require: false
gem 'devise', '~> 4.9'
gem 'grape', '~> 2.0'
gem 'grape-active_model_serializers', '~> 1.5'
gem 'grape-kaminari', '~> 0.4.5'
gem 'grape-route-helpers', '~> 2.1'
gem 'grape-swagger', '~> 2.0'
gem 'jbuilder'
gem 'kaminari', '~> 1.2'
gem 'kaminari-grape', '~> 1.0'
gem 'kaminari-mongoid', '~> 1.0'
gem 'mongoid', '~> 8.1'
gem 'puma', '>= 5.0'
gem 'pundit', '~> 2.3'
gem 'rails', '~> 7.1.3', '>= 7.1.3.2'
gem 'tzinfo-data', platforms: %i[mswin mswin64 mingw x64_mingw jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri mswin mswin64 mingw x64_mingw]
  gem 'rspec-rails', '~> 6.1'
end

group :development do
  gem 'error_highlight', '>= 0.4.0', platforms: [:ruby]
  gem 'rubocop', '~> 1.62'
  gem 'rubocop-performance', '~> 1.21'
  gem 'rubocop-rails', '~> 2.24'
  gem 'rubocop-rspec', '~> 2.29'
  gem 'web-console'
end

group :test do
  gem 'json-schema-rspec', '~> 0.0.4'
  gem 'mongoid-rspec', '~> 4.1'
  gem 'simplecov', '~> 0.22.0', require: false
end
