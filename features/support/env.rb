require "selenium-webdriver"
require "rspec"
require "pry"

require File.join(File.dirname(__FILE__),"..", "page_model", "page_actions.rb")

SAUCE_USERNAME = (ENV['SAUCE_USERNAME'] || 'aleks2a')
SAUCE_API_KEY = (ENV['SAUCE_API_KEY'] || '58e084ff-f696-4978-9e13-f14e75299d3a')

SERVER = (ENV['SERVER'] || :local).to_sym
BROWSER = (ENV['BROWSER'] || :firefox).to_sym

def one_login
  OneLogin.new @browser
end

def take_screenshot file_name
  @browser.save_screenshot "features/screenshots/#{file_name}"
end

def browser_caps
  if BROWSER == :internet_explorer
    return { :platform => "Windows 7", :browserName => "ie", :version => "10", :avoidProxy => true }
  elsif BROWSER == :chrome
    return { :platform => "Mac OS X 10.9", :browserName => "Chrome", :version => "31" }
  elsif BROWSER == :firefox
    return { :platform => "Mac OS X 10.9", :browserName => "Firefox", :version => "40" }
  end
end

Before do
  if SERVER == :local
    @browser = Selenium::WebDriver.for BROWSER
    @browser.manage.window.maximize
  end

  if SERVER == :remote
    sauce_endpoint = "http://#{SAUCE_USERNAME}:#{SAUCE_API_KEY}@ondemand.saucelabs.com:80/wd/hub"
    @browser = Selenium::WebDriver.for :remote, :url => sauce_endpoint, :desired_capabilities => browser_caps
  end
end

After do |scenario|
  if scenario.failed?
    file_name = Time.now.strftime("%Y-%m-%d-%H:%M:%S.png").to_s
    take_screenshot file_name
    embed("features/screenshots/#{file_name}", 'image/png')
  end
end

After do
  sleep 1
  @browser.quit
end