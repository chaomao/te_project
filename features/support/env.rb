ENV["RAILS_ENV"] ||= 'test'
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'pry'

Capybara.configure do |config|
  config.match = :prefer_exact
  config.ignore_hidden_elements = false
end

Capybara.default_wait_time = 10
Capybara.default_driver = :selenium
Capybara.run_server = false

World(Capybara)