Feature: Main page
  In order to do pretty much everything on this website
  As a guest
  I want to do basic site navigation

#  @javascript
#  Scenario: Search by location name from input with autocomplete
#    Given a location exists with name: "Bar Cleo", street: "123 pine", city: "Portland"
#    And the following locations exist
#      |name|
#      |Cleo North|
#      |Cleo South|
#      |Sassy|
#    And I am on the home page
#    When I fill in "Location Name" with "Sassy"
#    Then I should see the following autocomplete options
#      |Sassy North|
#      |Sassy South|
#    When I click "Sassy North" in the autocomplete options
#    And I press "Search"
#    Then I should see "Bar Cleo | 123 pine | Portland"

  @javascript
  Scenario: Search by location name from select
    Given "Cleo" is a location with the name "Bar Cleo" and the street "123 pine" and the city "Portland"
    And "SW" is a machine with the name "Star Wars"
    And there is a location machine xref with the location "Cleo" and the machine "SW"
    And I am on the home page
    And I select "Bar Cleo" from "by_id"
    And I press "Search"
    Then I should see "Bar Cleo | 123 pine | Portland | Star Wars"

  @javascript
  Scenario: Location detail shows the stuff that I want it to show
    Given "Cleo" is a location with the name "Bar Cleo" and the street "123 pine" and the city "Portland" and the id "1"
    And "SW" is a machine with the name "Star Wars"
    And there is a location machine xref with the location "Cleo" and the machine "SW"
    And I am on the home page
    And I select "Bar Cleo" from "by_id"
    And I press "Search"
    Then I should see "Bar Cleo | 123 pine | Portland | Star Wars"
    And I follow "show_detail_1"
    Then I should see "Bar Cleo | 123 pine | Portland | OR | 97211"