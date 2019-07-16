# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Validate e-mail addreses against RFC 2822 and RFC 3696 with this Ruby on Rails plugin and gem. https://github.com/validates-email-format-of/validates_email_format_of
gem 'validates_email_format_of'

# Bootstrap 4 rubygem for Rails / Sprockets / Hanami / etc https://rubygems.org/gems/bootstrap
gem 'bootstrap'
# Makes Rails' link_to confirm: 'foo' build a Bootstrap Modal instead of calling the browser's confirm() API. https://github.com/ifad/data-confirm-modal
gem 'data-confirm-modal'
# he font-awesome font bundled as an asset for the rails asset pipeline https://github.com/bokmann/font-awesome-rails
gem 'font-awesome-rails'
# A gem to automate using jQuery with Rails https://github.com/rails/jquery-rails
gem 'jquery-rails'

gem 'geocoder'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  # A Ruby static code analyzer and formatter, based on the community Ruby style guide. https://docs.rubocop.org
  gem 'rubocop'

  # rspec-rails is a testing framework for Rails 3.x, 4.x and 5.x. Read more: https://github.com/rspec/rspec-rails
  gem 'rspec-rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # A very fast & simple Ruby web server https://github.com/macournoyer/thin
  gem 'thin'

  # Guard::RSpec automatically run your specs (much like autotest) https://rubygems.org/gems/guard-rspec
  gem 'guard-rspec', require: false

  # Guard plugin for RuboCop https://github.com/yujinakayama/guard-rubocop
  gem 'guard-rubocop'

  # Rails >= 3 pry initializer https://github.com/rweng/pry-rails
  gem 'pry-rails'
end

group :test do
  # Simple one-liner tests for common Rails functionality https://matchers.shoulda.io
  gem 'shoulda-matchers'

  # Brings back `assigns` and `assert_template` to your Rails tests https://github.com/rails/rails-controller-testing
  gem 'rails-controller-testing'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
