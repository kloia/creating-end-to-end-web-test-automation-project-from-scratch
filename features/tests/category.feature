Feature: Category related features

  Scenario: Search all items of a category
    Given go to home page
    When select "Computer Components" sub menu from "Computers" menu on base page
    Then verify "Computer Components" sub category on base page
