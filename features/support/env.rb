
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'rspec'
require 'rspec/expectations'
require 'pry'
require 'faker'
# require 'page_objects'

# World(PageObjects)

  ELEMENT = YAML.load_file("features/support/config/elements/elements.yml")

  Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = 'http://localhost:8080/'
    config.default_max_wait_time = 30
  end

  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome, timeout: 30)
  end

  RSpec.configure do |config|
    config.include Capybara::DSL
    config.include Capybara::RSpecMatchers
  end