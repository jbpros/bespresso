Feature: Read current caffeine consumption
As a Belighter
I want to check current coffee consumption
So that I know how much everyone's caffeine addiction costs

  Scenario: View coffee consumptions
    Given espressos cost 33 cents and lungos cost 35 cents
    And the following people drank those coffees:
      | Drinker | Espressos | Lungos |
      | JB      |        21 |      3 |
      | NJ      |        33 |      8 |
      | SS      |        17 |      2 |
    When I go to the caffeine board
    Then I should see that JB owes 7.98
    And I should see that NJ owes 13.69
    And I should see that SS owes 6.31
