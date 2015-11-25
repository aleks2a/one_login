Given(/^I navigate to Login page$/) do
  one_login.login_page.navigate
end

Then(/^I type my login "([^"]*)" on login page$/) do |login|
  one_login.login_page.login_field.send_keys login
end

And(/^I type my password "([^"]*)" on login page$/) do |password|
  one_login.login_page.password_field.send_keys password
end

When(/^I click on Login button$/) do
  one_login.login_page.log_in_button.click
end