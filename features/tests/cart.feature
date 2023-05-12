Feature: Cart related features

  Scenario: Add an item to cart from categories by index
    Given go to home page
    And select "Camera & Photo" sub menu from "Electronics" menu on base page
    And click on 1st product on results page
    When add the item to cart on product page
    Then verify the item is added to cart on cart page

  Scenario: Add an item to cart by searching and by index
    Given go to home page
    And search "Computer" on search bar on home page
    And click on 1st product on results page
    When add the item to cart on product page
    Then verify the item is added to cart on cart page

  Scenario: Add an item to cart by name
    Given go to home page
    And search "SHW Home Office 32-Inch Computer Desk, Black" on search bar on home page
    And click on the product named "SHW Home Office 32-Inch Computer Desk, Black" on results page
    When add the item to cart on product page
    Then verify the item is added to cart on cart page


