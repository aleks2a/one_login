Given(/^I navigate to Login page$/) do
  @browser.navigate.to "https://app.onelogin.com/login"
end

Then(/^I type my login "([^"]*)"$/) do |login|
  @browser.find_element(:id, "user_email").send_keys login
end

And(/^I type my password "([^"]*)"$/) do |password|
  @browser.find_element(:id, "user_password").send_keys password
end

When(/^I click on Login button$/) do
  @browser.find_element(:id, "user_submit").click
  sleep 5
end

Then(/^I verify successful login$/) do
  expect(@browser.find_element(:id, "mac-login-admin-nudge").displayed?).to be == true
end


Then(/^I should see "([^"]*)" error on login page$/) do |error_message|
  puts @browser.find_element(:css, "div.error-message").text
  expect(@browser.find_element(:css, "div.error-message").text).to be == error_message


end

