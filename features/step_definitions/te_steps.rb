Given /^I login TE with username "([^"]*)" and password "([^"]*)"$/ do |username, password|
  @te_page = TELoginPage.new(my_browser)
  @te_page.login(username, password)
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
