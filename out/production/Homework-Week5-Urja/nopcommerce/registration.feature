Feature: Nopcommerce Registration
  As a User I want to check the Register Functionality of Nopcommerce

  Background: I am on Nopcommerce Registration Page
    Given I open the google chrome browser
    When I open the Url https://demo.nopcommerce.com/register
    Then I am on Nopcommerce Registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
  When I enter first name "<First Name>"
    And I enter last name "<Last Name>"
    And I enter email address "<Email>"
    And I enter password "<Password>"
    And I enter confirm password "<Confirm Password>"
    And Click on Register button
    Then I can see an error message "<Error Message>"
    And I am not able to register

    Examples:
    |First Name  | Last Name |Email          |Password| Confirm Password| Error Message                             |
    |            | smith     |smith@gmail.com| 987654 |987654           | please enter First Name                   |
    |     john   |           |smith@gmail.com| 987654 |987654           | please enter Last Name                    |
    |     john   | smith     |               | 987654 |987654           | please enter Email                        |
    |     john   | Smith     |smith@gmail.com|        |987654           | password is required                      |
    |     john   | Smith     |smith@gmail.com| 987654 |                 | confirm password is required              |
    |     john   | Smith     |smith@gmail.com| 987654 |987655           | password and confirm password do not match|
    |     john   | Smith     |smith@gmail.com| 98765  |98765            | minimum 6 character password is required  |
    |            |           |               |        |                 | Mandatory (*) field is required           |

    Scenario: I should be able any one radio button from Gender Label of Personal Details section
      Given I am on Gender Label of your personal detail section
      When  I select "Male" radio button
      And   I select "Female" radio button
      Then  I am able  to select any one od the radio button

      Scenario Outline:I should be able to select Day, Month and Year from drop down list of Date of birth field
        Given 	I am on Date of Birth field of Your Personal Detail section
        When  	I select day "<Day>"
        And 	I select month "<Month>"
        And 	I select Year "<Year>"
        Then 	I am able to select Day, Month and year from drop down list

        Examples:
          |Day  |Month   |Year|
          |22	|November|1998|

      Scenario: I should be able to check and uncheck the Newsletter box on Options section
        Given 	I am on Newsletter label on Options section
        When 	I click on Newsletter checkbox
        And 	I again click on Newsletter Checkbox
        Then 	I am able to check and uncheck the box next to Newsletter label

  Scenario: I should be able to register with valid mandatory (*) field data on registration page
    When 	I enter First name "john"
    And	 	I enter Last name "smith"
    And 	I enter Email "smith@gmail.com"
    And 	I enter Password "987654"
    And 	I enter Confirm Password "987654"
    And 	I click on Register button
    Then 	I am able to register successfully












