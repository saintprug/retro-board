source 'https://rubygems.org'

gem 'rake'
gem 'hanami',       '~> 1.2'
gem 'hanami-model', '~> 1.2'

# dry
gem 'dry-monads', '~> 1.0.0.rc1'
gem 'dry-system'
gem 'dry-system-hanami', github: 'davydovanton/dry-system-hanami'

# auth
gem 'kan'
gem 'omniauth', '~> 1.8.1'
gem 'omniauth-github', '~> 1.3.0'

gem 'sqlite3'
gem 'iodine'

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem 'shotgun', platforms: :ruby
  gem 'hanami-webconsole'
end

group :test, :development do
  gem 'dotenv', '~> 2.0'
end

group :test do
  gem 'minitest'
  gem 'capybara'
end

group :production do
  # gem 'puma'
end
