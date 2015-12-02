Given(/^I navigate to Account creation page$/) do
  @browser.navigate.to "https://www.onelogin.com/trial"
end

Then(/^I type "([^"]*)" into first name field$/) do |first_name|
  @browser.find_element(:id, "first-name").send_keys(first_name)
end

And(/^I type "([^"]*)" into last name field$/) do |last_name|
  @browser.find_element(:id, "last-name").send_keys last_name
end

Then(/^I type random email address into email field$/) do
  random_name = (0...8).map {(65 + rand(26)).chr }.join
  @browser.find_element(:id, "email").send_keys "test_user_#{random_name}@onelogin.com"
end

And(/^I type "([^"]*)" into company name field$/) do |company_name|
  @browser.find_element(:id, "company-name").send_keys company_name
end

Then(/^I type "([^"]*)" into number of employees field$/) do |number|
  @browser.find_element(:id, "company-size").send_keys number
end

And(/^I type "([^"]*)" to phone number text field$/) do |phone|
  @browser.find_element(:id, "phone").send_keys phone
end

Then(/^I select "([^"]*)" plan from drop down menu$/) do |plan|
  require"pry"
  binding.pry
  @browser.find_element(:xpath, "//span[text()='Free']").click
  @browser.find_element(:xpath, "//li[text()='#{plan}']").click
  sleep 1
end

When(/^I click on Create Account button$/) do
  @browser.find_element(:id, "submit-btn").click
  sleep 10
end

Then(/^I type my password "([^"]*)" into password field$/) do |password|
  @browser.find_element(:id, "user_password").send_keys password
end

And(/^I click on Save button$/) do
  @browser.find_element(:id, "set_password_quickstart").click
end

Then(/^I should see setup completion page$/) do
  expect(@browser.find_element(:xpath, "//li[@class='sidebar']/h3").text).to be == "Setup Completion"
end










