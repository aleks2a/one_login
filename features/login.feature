@regression
Feature: Test valid and invalid login scenarios

  @login
  Scenario: Login with valid credential
    Given I navigate to Login page
#    Then I type my login test-user@gmail.com
    Then I type my login "test_user-xdolhjya@onelogin.com"
    And I type my password "root1234"
    When I click on Login button
    Then I verify successful login

  Scenario: Login without email and password should generate error message
    Given I navigate to Login page
    Then I type my login ""
    And I type my password ""
    When I click on Login button
    Then I should see "Please fill in both fields" error on login page

  Scenario: Login with incorrect password
    Given I navigate to Login page
    Then I type my login "test_user-xdolhjya@onelogin.com"
    And I type my password "my not valid password"
    When I click on Login button
    Then I should see "Invalid username or password" error on login page

  Scenario Outline: Login with valid credentials
    Given I navigate to Login page
    Then I type my login "<login>"
    And I type my password "<password>"
    When I click on Login button
    Then I verify successful login

  Examples:
    |login              |password|
    |test-user@gmail.com|root1234|
    |zksjcb@zdzdvdzv.com|ascascac|































