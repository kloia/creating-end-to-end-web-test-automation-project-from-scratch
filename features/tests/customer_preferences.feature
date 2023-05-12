Feature: Language related scenarios

  Scenario: Change the language on amazon
    Given go to home page
    And go to customer preferences page
    When change language to "Deutsch" on customer preferences page
    Then verify the language is changed to "DE" on base page



