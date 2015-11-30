Feature: Trial account creation
  As OneLogin user I can create trial account for
  14 days period

  Scenario: Create new account
    Given I navigate to Account creation page
    Then I type "John" into first name field
    And I type "Smith" into last name field
    Then I type random email address into email field
    And I type "OneLogin Test" into company name field
    Then I type 100 into number of employees field
    And I type "6506506500" to phone number text field
    Then I select "Unlimited" plan from drop down menu
    When I click on Create Account button
    Then I type my password "root1234" into password field
    And I click on Save button






