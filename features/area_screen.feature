@area
Feature: User is able to convert area units
@menu
  Scenario: User is able to dismiss help
    Given I land on help popup
    When I click on GOT IT button
    Then I land on Area screen

  Scenario: User  is able to swap values
    Given I click on GOT IT button
    And I see "Sq Kilometre" in FROM header
    And I see "Sq Metre" in TO header
    When I click on SWAP button
    Then I see "Sq Metre" in FROM header
    And I see "Sq Kilometre" in TO header

  Scenario Outline: User is  able to convert default units
    Given I click on GOT IT button
    And I click on CLEAR button
    When I enter "<target>" to FROM field
    Then I get "<result>" in TO field

    Examples:
    |target|result|
    |1     |1000000|
    |2     |2000000|
    |3     |3000000|