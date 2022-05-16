#Exercise WebDriver Practice
# Epic: https://jira.portnov.com/browse/ACA-697
#Author: Olena Kravchenko

  Feature: WebDriver Practice Exercises
    Background:
      Given I navigate "quote"
    @webdriver1
    Scenario: Open URL using site name
      #Given I navigate "quote"
      And I print page details
      And I wait for 3 sec

      @webdriver2
      Scenario: Email field verification
        When I type "abc" into email field
        And I click Submit button
        And I wait for 2 sec
        Then error message "Please enter a valid email address." should be displayed
        When I clear input text from email field
        And I wait for 2 sec
        Then error message "This field is required." should be displayed
        When I type "olena@gmail.com" into email field
        And I click Submit button
        Then error message "Please enter a valid email address." should not be displayed
        And I wait for 2 sec

