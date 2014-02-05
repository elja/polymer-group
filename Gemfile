source 'https://rubygems.org'

gem 'rails', '3.2.15'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'capistrano', '~> 3.1.0'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'

  gem 'sqlite3'
  gem 'zeus'
end

group :production do
  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

#for weather support
#gem 'barometer'

#for currency rates
#gem 'savon', '~> 2.3.0'

#for google maps
gem 'gmaps4rails'

#for cron support
gem 'whenever', :require => false

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

# Refinery CMS
gem 'refinerycms', '~> 2.1.0'
gem 'refinerycms-inquiries', '~> 2.1.0'

# Optionally, specify additional Refinery CMS Extensions here:

gem 'refinerycms-settings'
gem 'refinerycms-acts-as-indexed', '~> 1.0.0'
gem 'refinerycms-photo-gallery', path: 'vendor'
gem 'refinerycms-sl-snippets', '~> 1.1.0', :require => 'refinerycms-snippets'
gem 'refinerycms-i18n'


#  gem 'refinerycms-blog', '~> 2.1.0'
#  gem 'refinerycms-search', '~> 2.1.0'
#  gem 'refinerycms-page-images', '~> 2.1.0'
