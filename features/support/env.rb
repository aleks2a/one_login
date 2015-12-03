require "selenium-webdriver"
require "rspec"

# path PageActions class
require File.join(File.dirname(__FILE__),"..","page_model","page_actions")


def one_login
  OneLogin.new @browser
end

def take_screenshot file_name
  @browser.save_screenshot "features/screenshots/#{file_name}"
end


Before do
  @browser = Selenium::WebDriver.for :firefox
  @browser.manage.window.maximize
  @browser.manage.timeouts.implicit_wait = 10
end

After do |scenario|
  if scenario.failed?
    file_name = Time.now.strftime("%Y-%m-%d-%H:%M:%S.png").to_s
    take_screenshot file_name
    embed("features/screenshots/#{file_name}", 'image/png')
  end
  @browser.quit
end















