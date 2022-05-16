#Exercise Quote Application
#Epic: https://skryabin.com/market/quote.html ACA-666
#Author: Olena Kravchenko
@quote
Feature: Quote Page Scenarios
  Background:
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title contains "Get a Quote"
  @quote1
  Scenario: Validate responsive UI behavior.
    # resize to desktop
    When I resize window to 1920 and 1080
    Then I wait for 2 sec
    Then element with xpath "//b[@id='location']" should be displayed
     # resize to laptop
    When I resize window to 1448 and 980
    Then I wait for 2 sec
    Then element with xpath "//b[@id='location']" should be displayed
         # resize to mobile
    When I resize window to 393 and 851
    Then I wait for 2 sec
    But element with xpath "//b[@id='location']" should not be displayed

    @quote2
    Scenario: Validate minimal “Username” field length requirement as 2 characters
      When I type "q" into element with xpath "//input[@name='username']"
      Then I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='username-error']" should be displayed
      Then element with xpath "//label[@id='username-error']" should have text as "Please enter at least 2 characters."
      Then I clear element with xpath "//input[@name='username']"
      When I type "AA" into element with xpath "//input[@name='username']"
      Then I click on element with xpath "//button[@id='formSubmit']"
      But element with xpath "//label[@id='username-error']" should not be displayed
      
      @quote3
      Scenario: Validate that email field accepts only valid email addresses
        When I type "gmail.com" into element with xpath "//input[@name='email']"
        Then I click on element with xpath "//button[@id='formSubmit']"
        Then element with xpath "//label[@id='email-error']" should be displayed
        Then element with xpath "//label[@id='email-error']" should have text as "Please enter a valid email address."
        Then I clear element with xpath "//input[@name='email']"
        When I type "@gmail.com" into element with xpath "//input[@name='email']"
        Then I click on element with xpath "//button[@id='formSubmit']"
        Then element with xpath "//label[@id='email-error']" should be displayed
        Then element with xpath "//label[@id='email-error']" should have text as "Please enter a valid email address."
        Then I clear element with xpath "//input[@name='email']"
        When I type "gmail" into element with xpath "//input[@name='email']"
        Then I click on element with xpath "//button[@id='formSubmit']"
        Then element with xpath "//label[@id='email-error']" should be displayed
        Then element with xpath "//label[@id='email-error']" should have text as "Please enter a valid email address."
        Then I clear element with xpath "//input[@name='email']"
        When I type "lena@" into element with xpath "//input[@name='email']"
        Then I click on element with xpath "//button[@id='formSubmit']"
        Then element with xpath "//label[@id='email-error']" should be displayed
        Then element with xpath "//label[@id='email-error']" should have text as "Please enter a valid email address."
        Then I clear element with xpath "//input[@name='email']"
        When I type " " into element with xpath "//input[@name='email']"
        Then I click on element with xpath "//button[@id='formSubmit']"
        Then element with xpath "//label[@id='email-error']" should be displayed
        Then element with xpath "//label[@id='email-error']" should have text as "This field is required."
        Then I clear element with xpath "//input[@name='email']"
        When I type "lena@gmail.com" into element with xpath "//input[@name='email']"
        Then I click on element with xpath "//button[@id='formSubmit']"
        But element with xpath "//label[@id='email-error']" should not be displayed
        Then I clear element with xpath "//input[@name='email']"
        When I type "lena@gmail" into element with xpath "//input[@name='email']"
        Then I click on element with xpath "//button[@id='formSubmit']"
        Then element with xpath "//label[@id='email-error']" should be displayed
        Then element with xpath "//label[@id='email-error']" should have text as "Please enter a valid email address."
        Then I clear element with xpath "//input[@name='email']"

        @quote4
        Scenario: Validate that Confirm Password is disabled if Password field is empty.
          When I click on element with xpath "//input[@id='password']"
          Then I click on element with xpath "//input[@id='confirmPassword']"
          Then element with xpath "//input[@id='confirmPassword']" should be disabled

        @quote5
        Scenario: Verify that upon clicking inside of Name field popup dialog appears and  it concatenates it correctly
            When I click on element with xpath "//input[@id='name']"
            Then element with xpath "//span[@id='ui-id-1']" should be displayed
            Then I type "Olena" into element with xpath "//input[@id='firstName']"
            Then I type "Y" into element with xpath "//input[@id='middleName']"
            Then I type "Kravch" into element with xpath "//input[@id='lastName']"
            And I click on element with xpath "//span[contains(text(),'Save')]"
            Then element with xpath "//input[@id='name']" should have attribute "value" as "Olena Y Kravch"

          @quote6
          Scenario: Validate that Accepting Privacy Policy is required to submit the form, then check the field
            Then I click on element with xpath "//button[@id='formSubmit']"
            Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should be displayed
            Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should have text as "- Must check!"
            Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
            Then I click on element with xpath "//button[@id='formSubmit']"
          @quote7
          Scenario: Enter the following non-required fields in the order
          #Phone Number
            Then I click on element with xpath "//input[@ng-model='formData.phone']"
            Then I type "123456" into element with xpath "//input[@ng-model='formData.phone']"
          #Country of Origin
            Then I click on element with xpath "//select[@ng-model='formData.countryOfOrigin']"
            Then I click on element with xpath "//option[contains(text(),'Italy')]"
          #Gender
            Then I click on element with xpath "//input[@value='female']"
          #Allowed to Contact?
            Then I click on element with xpath "//input[@name='allowedToContact']"
          #Address
            Then I click on element with xpath "//textarea[@id='address']"
            Then I type "98210 California USA" into element with xpath "//textarea[@id='address']"
          #Car Make
            Then I click on element with xpath "//option[contains(text(),'Toyota')]"
          #3rd party agreement acceptance
            Then I click on element with xpath "//button[@id='thirdPartyButton']"
            And I accept alert
            Then element with xpath "//span[@id='thirdPartyResponseMessage']" should contain text "You accepted third party agreement."
          #Date
            Then I click on element with xpath "//input[@id='dateOfBirth']"
            And element with xpath "//div[@id='ui-datepicker-div']" should be displayed
            Then I click on element with xpath "//select[@class='ui-datepicker-year']"
            Then I click on element with xpath "//option[contains(text(),'2008')]"
            Then I click on element with xpath "//select[@class='ui-datepicker-month']"
            Then I click on element with xpath "//option[contains(text(),'Mar')]"
            Then I click on element with xpath "//td[@data-handler='selectDay']/a[contains(text(), '22')]"
            Then element with xpath "//input[@id='dateOfBirth']" should have attribute "value" as "03/22/2008"

          @quote8
          Scenario: Submit the form and verify the data. Validate that after form submission entered fields values are present on the page. Validate that password is not displayed on the page
            When I click on element with xpath "//input[@id='name']"
            Then element with xpath "//span[@id='ui-id-1']" should be displayed
            Then I type "Olena" into element with xpath "//input[@id='firstName']"
            Then I type "Y" into element with xpath "//input[@id='middleName']"
            Then I type "Kravch" into element with xpath "//input[@id='lastName']"
            And I click on element with xpath "//span[contains(text(),'Save')]"
            Then element with xpath "//input[@id='name']" should have attribute "value" as "Olena Y Kravch"
            Then I type "olena" into element with xpath "//input[@name='username']"
            Then I click on element with xpath "//input[@name='email']"
            When I type "olena@gmail.com" into element with xpath "//input[@name='email']"
            Then I click on element with xpath "//input[@id='password']"
            Then I type "12345" into element with xpath "//input[@id='password']"
            Then I click on element with xpath "//input[@id='confirmPassword']"
            Then I type "12345" into element with xpath "//input[@id='confirmPassword']"
                      #Phone Number
            Then I click on element with xpath "//input[@ng-model='formData.phone']"
            Then I type "123456" into element with xpath "//input[@ng-model='formData.phone']"
          #Country of Origin
            Then I click on element with xpath "//select[@ng-model='formData.countryOfOrigin']"
            Then I click on element with xpath "//option[contains(text(),'Italy')]"
          #Gender
            Then I click on element with xpath "//input[@value='female']"
          #Allowed to Contact?
            Then I click on element with xpath "//input[@name='allowedToContact']"
          #Address
            Then I click on element with xpath "//textarea[@id='address']"
            Then I type "98210 California USA" into element with xpath "//textarea[@id='address']"
          #Car Make
            Then I click on element with xpath "//option[contains(text(),'Toyota')]"
          #3rd party agreement acceptance
            Then I click on element with xpath "//button[@id='thirdPartyButton']"
            And I accept alert
            Then element with xpath "//span[@id='thirdPartyResponseMessage']" should contain text "You accepted third party agreement."
          #Date
            Then I click on element with xpath "//input[@id='dateOfBirth']"
            And element with xpath "//div[@id='ui-datepicker-div']" should be displayed
            Then I click on element with xpath "//select[@class='ui-datepicker-year']"
            Then I click on element with xpath "//option[contains(text(),'2008')]"
            Then I click on element with xpath "//select[@class='ui-datepicker-month']"
            Then I click on element with xpath "//option[contains(text(),'Mar')]"
            Then I click on element with xpath "//td[@data-handler='selectDay']/a[contains(text(), '22')]"
            Then element with xpath "//input[@id='dateOfBirth']" should have attribute "value" as "03/22/2008"
            Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
            Then I click on element with xpath "//button[@id='formSubmit']"
            And I wait for 2 sec
            Then element with xpath "//legend[contains(text(),'Submitted Application')]" should have text as "Submitted Application"
            Then element with xpath "//b[@name='dateOfBirth']" should contain text "03/22/2008"
            And element with xpath "//b[@name='firstName']" should contain text "olena"
            And element with xpath "//b[@name='name']" should contain text "olena y kravch"
            And element with xpath "//b[@name='password']" should contain text "[entered]"
            Then element with xpath "//b[@name='agreedToPrivacyPolicy']" should contain text "true"
            And element with xpath "//b[@name='email']" should contain text "olena@gmail.com"
            And element with xpath "//b[@name='allowedToContact']" should contain text "true"
            And element with xpath "//b[@name='phone']" should contain text "123456"
            And element with xpath "//b[@name='countryOfOrigin']" should contain text "Italy"
            And element with xpath "//b[@name='gender']" should contain text "female"
            And element with xpath "//b[@name='lastName']" should contain text "kravch"
            And element with xpath "//b[@name='middleName']" should contain text "y"