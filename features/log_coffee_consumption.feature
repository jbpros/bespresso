Feature: Log coffee consumption
As a caffeine addict
I want to log my coffee consumption
So that I know how much I'll have to pay for it

  Background: 
    Given espressos cost 33 cents and lungos cost 35 cents

  Scenario: Drink an espresso
    Given the following people drank those coffees:
      | Drinker | Espressos | Lungos |
      | JB      |         0 |      0 |
      | NJ      |         0 |      0 |
      | SS      |         0 |      0 |
    When I go to the caffeine board
    And I follow "Drink!"
    And I select "JB" from "Who's drinking?"
    And I press "Espresso"
    Then I should see that JB owes 0.33
    And I should see that NJ owes nothing
    And I should see that SS owes nothing
