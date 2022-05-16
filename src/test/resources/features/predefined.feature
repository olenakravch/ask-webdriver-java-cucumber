# Exercise for xPath
  # Author: Olena Kravchenko

@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Behavior Driven Development"

  @predefined2
  Scenario: Predefined steps for Gibiru
    Given I open url "https://gibiru.com/"
    And I wait for 2 sec
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then I should see page title contains "Gibiru"
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//button[@id='button-addon2']"
    Then I wait for element with xpath "//*[@id='web-results']" to be present
    Then element with xpath "//*[@id='web-results']" should contain text "Behavior Driven Development"

    @predefined3
    Scenario: Predefined steps for Duckduckgo
      Given I open url "https://duckduckgo.com/"
      And I wait for 2 sec
      Then I should see page title as "DuckDuckGo — Privacy, simplified."
      Then I should see page title contains "DuckDuckGo"
      Then element with xpath "//input[@id='search_form_input_homepage']" should be present
      When I type "Behavior Driven Development" into element with xpath "//input[@id='search_form_input_homepage']"
      Then I click on element using JavaScript with xpath "//input[@id='search_button_homepage']"
      Then I wait for element with xpath "//*[@id='links']" to be present
      Then element with xpath "//*[@id='links']" should contain text "Behavior Driven Development"

      @predefined4
      Scenario: Predefined steps for Swisscows
      Given I open url "https://swisscows.com"
      And I wait for 2 sec
      Then I should see page title as "Swisscows the alternative, data secure search engine."
      Then I should see page title contains "Swisscows"
      Then element with xpath "//input[@name='query']" should be present
      When I type "Behavior Driven Development" into element with xpath "//input[@name='query']"
      Then I click on element using JavaScript with xpath "//button[@class='search-submit']"
      Then I wait for element with xpath "//div[@class='page-results']" to be present
      Then element with xpath "//div[@class='page-results']" should contain text "Behavior Driven Development"

  @predefined5
  Scenario: Predefined steps for Searchencrypt
    Given I open url "https://www.searchencrypt.com"
    And I wait for 2 sec
    Then I should see page title as "Search Encrypt | Home"
    Then I should see page title contains "Encrypt"
    Then element with xpath "//input[@class='search-bar__search']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@class='search-bar__search']"
    Then I click on element using JavaScript with xpath "//button[@class='search-bar__submit']"
    Then I wait for element with xpath "//section[@class='serp__results container']" to be present
    Then element with xpath "//section[@class='serp__results container']" should contain text "Behavior Driven Development"

  @predefined6
  Scenario: Predefined steps for StartPage
    Given I open url "https://www.startpage.com"
    And I wait for 2 sec
    Then I should see page title as "Startpage - Private Search Engine. No Tracking. No Search History."
    Then I should see page title contains "Startpage"
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "//button[@class='search-form-home__button-desktop']"
    Then I wait for element with xpath "//div[@class='show-results']" to be present
    Then element with xpath "//div[@class='show-results']" should contain text "Behavior Driven Development"

  @predefined7
  Scenario: Predefined steps for Yandex
    Given I open url "https://www.yandex.com"
    And I wait for 2 sec
    Then I should see page title as "Yandex"
    Then element with xpath "//input[@id='text']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='text']"
    Then I click on element using JavaScript with xpath "//button[@role='button']"
    Then I wait for element with xpath "//div[@class='main__content']" to be present
    Then element with xpath "//div[@class='main__content']" should contain text "Behavior Driven Development"

  @predefined8
  Scenario: Predefined steps for Ecosia
    Given I open url "https://www.ecosia.org"
    And I wait for 2 sec
    Then I should see page title as "Ecosia - the search engine that plants trees"
    Then I should see page title contains "Ecosia"
    Then element with xpath "//input[@type='search']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@type='search']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='container results']" to be present
    Then element with xpath "//div[@class='container results']" should contain text "Behavior Driven Development"

  @predefined9
  Scenario: Predefined steps for Wiki
    Given I open url "https://www.wiki.com/"
    And I wait for 2 sec
    Then I should see page title as "Wiki.com"
    Then I should see page title contains "Wiki"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//input[@type='submit']"
    Then I should see page title as "Form is not secure"
    Then I click on element using JavaScript with xpath "//button[@id='proceed-button']"
    Then I wait for element with xpath "//*[contains(@id,'results')]" to be present
    Then I switch to iframe with xpath "//iframe[@name='googleSearchFrame']"
    Then element with xpath "//div[@id='cse']" should contain text "Behavior Driven Development"


  @predefined10
  Scenario: Predefined steps for giveWater
    Given I open url "https://www.givewater.com/"
    And I wait for 2 sec
    Then I should see page title as "Search the Web to Give Clean Water to Those in Need » giveWater Search Engine"
    Then I should see page title contains "giveWater"
    Then element with xpath "//input[@id='site-search']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='site-search']"
    Then I click on element using JavaScript with xpath "//button[@id='button-addon2']"
    Then I wait for element with xpath "//div[@class='web-bing']" to be present
    Then element with xpath "//div[@class='web-bing']" should contain text "Behavior Driven Development"

  @predefined11
  Scenario: Predefined steps for Ekoru
    Given I open url "https://ekoru.org/"
    And I wait for 2 sec
    Then I should see page title as "Ekoru - every search cleans our oceans"
    Then I should see page title contains "Ekoru"
    Then element with xpath "//input[@id='fld_q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='fld_q']"
    Then I click on element using JavaScript with xpath "//div[@id='btn_search']"
    Then I wait for element with xpath "//div[@class='serp-wrapper']" to be present
    Then element with xpath "//div[@class='serp-wrapper']" should contain text "Behavior Driven Development"