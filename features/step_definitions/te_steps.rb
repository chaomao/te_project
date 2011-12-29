Given /^I login TE with username "([^"]*)" and password "([^"]*)"$/ do |username, password|
  @te_page = TEPage.new(my_browser)
  @te_page.username.set(username)
  @te_page.password.set(password)
  @te_page.login.click
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
