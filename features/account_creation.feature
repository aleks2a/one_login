Feature: Account creation form


  Scenario: Login with valid account
    Given I navigate to Login page
    Then I type my login "tet@aaa.aaa" on login page
    And I type my password "" on login page
    When I click on Login button
    Then I should see "Please fill in both fields" error on login page


  Scenario: Login with valid account
    Given I navigate to Login page
    Then I type my login "tet@aaa.aaa" on login page
    And I type my password "" on login page
    When I click on Login button
    Then I should see "Invalid username or password" error on login page


  Scenario: Login with valid account
    Given I navigate to Login page
    Then I type my login "tet@aaa.aaa" on login page
    And I type my password "root1234" on login page
    When I click on Login button
    Then I should be signed-in user


  Scenario: Create account
    Given I navigate to Account creation page
    Then I type "John" to first name text field
    And I type "Smith" to last name text field
    And I type random email address to email text field
    Then I type "OneLogin Test" to company name text field
    Then I type 100 to number of employees text field
    Then I type "6506506500" to phone number text field
    And I select "Unlimited" plan from drop down menu
    When I click on Create Account button
    Then I type my password "root1234" on account creation page
    And I click on Save button






