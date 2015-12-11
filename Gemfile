source 'https://rubygems.org'

# Project requirements
gem 'rake'

# Component requirements
gem 'haml'
gem 'activerecord', '>= 3.1', :require => 'active_record'
gem 'pg'
gem 'padrino-warden'
gem 'bcrypt'


# Padrino Stable Gem
gem 'padrino', '0.13.0'



group :test do

  gem 'minitest', require: 'minitest/autorun'
  gem 'minitest-reporters', require: false
  gem 'rack-test', require: 'rack/test'

  # guard runs tests
  gem 'guard'
  gem 'guard-minitest', require: false
  gem 'terminal-notifier-guard', require: false
  gem 'rb-fsevent', require: false

  # pry for debugging
  gem 'pry', require: false
  gem 'pry-padrino', require: false
  gem 'better_errors'
  gem 'binding_of_caller'

  gem 'did_you_mean'

end
