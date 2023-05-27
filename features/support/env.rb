require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'rspec'
require 'rspec/expectations'
require_relative 'pageinicializer.rb'
include RSpec::Matchers

Environment = ENV['URL']

World(Page)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = Environment
    config.default_max_wait_time = 5
end  