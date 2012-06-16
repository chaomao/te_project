This project is designed to automatically fill timesheet or expens in your company.

I think it's easy to use it on mac, please contact me if you want to use it on Windows.

Instructions:
0.Set up ruby env for 1.9.2-p290 version,
1.Go into project folder in command line, create gem set and run "bundle install".
2.Edit 'Automatically fill expense on TE.feature' file.

   Given I login TE with username "username" and password "password"
   When I add a new expense report with project code "project_code"
   And I fill expense report
   | category      | date        |amount|description|vendor|payment      |currency           |attendees|
   | Business Meals| 22 June 2011|101   |food       |te    |Personal Card|CNY - Yuan Renminbi|chaomao  |

   'username' as your cas user name
   'password' as your cas password or you can use RAS CODE if you use external network
   'project_code' as your project code
   At last, you need to edit the data table under 'fill' step and I think you only need modify and clone.
   You should fill data exactly which displayed on the te page, such as "Business Meals" not "business meals"

3.Run 'cucumber' in command line
4.It will fill all the expense and save a draft for you.
5.YOU NEED TO DECIDE SUBMIT IT OR NOT YOURSELF!!!