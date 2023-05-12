Feature: Search related features.

  Scenario: Search an item on amazon.com successfully
    Given go to home page
    When search "computer" on search bar on home page
    Then verify "computer" search results on result page

  Scenario: Search an item on amazon.com unsuccessfully
    Given go to home page
    When search "öööööööö" on search bar on home page
    Then verify no results for "öööööööö" on result page