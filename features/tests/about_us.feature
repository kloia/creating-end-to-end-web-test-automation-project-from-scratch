Feature: About us related scenarios

  Scenario: Navigate to about us page
    Given go to home page
    When click on "About Amazon" text on home page
    Then verify navigated to "www.aboutamazon.com"