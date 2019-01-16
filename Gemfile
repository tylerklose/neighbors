# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Validate e-mail addreses against RFC 2822 and RFC 3696 with this Ruby on Rails plugin and gem. https://github.com/validates-email-format-of/validates_email_format_of
gem 'validates_email_format_of'

gem 'bootstrap'
gem 'jquery-rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  # A Ruby static code analyzer and formatter, based on the community Ruby style guide. https://docs.rubocop.org
  gem 'rubocop'

  # rspec-rails is a testing framework for Rails 3.x, 4.x and 5.x. Read more: https://github.com/rspec/rspec-rails
  gem 'rspec-rails', '~> 3.8'

  gem 'font-awesome-rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Single-threaded development server
  gem 'thin'

  # Guard::RSpec automatically run your specs (much like autotest) https://rubygems.org/gems/guard-rspec
  gem 'guard-rspec', require: false

  # Guard plugin for RuboCop https://github.com/yujinakayama/guard-rubocop
  gem 'guard-rubocop'

  gem 'pry-rails'
end

group :test do
  # Simple one-liner tests for common Rails functionality https://matchers.shoulda.io
  gem 'shoulda-matchers', '4.0.0.rc1'

  # Brings back `assigns` and `assert_template` to your Rails tests https://github.com/rails/rails-controller-testing
  gem 'rails-controller-testing'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
