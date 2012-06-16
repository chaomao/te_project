Feature: TE
  In order to save my time on handling tax issues
  As ThoughtWorker
  I want to handle it automatically on TE

  @te
  Scenario: Automatically fill expense on TE
    Given I login TE with username "user_name" and password "password"
    When I add a new expense report with project code "project_code"
    And I fill expense report
      | category             | date         | amount | description | vendor     | payment       | currency            | attendees |
      | Business Meals       | 22 June 2011 | 101    | food        | fu xuan ju | Personal Card | CNY - Yuan Renminbi | chaomao   |
      | Local Transportation | 13 June 2012 | 8.3    | taxi        | taxi       | Personal Card | CNY - Yuan Renminbi | chaomao   |
    Then I want to save as draft
