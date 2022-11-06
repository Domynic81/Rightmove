Feature: For sale properties
  As a customer
  I want the ability to search for any properties for sale
  So I can review the property before I buy

  Scenario Outline: Customer can search for any property
    Given I navigate to RightMove homepage
    When I enter "<Location>" into the search box
    And I select "<MinPrice>" from the price dropdown
    And I select "<MaxPrice>" from the price dropdown
    And I select "<Property>" from property type dropdown
    And I select "<Bedroom>" from Bedrooms dropdown
    And I click on Search Button
    Then Search result page is Displayed with relevant results

    Examples:
    |Location   |MinPrice|MaxPrice|Property|Bedroom|
    |Manchester |£100,000|£350,000|Houses  |3+     |
    |OL9 8LD    |£150,000|£300,000|Flat    |2+     |
    |Winslow    |£120,000|£200,000|Houses  |4+     |
    |Ol9        |£130,000|£250,000|Flat    |3+     |

  Scenario Outline: Customer can search for any empty location
    Given I navigate to RightMove homepage
    When I enter <arg0> into the search field
    And I click on Search button
    Then Error message displayed on Search page

    Examples:
      | arg0 |
      | ""   |

      Scenario: Customer get errors page for invalid location
      Given I navigate to RightMove homepage
      When I enter "wwwwww" in the search fieldAnd I click on Search button
      Then Error page is displayed
