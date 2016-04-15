Feature: Invite members to the group via email

  @login
  Scenario: Facebook group invitation
    Given I navigate to Login page
    Then I type my login ""
    And I type my password ""
    When I click on Login button
    Then I verify successful login
    Then I invite people to the group














