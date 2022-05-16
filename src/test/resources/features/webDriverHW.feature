#Exercise WebDriver Practice
# Application: Quote https://skryabin.com/market/quote.html
#Author: Olena Kravchenko

Feature: WebDriver full Quote registration

  Background:
    Given I navigate  to "quote"

  @wdquote1
  Scenario: Name input verification
    When I click in name field
    And I wait for 2 sec
      #Then new window should be displayed
      #Then I type in First Name "Olena"
      #Then I type in Middle Name "Lena"
      #Then I type in Last Name "Kravch"
      #And I click Save button
    And I confirm "Olena" "Lena" "Kravch" is displayed as Full Name "Olena Lena Kravch"
      #Then Name "Olena Lena Kravch" should be fully displayed
      
     # @wdquote2
      #Scenario: Username input validation
    When I type "a" in username field
    Then I click button Submit
    Then error message under username field "Please enter at least 2 characters." should be displayed
    When I clear input text from username field
    Then error message under username field "This field is required." should be displayed
    Then I type "olena" in username field
    Then I click button Submit
    But error message under username field "This field is required." should not be displayed

       # @wdquote3
        #Scenario: Email input validation
    When I type into email field "abc"
    Then I click button Submit
    Then error message should be displayed as "Please enter a valid email address."
    When I clean up email field
    Then I click button Submit
    Then error message should be displayed as "This field is required."
    When I type into email field "abc.com"
    Then I click button Submit
    Then error message should be displayed as "Please enter a valid email address."
    Then I clean up email field
    When I type into email field "abc@@com"
    Then I click button Submit
    Then error message should be displayed as "Please enter a valid email address."
    Then I clean up email field
    When I type into email field "olena@gmail.com"
    Then I click button Submit
    Then error message should not be displayed as "Please enter a valid email address."

         # @wdquote4
          #Scenario: Password input validation
    When I type "1234" in password filed
    Then I click button Submit
    Then password error message should be displayed as "Please enter at least 5 characters."
    Then I clean up password field
    Then password error message should be displayed as "This field is required."
    When I type "12345" in password filed
    Then I click button Submit
    Then password error message should not be displayed


            #@wdquote5
            #Scenario: Confirm Password input validation
              #When I click on password
              #Then confirm password field is disabled
             # Then I type "12345" in password filed
    Then confirm password is enabled
    Then I type "1234" in confirm password field
    Then confirm password display error "Please enter at least 5 characters."
    Then I clean confirm password field
    Then I type "123456" in confirm password field
    Then confirm password display error "Passwords do not match!"
    Then I clean confirm password field
    Then I type "12345" in confirm password field
    Then I click button Submit

  #@wdquote6
              #Scenario: Privacy Policy required field validation
    When I click Submit button
    Then "- Must check!" error message should be displayed
    Then I click agree to PP
    Then PP error message is not displayed
    Then I click Submit button
    Then confirmation window appears


