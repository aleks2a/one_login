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
  one_login.login_page.login_button.click
end

Then(/^I verify successful login$/) do
  sleep 2
  expect(one_login.login_page.email_field.displayed?).to be == true
end


Then(/^I should see "([^"]*)" error on login page$/) do |error_message|
  # puts @browser.find_element(:css, "div.error-message").text
  expect(one_login.login_page.error_message.text).to be == error_message
end


Then(/^I invite people to the group$/) do
  one_login.login_page.input_emails
end