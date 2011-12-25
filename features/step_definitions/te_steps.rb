Given /^I login TE with username "([^"]*)" and password "([^"]*)"$/ do |username, password|
  my_browser.goto("http://te.thoughtworks.com")
end

When /^I add a new expense report with project code "([^"]*)"$/ do |project_code|
  pending
end

When /^I fill expense report$/ do |expense_table|
  pending
end

Then /^I logout TE$/ do
  sleep(20)
end
