require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome_headless
  config.app_host = "http://automationpractice.com/"
end
