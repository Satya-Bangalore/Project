@TestItems
  Feature: Add Item on chart
    Background:
      Given User on Page Automation Test Store
      And User click sign
      When User Input set username satya_test_bang, set password Bangalore@123 click login btn

    Scenario: Successfully add items to chart
      When User click Apparel & accessories
      And User click Shooes
      And User choose product Items
      And User set Size, Colour, QTY and click add to chart button
      And User confirm Item click checkout
      Then User get the result Items