require 'selenium/webdriver'
require 'rspec'
require 'site_prism'
require 'capybara/cucumber'
require 'pry'

SitePrism.configure do |config|
  config.use_implicit_waits = true
end

$driver = ENV["driver"]