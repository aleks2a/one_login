Given(/^I navigate to Account creation page$/) do
  one_login.account_creation_page.navigate
end

Then(/^I type "([^"]*)" to first name text field$/) do |first_name|
  one_login.account_creation_page.first_name.send_keys first_name
end

And(/^I type "([^"]*)" to last name text field$/) do |last_name|
  one_login.account_creation_page.last_name.send_keys last_name
end

And(/^I type random email address to email text field$/) do
  email = one_login.account_creation_page.generate_random_email
  one_login.account_creation_page.email.send_keys email
end

Then(/^I type "([^"]*)" to company name text field$/) do |company_name|
  one_login.account_creation_page.company_name.send_keys company_name
end

Then(/^I type (\d+) to number of employees text field$/) do |number_of_employees|
  one_login.account_creation_page.number_of_employees.send_keys number_of_employees
end

Then(/^I type "([^"]*)" to phone number text field$/) do |phone_number|
  one_login.account_creation_page.phone_number.send_keys phone_number
end

And(/^I select "([^"]*)" plan from drop down menu$/) do |plan_name|
  one_login.account_creation_page.select_plan_from_dropdown plan_name
end

When(/^I click on Create Account button$/) do
  one_login.account_creation_page.create_account.click
end

Then(/^I type my password "([^"]*)" on account creation page$/) do |password|
  one_login.account_creation_page.user_password.send_keys password
end

And(/^I click on Save button$/) do
  one_login.account_creation_page.save_password.click
end