Given(/^I navigate to Login page$/) do
  one_login.login_page.navigate
end

Then(/^I type my login "([^"]*)"$/) do |login|
  one_login.login_page.login_field.send_keys login
end

And(/^I type my password "([^"]*)"$/) do |password|
  one_login.login_page.password_field.send_keys password
end

When(/^I click on Login button$/) do
  one_login.login_page.log_in_button.click
  sleep 30
end

Then(/^I should see "([^"]*)" error on login page$/) do |error|
  expect(one_login.login_page.error_message.text).to be == error
end

Then(/^I verify successful login$/) do
  expect(one_login.login_page.admin.displayed?).to be_truthy
end