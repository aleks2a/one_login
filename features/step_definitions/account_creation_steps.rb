Given(/^I navigate to Account creation page$/) do
  one_login.account_creation_page.navigate
end

Then(/^I type "([^"]*)" into first name field$/) do |first_name|
  one_login.account_creation_page.first_name.send_keys(first_name)
end

And(/^I type "([^"]*)" into last name field$/) do |last_name|
  one_login.account_creation_page.last_name.send_keys last_name
end

Then(/^I type random email address into email field$/) do
  email = one_login.account_creation_page.generate_random_email
  one_login.account_creation_page.email.send_keys email
end

And(/^I type "([^"]*)" into company name field$/) do |company_name|
  one_login.account_creation_page.company_name.send_keys company_name
end

Then(/^I type "([^"]*)" into number of employees field$/) do |number_of_employees|
  one_login.account_creation_page.company_size.send_keys number_of_employees
end

And(/^I type "([^"]*)" to phone number text field$/) do |phone|
  one_login.account_creation_page.phone_number.send_keys phone
end

Then(/^I select "([^"]*)" plan from drop down menu$/) do |plan|
  one_login.account_creation_page.select_plan_from_dropdown plan
end

When(/^I click on Create Account button$/) do
  one_login.account_creation_page.create_account.click
end

Then(/^I type my password "([^"]*)" into password field$/) do |password|
  one_login.account_creation_page.user_password.send_keys password
end

And(/^I click on Save button$/) do
  one_login.account_creation_page.save_password.click
end

Then(/^I should see setup completion page$/) do
  expect(one_login.account_creation_page.setup_wizard.text).to be == "Setup Completion"
end


