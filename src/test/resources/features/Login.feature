@TestLogin
Feature: login
  Background:
    Given User on Page Automation Test Store
    And User click sign

  @LoginValid @Positive
  Scenario: Successfully Login with Valid Credentials
    When User Input set username satya_test_bang, set password Bangalore@123 click login btn
    Then User get the result Resource

  @LoginInvalid @Negative
    Scenario Outline: Unsuccessfully login with Invalid Credentials
    When User input user <username>, pass <password> and click login btn
    Then User get the result Resource
    Examples:
      | username       | password      |
      | satya_test_bang  | 1234567       |
      |                | Bangalore@12 |
      | satya_test_bang  |               |
      | satya_test_bang | Bangalore@123       |