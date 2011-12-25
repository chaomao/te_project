Feature: TE
  In order to save my time on handling tax issues
  As ThoughtWorker
  I want to handle it automatically on TE

  @te
  Scenario: Automatically fill expense on TE
    Given I login TE with username "chaomao" and password "52674761"
    When I add a new expense report with project code "PWC0001 ASSIG_2 MISC"
    And I fill expense report
      | category             | date        | amount | description | vendor     | payment       | currency            |
      | Business Meals       | 22 Jul 2011 | 101    | food        | fu xuan ju | Personal Card | CNY - Yuan Renminbi |
      | Business Meals       | 11 Jul 2011 | 208    | food        | qian gui   | Personal Card | CNY - Yuan Renminbi |
      | Business Meals       | 28 Jul 2011 | 400    | food        | qian zi    | Personal Card | CNY - Yuan Renminbi |
      | Business Meals       | 28 Jul 2011 | 114.4  | food        | hong wei   | Personal Card | CNY - Yuan Renminbi |
      | Business Meals       | 01 Aug 2011 | 130.8  | food        | hong wei   | Personal Card | CNY - Yuan Renminbi |
      | Business Meals       | 02 Aug 2011 | 490.7  | food        | hua lian   | Personal Card | CNY - Yuan Renminbi |

      | Local Transportation | 20 Jul 2011 | 18     | taxi        | taxi       | Personal Card | CNY - Yuan Renminbi |
      | Local Transportation | 23 Jul 2011 | 18     | taxi        | taxi       | Personal Card | CNY - Yuan Renminbi |
      | Local Transportation | 30 Jul 2011 | 64     | taxi        | taxi       | Personal Card | CNY - Yuan Renminbi |
      | Local Transportation | 27 Jul 2011 | 14     | taxi        | taxi       | Personal Card | CNY - Yuan Renminbi |
      | Local Transportation | 18 Jul 2011 | 13     | taxi        | taxi       | Personal Card | CNY - Yuan Renminbi |
      | Local Transportation | 18 Jul 2011 | 10     | taxi        | taxi       | Personal Card | CNY - Yuan Renminbi |

      | Business Meals       | 24 Jul 2011 | 10     | food        | KFC        | Personal Card | CNY - Yuan Renminbi |
      | Business Meals       | 24 Jul 2011 | 20     | food        | KFC        | Personal Card | CNY - Yuan Renminbi |
      | Business Meals       | 21 Jul 2011 | 50     | food        | KFC        | Personal Card | CNY - Yuan Renminbi |
      | Business Meals       | 24 Jul 2011 | 10     | food        | KFC        | Personal Card | CNY - Yuan Renminbi |
      | Business Meals       | 24 Jul 2011 | 20     | food        | KFC        | Personal Card | CNY - Yuan Renminbi |
    Then I logout TE
