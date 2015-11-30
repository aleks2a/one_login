Feature: Login
  Test valid and invalid login scenarios

  Scenario: Login with valid credentials
    Given I navigate to Login page
    Then I type my login "test_user-xdolhjya@onelogin.com"
    And I type my password "root1234"
    When I click on Login button
    Then I verify successful login

  Scenario: Login without email and password valid account
    Given I navigate to Login page
    Then I type my login ""
    And I type my password ""
    When I click on Login button
    Then I should see "Please fill in both fields" error on login page


  Scenario: Login without password
    Given I navigate to Login page
    Then I type my login "tet@aaa.aaa"
    And I type my password "test"
    When I click on Login button
    Then I should see "Invalid username or password" error on login page
