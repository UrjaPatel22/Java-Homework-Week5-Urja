Feature: Demo Nopcommerce topmenu acceptance criteria
  As a user, I would like to check acceptance criteria of Nopcommerce topmenu

  Background: User is on given URL : https://demo.nopcommerce.com
    Given    User is on Home page

  Scenario: Verify that user can navigate to Books category
    When   Click on Books tab on Top Menu
    Then  User is navigated to Books Category page

  Scenario: Verify that user can see the Books category page with filters and list of products
    When   Click on Books tab on Top Menu
    And   Check Filters and List Tab.
    Then  Books category page is displayed with filters and list tabs

  Scenario: Verify that user can see 'Sort by' filter on Book Category page
    Given User is on Books Category page
    When  Check 'Sort by' filter is present
    Then  'Sort by' filter is available on Book Category page

  Scenario: Verify that user can see 'Display' filter on Book Category page
    Given User is on Books Category page
    When  Check 'Display' filter is present
    Then  'Display' filter is available on Book Category page

  Scenario: Verify that user can see 'Grid' tab on Book Category page
    Given User is on Books Category page
    When   Check 'Grid' tab is present
    Then  'Grid' tab is available on Book Category page

  Scenario: Verify that user can see 'List' tab on Book Category page
    Given User is on Books Category page
    When   Check 'List' tab is present
    Then  'List' tab is available on Book Category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present in 'Sort by' filter
    Given User is on Books Category page
    When   Click on 'Sort by' Filter
    And   Check that 'Name: A to Z' selection is present
    Then   'Name: A to Z' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' is first option in  'Sort by' filter
    Given User is on Books Category page
    When   Click on 'Sort by' Filter
    And   Check that 'Name: Z to A' is first in order
    Then  'Name: Z to A' is first option in order

  Scenario: Verify that user can see 'Name: A to Z' filter is  functioning as expected(Note: Products are filtered in alphabetical order )
    Given User is on Books Category page
    When   Click on 'Sort by' Filter
    And   Select 'Name: A to Z' filter
    Then  All products are displayed in alphabetical order