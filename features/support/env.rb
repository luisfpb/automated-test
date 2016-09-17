require 'selenium/webdriver'
require 'capybara'
require 'rspec'
require 'site_prism'
require 'capybara/cucumber'
require 'sauce'
require 'sauce/capybara'

SitePrism.configure do |config|
  config.use_implicit_waits = true
end
