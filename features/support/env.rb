require "selenium-webdriver"
require "rspec"

Before do
  @browser = Selenium::WebDriver.for :firefox
  @browser.manage.window.maximize
  @browser.manage.timeouts.implicit_wait = 10
end

After do
  @browser.quit
end

