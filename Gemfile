source 'http://rubygems.org'

gem 'rails', '3.0.0.beta4'
gem 'sqlite3-ruby', :require => 'sqlite3'
gem "database_cleaner", :git => "git://github.com/bmabey/database_cleaner.git",      :branch => "master"

group :development, :test do
  gem "rspec-rails", ">= 2.0.0.beta.17"
end

group :test do
  gem "capybara"
  gem "cucumber"
  gem "cucumber-rails"
  gem "factory_girl", :git => "git://github.com/szimek/factory_girl.git", :branch => "rails3"
  gem "faker"
  gem "launchy" # used to "show me the page"
  gem "ZenTest"
  gem "autotest-rails"
end
